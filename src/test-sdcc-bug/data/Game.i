#line 1 "src/game.c"
#line 1 "include/game.h" 1
#line 10 "include/game.h"
#line 1 "../_gbs/gbdk/include/gb/gb.h" 1






#line 1 "../_gbs/gbdk/include/types.h" 1







#line 1 "../_gbs/gbdk/include/asm/types.h" 1







#line 1 "../_gbs/gbdk/include/asm/gbz80/types.h" 1
#line 16 "../_gbs/gbdk/include/asm/gbz80/types.h"
typedef char INT8;


typedef unsigned char UINT8;


typedef int INT16;


typedef unsigned int UINT16;


typedef long INT32;


typedef unsigned long UINT32;

typedef int size_t;




typedef UINT16 clock_t;
#line 9 "../_gbs/gbdk/include/asm/types.h" 2
#line 25 "../_gbs/gbdk/include/asm/types.h"
typedef INT8 BOOLEAN;
#line 37 "../_gbs/gbdk/include/asm/types.h"
typedef INT8 BYTE;


typedef UINT8 UBYTE;

typedef INT16 WORD;

typedef UINT16 UWORD;

typedef INT32 LWORD;

typedef UINT32 ULWORD;

typedef INT32 DWORD;

typedef UINT32 UDWORD;


typedef union _fixed {
  struct {
    UBYTE l;
    UBYTE h;
  } b;
  UWORD w;
} fixed;
#line 9 "../_gbs/gbdk/include/types.h" 2
#line 23 "../_gbs/gbdk/include/types.h"
typedef void * POINTER;
#line 8 "../_gbs/gbdk/include/gb/gb.h" 2
#line 1 "../_gbs/gbdk/include/gb/hardware.h" 1







#line 1 "../_gbs/gbdk/include/types.h" 1
#line 9 "../_gbs/gbdk/include/gb/hardware.h" 2
#line 9 "../_gbs/gbdk/include/gb/gb.h" 2
#line 1 "../_gbs/gbdk/include/gb/sgb.h" 1







UINT8
sgb_check(void);
#line 10 "../_gbs/gbdk/include/gb/gb.h" 2
#line 1 "../_gbs/gbdk/include/gb/cgb.h" 1
#line 39 "../_gbs/gbdk/include/gb/cgb.h"
void
set_bkg_palette(UINT8 first_palette,
                UINT8 nb_palettes,
                UINT16 *rgb_data) nonbanked;



void
set_sprite_palette(UINT8 first_palette,
                   UINT8 nb_palettes,
                   UINT16 *rgb_data) nonbanked;



void
set_bkg_palette_entry(UINT8 palette,
                      UINT8 entry,
                      UINT16 rgb_data);



void
set_sprite_palette_entry(UINT8 palette,
                         UINT8 entry,
                         UINT16 rgb_data);






void cpu_slow(void);






void cpu_fast(void);



void cgb_compatibility(void);
#line 11 "../_gbs/gbdk/include/gb/gb.h" 2
#line 97 "../_gbs/gbdk/include/gb/gb.h"
typedef void (*int_handler)(void) nonbanked;





void
remove_VBL(int_handler h) nonbanked;

void
remove_LCD(int_handler h) nonbanked;

void
remove_TIM(int_handler h) nonbanked;

void
remove_SIO(int_handler h) nonbanked;

void
remove_JOY(int_handler h) nonbanked;
#line 125 "../_gbs/gbdk/include/gb/gb.h"
void
add_VBL(int_handler h) nonbanked;
#line 143 "../_gbs/gbdk/include/gb/gb.h"
void
add_LCD(int_handler h) nonbanked;
#line 154 "../_gbs/gbdk/include/gb/gb.h"
void
add_TIM(int_handler h) nonbanked;
#line 165 "../_gbs/gbdk/include/gb/gb.h"
void
add_SIO(int_handler h) nonbanked;
#line 180 "../_gbs/gbdk/include/gb/gb.h"
void
add_JOY(int_handler h) nonbanked;




