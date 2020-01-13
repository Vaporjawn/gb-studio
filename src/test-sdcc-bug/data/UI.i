#line 1 "src/UI.c"
#line 1 "include/UI.h" 1



#line 1 "..\_gbs\gbdk\include/gb/gb.h" 1






#line 1 "..\_gbs\gbdk\include/types.h" 1







#line 1 "..\_gbs\gbdk\include/asm/types.h" 1







#line 1 "..\_gbs\gbdk\include/asm/gbz80/types.h" 1
#line 16 "..\_gbs\gbdk\include/asm/gbz80/types.h"
typedef char INT8;


typedef unsigned char UINT8;


typedef int INT16;


typedef unsigned int UINT16;


typedef long INT32;


typedef unsigned long UINT32;

typedef int size_t;




typedef UINT16 clock_t;
#line 9 "..\_gbs\gbdk\include/asm/types.h" 2
#line 25 "..\_gbs\gbdk\include/asm/types.h"
typedef INT8 BOOLEAN;
#line 37 "..\_gbs\gbdk\include/asm/types.h"
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
#line 9 "..\_gbs\gbdk\include/types.h" 2
#line 23 "..\_gbs\gbdk\include/types.h"
typedef void * POINTER;
#line 8 "..\_gbs\gbdk\include/gb/gb.h" 2
#line 1 "..\_gbs\gbdk\include/gb/hardware.h" 1







#line 1 "..\_gbs\gbdk\include/types.h" 1
#line 9 "..\_gbs\gbdk\include/gb/hardware.h" 2
#line 9 "..\_gbs\gbdk\include/gb/gb.h" 2
#line 1 "..\_gbs\gbdk\include/gb/sgb.h" 1







UINT8
sgb_check(void);
#line 10 "..\_gbs\gbdk\include/gb/gb.h" 2
#line 1 "..\_gbs\gbdk\include/gb/cgb.h" 1
#line 39 "..\_gbs\gbdk\include/gb/cgb.h"
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
#line 11 "..\_gbs\gbdk\include/gb/gb.h" 2
#line 97 "..\_gbs\gbdk\include/gb/gb.h"
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
#line 125 "..\_gbs\gbdk\include/gb/gb.h"
void
add_VBL(int_handler h) nonbanked;
#line 143 "..\_gbs\gbdk\include/gb/gb.h"
void
add_LCD(int_handler h) nonbanked;
#line 154 "..\_gbs\gbdk\include/gb/gb.h"
void
add_TIM(int_handler h) nonbanked;
#line 165 "..\_gbs\gbdk\include/gb/gb.h"
void
add_SIO(int_handler h) nonbanked;
#line 180 "..\_gbs\gbdk\include/gb/gb.h"
void
add_JOY(int_handler h) nonbanked;




void
        mode(UINT8 m) nonbanked;


UINT8
        get_mode(void) nonbanked;


extern UINT8 _cpu;
#line 204 "..\_gbs\gbdk\include/gb/gb.h"
extern UINT16 sys_time;




void
send_byte(void);


void
receive_byte(void);


extern UINT8 _io_status;

extern UINT8 _io_in;



extern UINT8 _io_out;
#line 290 "..\_gbs\gbdk\include/gb/gb.h"
void
delay(UINT16 d) nonbanked;
#line 300 "..\_gbs\gbdk\include/gb/gb.h"
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
#line 373 "..\_gbs\gbdk\include/gb/gb.h"
void
hiramcpy(UINT8 dst,
         const void *src,
         UINT8 n) nonbanked;
#line 455 "..\_gbs\gbdk\include/gb/gb.h"
void
set_bkg_data(UINT8 first_tile,
             UINT8 nb_tiles,
             unsigned char *data) nonbanked;
#line 474 "..\_gbs\gbdk\include/gb/gb.h"
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
#line 511 "..\_gbs\gbdk\include/gb/gb.h"
void
set_win_data(UINT8 first_tile,
             UINT8 nb_tiles,
             unsigned char *data) nonbanked;
