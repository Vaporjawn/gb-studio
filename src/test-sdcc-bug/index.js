const childProcess = require("child_process");
const fs = require("fs-extra");
const Path = require("path");
const { buildToolsRoot } = require("../consts");

const buildToolsPath = `${buildToolsRoot}/${process.platform}-${process.arch}`;
const command = process.platform === "win32" ? "sdcc.exe" : "sdcc";

const buildAssembly = (name, index) => {
  const inputPath = Path.resolve(`${__dirname}/data/${name}.i`);
  const outputPath = Path.resolve(
    `${__dirname}/data/output/${name}_${index}.asm`
  );

  return new Promise((resolve, reject) => {
    const args = [
      "-mgbz80",
      "--noinvariant",
      "--noinduction",
      "--nostdinc",
      "--nostdlib",
      "--model-small",
      "--c1mode",
      "-I.._gbsgbdkinclude",
      "-Iinclude",
      inputPath,
      outputPath
    ];

    const env = Object.create(process.env);
    env.GBDKDIR = `${buildToolsPath}/gbdk/`;

    const options = {
      cwd: Path.resolve(`${__dirname}/data`),
      env,
      shell: true
    };

    const child = childProcess.spawn(
      Path.resolve(`${buildToolsPath}/gbdk/bin/${command}`),
      args,
      options,
      {
        encoding: "utf8"
      }
    );

    child.on("error", err => {
      console.warn(err.toString());
    });

    child.stdout.on("data", childData => {
      const lines = childData.toString().split("\n");
      lines.forEach(line => {
        console.log(line);
      });
    });

    child.stderr.on("data", childData => {
      const lines = childData.toString().split("\n");
      lines.forEach(line => {
        console.warn(line);
      });
    });

    child.on("close", async code => {
      if (code === 0) {
        const output = (await fs.readFile(outputPath, "utf8")).replace(
          /Version.*/g,
          ""
        ); // Strip date/time causing diff between identical builds
        resolve(output);
      } else {
        reject(code);
      }
    });
  });
};

const runTestOnFile = async name => {
  let i = 0;
  let matching = 0;
  let lastData = "";
  console.log(`Build ${name}.asm`);
  while (i < 100) {
    const data = await buildAssembly(name, i);
    if (i > 0) {
      if (data === lastData) {
        matching++;
      } else {
        console.log(`${name}_${i - 1}.asm and ${name}_${i}.asm not matching`);
      }
    }
    console.log(`${name}.asm: ${matching} of ${i} are matching`);
    lastData = data;
    i++;
  }
};

const runTests = async () => {
  await runTestOnFile("Scene");
  await runTestOnFile("UI");
  await runTestOnFile("Game");
  await runTestOnFile("Data");
};

runTests();