void
        mode(UINT8 m) nonbanked;


UINT8
        get_mode(void) nonbanked;


extern UINT8 _cpu;
#line 204 "../_gbs/gbdk/include/gb/gb.h"
extern UINT16 sys_time;




void
send_byte(void);


void
receive_byte(void);


extern UINT8 _io_status;

extern UINT8 _io_in;



extern UINT8 _io_out;
#line 290 "../_gbs/gbdk/include/gb/gb.h"
void
delay(UINT16 d) nonbanked;
#line 300 "../_gbs/gbdk/include/gb/gb.h"
UINT8
joypad(void) nonbanked;






UINT8
waitpad(UINT8 mask) nonbanked;



void
waitpadup(void) nonbanked;






void
enable_interrupts(void) nonbanked;







void
disable_interrupts(void) nonbanked;






void
set_interrupts(UINT8 flags) nonbanked;




void
reset(void) nonbanked;







void
wait_vbl_done(void) nonbanked;






void
display_off(void) nonbanked;
#line 373 "../_gbs/gbdk/include/gb/gb.h"
void
hiramcpy(UINT8 dst,
         const void *src,
         UINT8 n) nonbanked;
#line 455 "../_gbs/gbdk/include/gb/gb.h"
void
set_bkg_data(UINT8 first_tile,
             UINT8 nb_tiles,
             unsigned char *data) nonbanked;
#line 474 "../_gbs/gbdk/include/gb/gb.h"
void
set_bkg_tiles(UINT8 x,
              UINT8 y,
              UINT8 w,
              UINT8 h,
              unsigned char *tiles) nonbanked;

void
get_bkg_tiles(UINT8 x,
              UINT8 y,
              UINT8 w,
              UINT8 h,
              unsigned char *tiles) nonbanked;





void
move_bkg(UINT8 x,
         UINT8 y) nonbanked;





void
scroll_bkg(INT8 x,
           INT8 y) nonbanked;
#line 511 "../_gbs/gbdk/include/gb/gb.h"
void
set_win_data(UINT8 first_tile,
             UINT8 nb_tiles,
             unsigned char *data) nonbanked;
#line 546 "../_gbs/gbdk/include/gb/gb.h"
void
set_win_tiles(UINT8 x,
              UINT8 y,
              UINT8 w,
              UINT8 h,
              unsigned char *tiles) nonbanked;

void
get_win_tiles(UINT8 x,
              UINT8 y,
              UINT8 w,
              UINT8 h,
              unsigned char *tiles) nonbanked;






void
move_win(UINT8 x,
         UINT8 y) nonbanked;




void
scroll_win(INT8 x,
           INT8 y) nonbanked;
#line 589 "../_gbs/gbdk/include/gb/gb.h"
void
set_sprite_data(UINT8 first_tile,
                UINT8 nb_tiles,
                unsigned char *data) nonbanked;

void
get_sprite_data(UINT8 first_tile,
                UINT8 nb_tiles,
                unsigned char *data) nonbanked;






void
set_sprite_tile(UINT8 nb,
                UINT8 tile) nonbanked;

UINT8
get_sprite_tile(UINT8 nb) nonbanked;
#line 630 "../_gbs/gbdk/include/gb/gb.h"
void
set_sprite_prop(UINT8 nb,
                UINT8 prop) nonbanked;

UINT8
get_sprite_prop(UINT8 nb) nonbanked;







void
move_sprite(UINT8 nb,
            UINT8 x,
            UINT8 y) nonbanked;



void
scroll_sprite(INT8 nb,
              INT8 x,
              INT8 y) nonbanked;



void
set_data(unsigned char *vram_addr,
         unsigned char *data,
         UINT16 len) nonbanked;