#line 546 "..\_gbs\gbdk\include/gb/gb.h"
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
#line 589 "..\_gbs\gbdk\include/gb/gb.h"
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
#line 630 "..\_gbs\gbdk\include/gb/gb.h"
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
#line 5 "include/UI.h" 2
#line 1 "include/game.h" 1
#line 10 "include/game.h"
#line 1 "..\_gbs\gbdk\include/gb/gb.h" 1
#line 11 "include/game.h" 2

#line 1 "..\_gbs\gbdk\include/stdio.h" 1






#line 1 "..\_gbs\gbdk\include/types.h" 1
#line 8 "..\_gbs\gbdk\include/stdio.h" 2





void putchar(char c);







void printf(const char *format, ...) nonbanked;
#line 31 "..\_gbs\gbdk\include/stdio.h"
void sprintf(char *str, const char *format, ...) nonbanked;




void puts(const char *s) nonbanked;





char *gets(char *s);



char getchar(void);
#line 13 "include/game.h" 2
#line 1 "..\_gbs\gbdk\include/stdarg.h" 1




#line 1 "..\_gbs\gbdk\include/asm/gbz80/stdarg.h" 1
#line 12 "..\_gbs\gbdk\include/asm/gbz80/stdarg.h"
typedef unsigned char * va_list;
#line 6 "..\_gbs\gbdk\include/stdarg.h" 2
#line 14 "include/game.h" 2
#line 1 "..\_gbs\gbdk\include/string.h" 1






#line 1 "..\_gbs\gbdk\include/types.h" 1
#line 8 "..\_gbs\gbdk\include/string.h" 2
#line 18 "..\_gbs\gbdk\include/string.h"
char *strcpy(char *dest, const char *src) nonbanked;






int strcmp(const char *s1, const char *s2) nonbanked;
#line 35 "..\_gbs\gbdk\include/string.h"
void *memcpy(void *dest, const void *src, size_t len) nonbanked;





char *reverse(char *s);

char *strcat(char *s1, const char *s2) nonbanked;




int strlen(const char *s) nonbanked;




char *strncat(char *s1, const char *s2, int n) nonbanked;






int strncmp(const char *s1, const char *s2, int n) nonbanked;





char *strncpy(char *s1, const char *s2, int n) nonbanked;
#line 15 "include/game.h" 2
#line 1 "..\_gbs\gbdk\include/rand.h" 1
#line 9 "..\_gbs\gbdk\include/rand.h"
#line 1 "..\_gbs\gbdk\include/types.h" 1
#line 10 "..\_gbs\gbdk\include/rand.h" 2





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



#line 1 "..\_gbs\gbdk\include/gb/gb.h" 1
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
#line 2 "src/UI.c" 2
#line 1 "include/BankManager.h" 1



#line 1 "include/game.h" 1
#line 5 "include/BankManager.h" 2
#line 1 "include/Stack.h" 1



#line 1 "..\_gbs\gbdk\include/gb/gb.h" 1
#line 5 "include/Stack.h" 2







void StackPush(UINT8* stack, UINT8 elem);
UINT8 StackPop(UINT8* stack);
#line 6 "include/BankManager.h" 2



extern UINT8 bank_stack[];

void PushBank(UINT8 b);
void PopBank();
#line 3 "src/UI.c" 2
#line 1 "include/game.h" 1
#line 4 "src/UI.c" 2
#line 1 "include/data_ptrs.h" 1
#line 5 "src/UI.c" 2
#line 1 "include/Macros.h" 1
#line 6 "src/UI.c" 2
#line 1 "include/BankData.h" 1



#line 1 "..\_gbs\gbdk\include/gb/gb.h" 1
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
#line 7 "src/UI.c" 2

void UIInit_b();
void UIUpdate_b();
void UIDrawFrame_b(UBYTE x, UBYTE y, UBYTE width, UBYTE height);
void UIDrawDialogueFrame_b(UBYTE h);
void UIDrawTextBufferChar();
void UISetColor_b(UWORD image_index);

UBYTE win_pos_x;
UBYTE win_pos_y;
UBYTE win_dest_pos_x;
UBYTE win_dest_pos_y;
UBYTE win_speed;

UBYTE text_x;
UBYTE text_y;
UBYTE text_drawn;
UBYTE text_count;
UBYTE text_tile_count;
UBYTE text_wait;
UBYTE text_in_speed = 1;
UBYTE text_out_speed = 1;
UBYTE text_draw_speed = 1;
UBYTE tmp_text_in_speed = 1;
UBYTE tmp_text_out_speed = 1;
UBYTE text_num_lines = 0;

