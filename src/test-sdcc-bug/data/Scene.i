#line 1 "src/Scene.c"
#line 1 "include/Scene.h" 1



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
#line 5 "include/Scene.h" 2
#line 1 "include/game.h" 1
#line 10 "include/game.h"
#line 1 "../_gbs/gbdk/include/gb/gb.h" 1
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
#line 2 "src/Scene.c" 2
#line 1 "include/BankManager.h" 1



#line 1 "include/game.h" 1
#line 5 "include/BankManager.h" 2
#line 1 "include/Stack.h" 1



#line 1 "../_gbs/gbdk/include/gb/gb.h" 1
#line 5 "include/Stack.h" 2







void StackPush(UINT8* stack, UINT8 elem);
UINT8 StackPop(UINT8* stack);
#line 6 "include/BankManager.h" 2



extern UINT8 bank_stack[];

void PushBank(UINT8 b);
void PopBank();
#line 3 "src/Scene.c" 2
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
#line 4 "src/Scene.c" 2

void SceneInit_b1();
void SceneInit_b2();
void SceneInit_b3();
void SceneInit_b4();
void SceneInit_b5();
void SceneInit_b6();
void SceneInit_b7();
void SceneInit_b8();
void SceneInit_b9();
void SceneUpdate_b();
void SceneSetEmote_b(UBYTE actor, UBYTE type);
UBYTE SceneIsEmoting_b();
UBYTE SceneCameraAtDest_b();
UBYTE SceneAwaitInputPressed_b();
void SceneRenderActor_b(UBYTE i);

POS map_next_pos;
VEC2D map_next_dir;
UBYTE map_next_sprite;
ACTOR actors[11];
TRIGGER triggers[10];
UWORD scene_index;
UWORD scene_next_index;
UBYTE await_input;
POS camera_dest;
UBYTE camera_settings = 0x10;
UBYTE camera_speed;
UBYTE wait_time = 0;
UBYTE shake_time = 0;
UBYTE scene_width;
UBYTE scene_height;
BANK_PTR input_script_ptrs[8] = {{0}};
UBYTE timer_script_duration = 0;
UBYTE timer_script_time = 0;
BANK_PTR timer_script_ptr = {0};


void SceneInit()
{
  PushBank(scene_bank);;
  SceneInit_b1();
  PopBank();;
  gbt_update();
  wait_vbl_done();

  PushBank(scene_bank);;
  SceneInit_b2();
  PopBank();;
  gbt_update();
  wait_vbl_done();

  PushBank(scene_bank);;
  SceneInit_b3();
  PopBank();;
  gbt_update();
  wait_vbl_done();

  PushBank(scene_bank);;
  SceneInit_b4();
  PopBank();;
  gbt_update();
  wait_vbl_done();

  PushBank(scene_bank);;
  SceneInit_b5();
  PopBank();;
  gbt_update();
  wait_vbl_done();

  PushBank(scene_bank);;
  SceneInit_b6();
  PopBank();;
  gbt_update();
  wait_vbl_done();

  PushBank(scene_bank);;
  SceneInit_b7();
  PopBank();;
  gbt_update();
  wait_vbl_done();

  PushBank(scene_bank);;
  SceneInit_b8();
  PopBank();;
  gbt_update();
  wait_vbl_done();

  PushBank(scene_bank);;
  SceneInit_b9();
  PopBank();;
}

void SceneUpdate()
{
  PushBank(scene_bank);;
  SceneUpdate_b();
  PopBank();;
}

void SceneSetEmote(UBYTE actor, UBYTE type)
{
  PushBank(scene_bank);;
  SceneSetEmote_b(actor, type);
  PopBank();;
}

UBYTE SceneIsEmoting()
{
  UBYTE is_emoting;
  PushBank(scene_bank);;
  is_emoting = SceneIsEmoting_b();
  PopBank();;
  return is_emoting;
}

UBYTE SceneCameraAtDest()
{
  UBYTE at_dest;
  PushBank(scene_bank);;
  at_dest = SceneCameraAtDest_b();
  PopBank();;
  return at_dest;
}

UBYTE SceneAwaitInputPressed()
{
  UBYTE pressed;
  PushBank(scene_bank);;
  pressed = SceneAwaitInputPressed_b();
  PopBank();;
  return pressed;
}

void SceneRenderActor(UBYTE i)
{
  PushBank(scene_bank);;
  SceneRenderActor_b(i);
  PopBank();;
}