void
get_data(unsigned char *data,
         unsigned char *vram_addr,
         UINT16 len) nonbanked;

void
set_tiles(UINT8 x,
          UINT8 y,
          UINT8 w,
          UINT8 h,
          unsigned char *vram_addr,
          unsigned char *tiles) nonbanked;

void
get_tiles(UINT8 x,
          UINT8 y,
          UINT8 w,
          UINT8 h,
          unsigned char *tiles,
          unsigned char *vram_addr) nonbanked;
#line 11 "include/game.h" 2

#line 1 "../_gbs/gbdk/include/stdio.h" 1






#line 1 "../_gbs/gbdk/include/types.h" 1
#line 8 "../_gbs/gbdk/include/stdio.h" 2





void putchar(char c);







void printf(const char *format, ...) nonbanked;
#line 31 "../_gbs/gbdk/include/stdio.h"
void sprintf(char *str, const char *format, ...) nonbanked;




void puts(const char *s) nonbanked;





char *gets(char *s);



char getchar(void);
#line 13 "include/game.h" 2
#line 1 "../_gbs/gbdk/include/stdarg.h" 1




#line 1 "../_gbs/gbdk/include/asm/gbz80/stdarg.h" 1
#line 12 "../_gbs/gbdk/include/asm/gbz80/stdarg.h"
typedef unsigned char * va_list;
#line 6 "../_gbs/gbdk/include/stdarg.h" 2
#line 14 "include/game.h" 2
#line 1 "../_gbs/gbdk/include/string.h" 1






#line 1 "../_gbs/gbdk/include/types.h" 1
#line 8 "../_gbs/gbdk/include/string.h" 2
#line 18 "../_gbs/gbdk/include/string.h"
char *strcpy(char *dest, const char *src) nonbanked;






int strcmp(const char *s1, const char *s2) nonbanked;
#line 35 "../_gbs/gbdk/include/string.h"
void *memcpy(void *dest, const void *src, size_t len) nonbanked;





char *reverse(char *s);

char *strcat(char *s1, const char *s2) nonbanked;




int strlen(const char *s) nonbanked;




char *strncat(char *s1, const char *s2, int n) nonbanked;






int strncmp(const char *s1, const char *s2, int n) nonbanked;





char *strncpy(char *s1, const char *s2, int n) nonbanked;
#line 15 "include/game.h" 2
#line 1 "../_gbs/gbdk/include/rand.h" 1
#line 9 "../_gbs/gbdk/include/rand.h"
#line 1 "../_gbs/gbdk/include/types.h" 1
#line 10 "../_gbs/gbdk/include/rand.h" 2





void
initrand(UINT16 seed) nonbanked;



INT8
rand(void);



UINT16
randw(void);







void
initarand(UINT16 seed);



INT8
arand(void);
#line 16 "include/game.h" 2
#line 1 "include/GameTypes.h" 1



#line 1 "../_gbs/gbdk/include/gb/gb.h" 1
#line 5 "include/GameTypes.h" 2
#line 1 "include/data_ptrs.h" 1



typedef struct _BANK_PTR {
  unsigned char bank;
  unsigned int offset;
} BANK_PTR;
#line 28 "include/data_ptrs.h"
extern const BANK_PTR tileset_bank_ptrs[];
extern const BANK_PTR background_bank_ptrs[];
extern const BANK_PTR sprite_bank_ptrs[];
extern const BANK_PTR scene_bank_ptrs[];
extern const BANK_PTR string_bank_ptrs[];
extern const BANK_PTR avatar_bank_ptrs[];
extern const unsigned char (*bank_data_ptrs[])[];
extern const unsigned char * music_tracks[];
extern const unsigned char music_banks[];
extern unsigned char script_variables[8];
#line 6 "include/GameTypes.h" 2

typedef enum
{
    SCENE = 1
} STAGE_TYPE;