UBYTE avatar_enabled = 0;
UBYTE menu_enabled = 0;
BYTE menu_index = 0;
UWORD menu_flag;
UBYTE menu_num_options = 2;
UBYTE menu_cancel_on_last_option = 1;
UBYTE menu_cancel_on_b = 1;
UBYTE menu_layout = 0;

const unsigned char ui_cursor_tiles[1] = {0xCB};
const unsigned char ui_bg_tiles[1] = {0xC4};

unsigned char text_lines[80] = "";
unsigned char tmp_text_lines[80] = "";

void UIInit()
{
  PushBank(ui_bank);;
  UIInit_b();
  PopBank();;
}

void UIUpdate()
{
  PushBank(ui_bank);;
  UIUpdate_b();
  PopBank();;
}

void UIDrawFrame(UBYTE x, UBYTE y, UBYTE width, UBYTE height)
{
  PushBank(ui_bank);;
  UIDrawFrame_b(x, y, width, height);
  PopBank();;
}

void UIDrawDialogueFrame(UBYTE h)
{
  PushBank(ui_bank);;
  UIDrawDialogueFrame_b(h);
  PopBank();;
}

void UIDrawText(char *str, UBYTE x, UBYTE y)
{
  UBYTE letter, i, len;
  len = strlen(str);
  for (i = 0; i != len; i++)
  {
    letter = str[i] + 0xA5;
    set_win_tiles(x + i, y, 1, 1, &letter);
  }
}

void UIDrawTextBkg(char *str, UBYTE x, UBYTE y)
{
  UBYTE letter, i, len;
  len = strlen(str);
  for (i = 0; i != len; i++)
  {
    letter = str[i] + 0xA5;
    set_bkg_tiles(x + i, y, 1, 1, &letter);
  }
}

void UIShowText(UWORD line)
{
  BANK_PTR bank_ptr;
  UWORD ptr, var_index;
  unsigned char value_string[6];
  UBYTE i, j, k;
  UBYTE value;

  strcpy(tmp_text_lines, "");

  ReadBankedBankPtr(5, &bank_ptr, &string_bank_ptrs[line]);
  ptr = ((UWORD)bank_data_ptrs[bank_ptr.bank]) + bank_ptr.offset;

  PushBank(bank_ptr.bank);;
  strcat(tmp_text_lines, ptr);
  PopBank();;

  for (i = 1, k = 0; i < 81; i++)
  {

    if (tmp_text_lines[i] == '$')
    {
      if(tmp_text_lines[i + 3] == '$') {
        var_index = (10 * (tmp_text_lines[i + 1] - '0')) + (tmp_text_lines[i + 2] - '0');
      } else if(tmp_text_lines[i + 4] == '$') {
        var_index = (100 * (tmp_text_lines[i + 1] - '0')) + (10 * (tmp_text_lines[i + 2] - '0')) + (tmp_text_lines[i + 3] - '0');
      } else {
        text_lines[k] = tmp_text_lines[i];
        ++k;
        continue;
      }

      value = script_variables[var_index];
      j = 0;

      if (value == 0)
      {
        text_lines[k] = '0';
      }
      else
      {

        while (value != 0)
        {
          value_string[j++] = '0' + (value % 10);
          value /= 10;
        }
        j--;
        while (j != 255)
        {
          text_lines[k] = value_string[j];
          k++;
          j--;
        }
        k--;
      }

      if(var_index >= 100) {
        i += 4;
      } else {
        i += 3;
      }
    }
    else
    {
      text_lines[k] = tmp_text_lines[i];
    }
    ++k;
  }

  if (menu_layout)
  {
    text_num_lines = tmp_text_lines[0];
    UIDrawFrame(0, 0, 8, text_num_lines);
    UISetPos(88, (0x8FU + 1));
    UIMoveTo(88, (0x8FU + 1) - ((text_num_lines + 2) << 3), text_in_speed);
  }
  else
  {
    text_num_lines = (((tmp_text_lines[0]) < (4)) ? (tmp_text_lines[0]) : (4));
    UIDrawDialogueFrame(text_num_lines);
    UISetPos(0, (0x8FU + 1));
    UIMoveTo(0, (0x8FU + 1) - ((text_num_lines + 2) << 3), text_in_speed);
  }
  text_drawn = 0;
  text_x = 0;
  text_y = 0;
  text_count = 0;
  text_tile_count = 0;
}

