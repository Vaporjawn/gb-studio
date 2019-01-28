#include "Map.h"
#include "BankManager.h"

void LoadMap_b();
void MapRepositionCamera_b();
void MapUpdate_b();
void MapSetEmotion_b(UBYTE actor, UBYTE type);
UBYTE IsEmoting_b();

UBYTE map_next_index;
POS map_next_pos;
VEC2D map_next_dir;

void LoadMap()
{
  PUSH_BANK(map_bank);
  LoadMap_b();
  POP_BANK;
}

void MapUpdate()
{
  PUSH_BANK(map_bank);
  MapUpdate_b();
  POP_BANK;
}

void MapSetEmotion(UBYTE actor, UBYTE type)
{
  PUSH_BANK(map_bank);
  MapSetEmotion_b(actor, type);
  POP_BANK;  
}

UBYTE IsEmoting()
{
  UBYTE isEmoting; 
  PUSH_BANK(map_bank);
  isEmoting = IsEmoting_b();
  POP_BANK;  
  LOG("IS EMOTING? %d\n", isEmoting);
  return isEmoting;
}