typedef enum
{
    NONE = 1,
    PLAYER_INPUT,
    AI_RANDOM_FACE,
    AI_INTERACT_FACE,
    AI_RANDOM_WALK,
    AI_ROTATE_TRB
} MOVEMENT_TYPE;

typedef enum
{
    SPRITE_STATIC = 0,
    SPRITE_ACTOR,
    SPRITE_ACTOR_ANIMATED
} SPRITE_TYPE;

typedef enum
{
    OPERATOR_EQ = 1,
    OPERATOR_NE,
    OPERATOR_LT,
    OPERATOR_GT,
    OPERATOR_LTE,
    OPERATOR_GTE
} OPERATOR_TYPE;

typedef struct _POS
{
    UBYTE x;
    UBYTE y;
} POS;

typedef struct _SIZE
{
    UBYTE w;
    UBYTE h;
} SIZE;

typedef struct _VEC2D
{
    BYTE x;
    BYTE y;
} VEC2D;

typedef struct _ACTORSPRITE
{
    UBYTE sprite;
    POS pos;
    VEC2D dir;
    UBYTE redraw;
    UBYTE frame;
    UBYTE frames_len;
    UBYTE animate;
    UBYTE enabled;
    UBYTE flip;
    UBYTE frame_offset;
    UBYTE moving;
    UBYTE move_speed;
    UBYTE anim_speed;
    UBYTE collisionsEnabled;
    SPRITE_TYPE sprite_type;
    UWORD script_ptr;
    BANK_PTR events_ptr;
    MOVEMENT_TYPE movement_type;
} ACTOR;

typedef struct _TRIGGER
{
    POS pos;
    UBYTE w;
    UBYTE h;
    UWORD script_ptr;
    BANK_PTR events_ptr;
} TRIGGER;

typedef struct _SCENE_STATE
{
    UWORD scene_index;
    POS player_pos;
    VEC2D player_dir;
} SCENE_STATE;

typedef void (*SCRIPT_CMD_FN)();

typedef struct _SCRIPT_CMD
{
    SCRIPT_CMD_FN fn;
    UBYTE args_len;
} SCRIPT_CMD;
#line 17 "include/game.h" 2
#line 42 "include/game.h"
extern STAGE_TYPE stage_type;
extern STAGE_TYPE stage_next_type;
extern UBYTE joy;
extern UBYTE prev_joy;
extern UBYTE time;
extern UBYTE text_drawn;



extern UBYTE scene_stack_ptr;
extern SCENE_STATE scene_stack[8];
#line 2 "src/game.c" 2
#line 1 "include/UI.h" 1



#line 1 "../_gbs/gbdk/include/gb/gb.h" 1
#line 5 "include/UI.h" 2
#line 1 "include/game.h" 1
#line 6 "include/UI.h" 2
#line 17 "include/UI.h"
extern UINT8 ui_bank;
extern unsigned char text_lines[80];
extern unsigned char tmp_text_lines[80];

extern UBYTE win_pos_x;
extern UBYTE win_pos_y;
extern UBYTE win_dest_pos_x;
extern UBYTE win_dest_pos_y;
extern UBYTE win_speed;
extern UBYTE text_in_speed;
extern UBYTE text_out_speed;
extern UBYTE text_draw_speed;
extern UBYTE tmp_text_in_speed;
extern UBYTE tmp_text_out_speed;

void UIInit();
void UIUpdate();
void UIDrawFrame(UBYTE x, UBYTE y, UBYTE width, UBYTE height);
void UIDrawDialogueFrame(UBYTE h);
void UIDrawText(char *str, UBYTE x, UBYTE y);
void UIDrawTextBkg(char *str, UBYTE x, UBYTE y);
void UIShowText(UWORD line);
void UIShowChoice(UWORD flag_index, UWORD line);
void UISetTextBuffer(unsigned char *text);
void UIDrawTextBuffer();
void UISetPos(UBYTE x, UBYTE y);
void UIMoveTo(UBYTE x, UBYTE y, UBYTE speed);
UBYTE UIIsClosed();
void UIOnInteract();
UBYTE UIAtDest();
void UISetColor(UBYTE color);
void UISetTextSpeed(UBYTE in, UBYTE out);
void UIShowAvatar(UBYTE avatar_index);
void UIShowMenu(UWORD flag_index, UWORD line, UBYTE layout, UBYTE cancel_config);
void UIDrawMenuCursor();
#line 3 "src/game.c" 2
#line 1 "include/Scene.h" 1