void UIShowAvatar(UBYTE avatar_index)
{
  BANK_PTR avatar_bank_ptr;
  UWORD avatar_ptr;
  UBYTE avatar_len;
  UBYTE tile1, tile2, tile3, tile4;

  unsigned char *tmp_avatar_ptr[100];

  ReadBankedBankPtr(5, &avatar_bank_ptr, &avatar_bank_ptrs[avatar_index]);
  avatar_ptr = ((UWORD)bank_data_ptrs[avatar_bank_ptr.bank]) + avatar_bank_ptr.offset;
  avatar_len = ((ReadBankedUBYTE(avatar_bank_ptr.bank, avatar_ptr)) << 2);

  PushBank(avatar_bank_ptr.bank);;
  memcpy(tmp_avatar_ptr, avatar_ptr + 1, avatar_len * 16);
  PopBank();
  SetBankedBkgData(6, 0xCC, avatar_len, tmp_avatar_ptr);

  tile1 = 0xCC;
  tile2 = 0xCC + 1;
  tile3 = 0xCC + 2;
  tile4 = 0xCC + 3;

  set_win_tiles(1, 1, 1, 1, &tile1);
  set_win_tiles(2, 1, 1, 1, &tile2);
  set_win_tiles(1, 2, 1, 1, &tile3);
  set_win_tiles(2, 2, 1, 1, &tile4);

  avatar_enabled = 1;
}

void UIShowChoice(UWORD flag_index, UWORD line)
{
  UIShowMenu(flag_index, line, 0, 0x02U | 0x01U);
}

void UIShowMenu(UWORD flag_index, UWORD line, UBYTE layout, UBYTE cancel_config)
{
  menu_index = 0;
  menu_flag = flag_index;
  menu_enabled = 1;
  menu_cancel_on_last_option = cancel_config & 0x01U;
  menu_cancel_on_b = cancel_config & 0x02U;
  menu_layout = layout;
  text_draw_speed = 0;
  UIShowText(line);
  menu_num_options = tmp_text_lines[0];
  UIDrawMenuCursor();
}

void UISetTextBuffer(unsigned char *text)
{
  UIDrawFrame(0, 2, 20, 4);
  text_drawn = 0;
  strcpy(text_lines, text);
  text_x = 0;
  text_y = 0;
  text_count = 0;
  text_tile_count = 0;
}

void UIDrawTextBuffer()
{
  if ((time & 0x1) == 0)
  {
    UIDrawTextBufferChar();
  }
}

void UIDrawTextBufferChar()
{
  UBYTE letter;
  UBYTE i, text_remaining, word_len;
  UBYTE text_size = strlen(text_lines);
  UBYTE tile;
  UWORD ptr;

  if (text_wait > 0)
  {
    text_wait--;
    return;
  }

  if (text_count < text_size)
  {
    win_speed = text_draw_speed;
    text_drawn = 0;

    if (text_count == 0)
    {
      text_x = 0;
      text_y = 0;
    }

    letter = text_lines[text_count] - 32;


    ptr = ((UWORD)bank_data_ptrs[6]) + 1451;


    text_remaining = 18 - text_x;
    word_len = 0;
    for (i = text_count; i != text_size; i++)
    {
      if (text_lines[i] == ' ' || text_lines[i] == '\n' || text_lines[i] == '\0')
      {
        break;
      }
      word_len++;
    }
    if (word_len > text_remaining && word_len < 18)
    {
      text_x = 0;
      text_y++;
    }

    if (text_lines[text_count] != '\b' && text_lines[text_count] != '\n')
    {
      i = text_tile_count + avatar_enabled * 4;
      SetBankedBkgData(6, 0xCC + i, 1, ptr + ((UWORD)letter * 16));
      tile = 0xCC + i;
      set_win_tiles(text_x + 1 + avatar_enabled * 2 + menu_enabled + (text_y >= text_num_lines ? 9 : 0), (text_y % text_num_lines) + 1, 1, 1, &tile);
      text_tile_count++;
    }

    if (text_lines[text_count] == '\b')
    {
      text_x--;
      text_wait = 10;
    }

    text_count++;
    text_x++;
    if (text_lines[text_count] == '\n')
    {
      text_x = 0;
      text_y++;
      text_count++;
    }
    else if (text_x > 17)
    {
      text_x = 0;
      text_y++;
    }

    if (text_draw_speed == 0)
    {
      UIDrawTextBufferChar();
    }
  }
  else
  {
    text_drawn = 1;
  }
}

