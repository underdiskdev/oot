.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80A9C340

.incbin "baserom/ovl_En_Kusa", 0x13A0, 0x00000210