#line 1 "../_gbs/gbdk/include/gb/gb.h" 1
#line 5 "include/Scene.h" 2
#line 1 "include/game.h" 1
#line 6 "include/Scene.h" 2
#line 40 "include/Scene.h"
extern UINT8 scene_bank;
extern POS map_next_pos;
extern VEC2D map_next_dir;
extern UBYTE map_next_sprite;
extern ACTOR actors[11];
extern TRIGGER triggers[10];
extern UWORD scene_index;
extern UWORD scene_next_index;
extern UBYTE await_input;
extern POS camera_dest;
extern UBYTE camera_settings;
extern UBYTE camera_speed;
extern UBYTE wait_time;
extern UBYTE shake_time;
extern UBYTE scene_width;
extern UBYTE scene_height;
extern UBYTE actor_move_settings;
extern POS actor_move_dest;
extern BANK_PTR input_script_ptrs[8];
extern UBYTE timer_script_duration;
extern UBYTE timer_script_time;
extern BANK_PTR timer_script_ptr;
extern UBYTE scene_loaded;

void SceneInit();
void SceneUpdate();
void SceneSetEmote(UBYTE actor, UBYTE type);
UBYTE SceneIsEmoting();
UBYTE SceneCameraAtDest();
UBYTE SceneAwaitInputPressed();
void SceneRenderActor(UBYTE i);
#line 4 "src/game.c" 2
#line 1 "include/FadeManager.h" 1



#line 1 "../_gbs/gbdk/include/gb/gb.h" 1
#line 5 "include/FadeManager.h" 2





void FadeInit();
void FadeIn();
void FadeOut();
void FadeUpdate();
void FadeSetSpeed(UBYTE speed);
UBYTE IsFading();

extern UBYTE fade_running;

typedef enum
{
  FADE_IN,
  FADE_OUT
} FADE_DIRECTION;
#line 5 "src/game.c" 2
#line 1 "include/BankData.h" 1



#line 1 "../_gbs/gbdk/include/gb/gb.h" 1
#line 5 "include/BankData.h" 2
#line 1 "include/data_ptrs.h" 1
#line 6 "include/BankData.h" 2

void SetBankedBkgData(UBYTE bank, UBYTE i, UBYTE l, unsigned char *ptr);
void SetBankedBkgTiles(UBYTE bank, UBYTE x, UBYTE y, UBYTE w, UBYTE h, unsigned char *ptr);
void SetBankedWinTiles(UBYTE bank, UBYTE x, UBYTE y, UBYTE w, UBYTE h, unsigned char *ptr);
void SetBankedSpriteData(UBYTE bank, UBYTE i, UBYTE l, unsigned char *ptr);
UBYTE ReadBankedUBYTE(UBYTE bank, unsigned char *ptr);
void ReadBankedUBYTEArray(UBYTE bank, unsigned char *out, unsigned char *ptr, UBYTE size);
UWORD ReadBankedUWORD(UBYTE bank, unsigned char *ptr);
void StrCpyBanked(UBYTE bank, unsigned char *to, unsigned char *from);
void ReadBankedBankPtr(UBYTE bank, BANK_PTR *to, unsigned char *from);
#line 6 "src/game.c" 2
#line 1 "include/ScriptRunner.h" 1