void UISetPos(UBYTE x, UBYTE y)
{
  win_pos_x = x;
  win_dest_pos_x = x;
  win_pos_y = y;
  win_dest_pos_y = y;
}

void UIMoveTo(UBYTE x, UBYTE y, UBYTE speed)
{
  win_dest_pos_x = x;
  win_dest_pos_y = y;
  if (speed == 0)
  {
    win_pos_x = x;
    win_pos_y = y;
  }
  else
  {
    win_speed = speed;
  }
}

UBYTE UIIsClosed()
{
  return win_pos_y == (0x8FU + 1) && win_dest_pos_y == (0x8FU + 1);
}

void UIDrawMenuCursor()
{
  UBYTE i;
  for (i = 0; i < menu_num_options; i++)
  {
    set_win_tiles(i >= text_num_lines ? 10 : 1, (i % text_num_lines) + 1, 1, 1, menu_index == i ? ui_cursor_tiles : ui_bg_tiles);
  }
}

void UICloseDialogue()
{
  UIMoveTo(menu_layout ? 88 : 0, (0x8FU + 1), text_out_speed);


  text_count = 0;
  text_lines[0] = '\0';
  text_tile_count = 0;
  text_num_lines = 3;
  menu_enabled = 0;
  menu_layout = 0;
  avatar_enabled = 0;
}

void UIOnInteract()
{
  if (((joy & (0x10U)) && !(prev_joy & (0x10U))))
  {
    if (text_drawn && text_count != 0)
    {
      if (menu_enabled)
      {
        if (menu_cancel_on_last_option && menu_index + 1 == menu_num_options)
        {
          script_variables[menu_flag] = 0;
        }
        else
        {
          script_variables[menu_flag] = menu_index + 1;
        }
        UICloseDialogue();
      }
      else
      {
        UICloseDialogue();
      }
    }
  }
  else if (menu_enabled)
  {
    if (((joy & (0x04U)) && !(prev_joy & (0x04U))))
    {
      menu_index = (((menu_index - 1) > (0)) ? (menu_index - 1) : (0));
      UIDrawMenuCursor();
    }
    else if (((joy & (0x08U)) && !(prev_joy & (0x08U))))
    {
      menu_index = (((menu_index + 1) < (menu_num_options - 1)) ? (menu_index + 1) : (menu_num_options - 1));
      UIDrawMenuCursor();
    }
    else if (((joy & (0x02U)) && !(prev_joy & (0x02U))))
    {
      if(menu_layout == 0) {
        menu_index = (((menu_index - 4) > (0)) ? (menu_index - 4) : (0));
      } else {
        menu_index = 0;
      }
      UIDrawMenuCursor();
    }
    else if (((joy & (0x01U)) && !(prev_joy & (0x01U))))
    {
      if(menu_layout == 0) {
        menu_index = (((menu_index + 4) < (menu_num_options - 1)) ? (menu_index + 4) : (menu_num_options - 1));
      } else {
        menu_index = menu_num_options - 1;
      }
      UIDrawMenuCursor();
    }
    else if (menu_cancel_on_b && ((joy & (0x20U)) && !(prev_joy & (0x20U))))
    {
      script_variables[menu_flag] = 0;
      UICloseDialogue();
    }
  }
}

UBYTE UIAtDest()
{
  return win_pos_x == win_dest_pos_x && win_pos_y == win_dest_pos_y;
}

void UISetColor(UBYTE color)
{
  PushBank(ui_bank);;
  UISetColor_b(color);
  PopBank();;
}