#line 1 "../_gbs/gbdk/include/gb/gb.h" 1
#line 5 "include/ScriptRunner.h" 2
#line 1 "include/game.h" 1
#line 6 "include/ScriptRunner.h" 2

extern UINT8 scriptrunner_bank;
extern UBYTE script_ptr_bank;
extern UWORD script_start_ptr;
extern UBYTE script_cmd_args[6];
extern UBYTE script_cmd_args_len;

extern UWORD script_ptr;
extern UWORD script_ptr_x;
extern UWORD script_ptr_y;
extern UBYTE script_action_complete;
extern UBYTE script_continue;
extern UBYTE script_actor;



extern UWORD script_stack[8];
extern UWORD script_start_stack[8];
extern UBYTE script_stack_ptr;

void ScriptStart(BANK_PTR *events_ptr);
void ScriptRunnerUpdate();


void Script_Noop_b();
void Script_End_b();
void Script_Text_b();
void Script_Goto_b();
void Script_IfFlag_b();
void Script_SetFlag_b();
void Script_ClearFlag_b();
void Script_ActorSetDir_b();
void Script_ActorActivate_b();
void Script_CameraMoveTo_b();
void Script_CameraLock_b();
void Script_Wait_b();
void Script_FadeOut_b();
void Script_FadeIn_b();
void Script_LoadScene_b();
void Script_ActorSetPos_b();
void Script_ActorMoveTo_b();
void Script_ShowSprites_b();
void Script_HideSprites_b();
void Script_ActorShow_b();
void Script_ActorHide_b();
void Script_ActorSetEmote_b();
void Script_CameraShake_b();
void Script_ShowOverlay_b();
void Script_HideOverlay_b();
void Script_OverlaySetPos_b();
void Script_OverlayMoveTo_b();
void Script_AwaitInput_b();
void Script_MusicPlay_b();
void Script_MusicStop_b();
void Script_ResetVariables_b();
void Script_NextFrame_b();
void Script_IncFlag_b();
void Script_DecFlag_b();
void Script_SetFlagValue_b();
void Script_IfValue_b();
void Script_IfInput_b();
void Script_Choice_b();
void Script_PlayerSetSprite_b();
void Script_ActorPush_b();
void Script_IfActorPos_b();
void Script_LoadData_b();
void Script_SaveData_b();
void Script_ClearData_b();
void Script_IfSavedData_b();
void Script_IfActorDirection_b();
void Script_SetFlagRandomValue_b();
void Script_ActorGetPos_b();
void Script_ActorSetPosToVal_b();
void Script_ActorMoveToVal_b();
void Script_ActorMoveRel_b();
void Script_ActorSetPosRel_b();
void Script_MathAdd_b();
void Script_MathSub_b();
void Script_MathMul_b();
void Script_MathDiv_b();
void Script_MathMod_b();
void Script_MathAddVal_b();
void Script_MathSubVal_b();
void Script_MathMulVal_b();
void Script_MathDivVal_b();
void Script_MathModVal_b();
void Script_CopyVal_b();
void Script_IfValueCompare_b();
void Script_LoadVectors_b();
void Script_ActorSetMoveSpeed_b();
void Script_ActorSetAnimSpeed_b();
void Script_TextSetAnimSpeed_b();
void Script_ScenePushState_b();
void Script_ScenePopState_b();
void Script_ActorInvoke_b();
void Script_StackPush_b();
void Script_StackPop_b();
void Script_SceneResetStack_b();
void Script_ScenePopAllState_b();
void Script_SetInputScript_b();
void Script_RemoveInputScript_b();
void Script_ActorSetFrame_b();
void Script_ActorSetFlip_b();
void Script_TextMulti_b();
void Script_ActorSetFrameToVal_b();
void Script_VariableAddFlags_b();
void Script_VariableClearFlags_b();
void Script_SoundStartTone_b();
void Script_SoundStopTone_b();
void Script_SoundPlayBeep_b();
void Script_SoundPlayCrash_b();
void Script_SetTimerScript_b();
void Script_ResetTimer_b();
void Script_RemoveTimerScript_b();
void Script_TextWithAvatar_b();
void Script_TextMenu_b();
void Script_ActorSetCollisions_b();
#line 7 "src/game.c" 2
#line 1 "include/Macros.h" 1
#line 8 "src/game.c" 2
#line 1 "include/data_ptrs.h" 1
#line 9 "src/game.c" 2
#line 1 "include/gbt_player.h" 1
#line 18 "include/gbt_player.h"
#line 1 "../_gbs/gbdk/include/gb/gb.h" 1
#line 19 "include/gbt_player.h" 2


void gbt_play(void * data, UINT8 bank, UINT8 speed);


void gbt_pause(UINT8 pause);



void gbt_stop(void);


void gbt_loop(UINT8 loop);



void gbt_update(void);
#line 44 "include/gbt_player.h"
void gbt_enable_channels(UINT8 channel_flags);
#line 10 "src/game.c" 2

UBYTE joy;
UBYTE prev_joy;
UBYTE time;
UWORD rand_seed;

UBYTE actor_move_settings;
POS actor_move_dest;
STAGE_TYPE stage_type;
STAGE_TYPE stage_next_type = SCENE;
typedef void (*STAGE_UPDATE_FN)();
UBYTE script_continue;
UBYTE script_action_complete = 1;
UBYTE script_actor;

UBYTE scene_stack_ptr = 0;
SCENE_STATE scene_stack[8] = {{0}};

void game_loop();

int main()
{

  (*(volatile UINT8 *)0xFF40) = 0x67;
  set_interrupts(0x01U | 0x02U);
  (*(volatile UINT8 *)0xFF41) = 0x45;
#line 46 "src/game.c"
  {
    (*(volatile UINT8 *)0xFF47) = 0xE4U;
    (*(volatile UINT8 *)0xFF48) = 0xD2U;
  }
#line 59 "src/game.c"
  (*(volatile UINT8 *)0xFF4A) = 0x8FU - 7;
  (*(volatile UINT8 *)0xFF4A) = 0x8FU + 1;

  actors[0].sprite = 0;
  actors[0].redraw = 1;
  actors[0].moving = 1;
  map_next_pos.x = actors[0].pos.x = (0x0B << 3) + 8;
  map_next_pos.y = actors[0].pos.y = (0x06 << 3) + 8;
  map_next_dir.x = actors[0].dir.x = -1;
  map_next_dir.y = actors[0].dir.y = 0;
  map_next_sprite = 0;
  actors[0].movement_type = PLAYER_INPUT;
  actors[0].enabled = 1;
  actors[0].move_speed = 2;
  actors[0].anim_speed = 3;

  scene_index = 0x0003;
  scene_next_index = 0x0003;

  UIInit();
  FadeInit();

  (*(volatile UINT8 *)0xFF40)|=0x80U;
  (*(volatile UINT8 *)0xFF40)|=0x02U;

  while (1)
  {
    game_loop();
  }
}

void game_loop()
{
  wait_vbl_done();
  (*(volatile UINT8 *)0xFF45) = 0x0;

  joy = joypad();


  FadeUpdate();


  if (stage_type != stage_next_type && !IsFading())
  {
    stage_type = stage_next_type;
    scene_index = scene_next_index;

    map_next_pos.x = actors[0].pos.x;
    map_next_pos.y = actors[0].pos.y;
    map_next_dir.x = actors[0].dir.x;
    map_next_dir.y = actors[0].dir.y;

    if (stage_type == SCENE)
    {
      SceneInit();
    }
  }

  if (stage_type == SCENE)
  {
    SceneUpdate();
  }

  prev_joy = joy;
  time++;

  rand_seed += time;
  initrand(rand_seed);

  gbt_update();
}
