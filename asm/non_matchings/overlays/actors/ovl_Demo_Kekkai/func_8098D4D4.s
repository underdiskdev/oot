.late_rodata
glabel D_8098E2B8
    .float 0.2

glabel D_8098E2BC
    .float 0.003

.text
glabel func_8098D4D4
/* 00504 8098D4D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00508 8098D4D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0050C 8098D4DC 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00510 8098D4E0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00514 8098D4E4 51C00038 */  beql    $t6, $zero, .L8098D5C8     
/* 00518 8098D4E8 94CB01F6 */  lhu     $t3, 0x01F6($a2)           ## 000001F6
/* 0051C 8098D4EC 8CA21D8C */  lw      $v0, 0x1D8C($a1)           ## 00001D8C
/* 00520 8098D4F0 50400035 */  beql    $v0, $zero, .L8098D5C8     
/* 00524 8098D4F4 94CB01F6 */  lhu     $t3, 0x01F6($a2)           ## 000001F6
/* 00528 8098D4F8 94430000 */  lhu     $v1, 0x0000($v0)           ## 00000000
/* 0052C 8098D4FC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00530 8098D500 10610030 */  beq     $v1, $at, .L8098D5C4       
/* 00534 8098D504 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00538 8098D508 5461002F */  bnel    $v1, $at, .L8098D5C8       
/* 0053C 8098D50C 94CB01F6 */  lhu     $t3, 0x01F6($a2)           ## 000001F6
/* 00540 8098D510 948F01F6 */  lhu     $t7, 0x01F6($a0)           ## 000001F6
/* 00544 8098D514 2404000C */  addiu   $a0, $zero, 0x000C         ## $a0 = 0000000C
/* 00548 8098D518 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 0054C 8098D51C 57000008 */  bnel    $t8, $zero, .L8098D540     
/* 00550 8098D520 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 00554 8098D524 0C03CFCF */  jal     func_800F3F3C              
/* 00558 8098D528 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0055C 8098D52C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00560 8098D530 94D901F6 */  lhu     $t9, 0x01F6($a2)           ## 000001F6
/* 00564 8098D534 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 00568 8098D538 A4C801F6 */  sh      $t0, 0x01F6($a2)           ## 000001F6
/* 0056C 8098D53C 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
.L8098D540:
/* 00570 8098D540 44812000 */  mtc1    $at, $f4                   ## $f4 = 7.00
/* 00574 8098D544 C4C001F0 */  lwc1    $f0, 0x01F0($a2)           ## 000001F0
/* 00578 8098D548 3C018099 */  lui     $at, %hi(D_8098E2B8)       ## $at = 80990000
/* 0057C 8098D54C 4604003C */  c.lt.s  $f0, $f4                   
/* 00580 8098D550 00000000 */  nop
/* 00584 8098D554 45020006 */  bc1fl   .L8098D570                 
/* 00588 8098D558 94C901F4 */  lhu     $t1, 0x01F4($a2)           ## 000001F4
/* 0058C 8098D55C C426E2B8 */  lwc1    $f6, %lo(D_8098E2B8)($at)  
/* 00590 8098D560 46060200 */  add.s   $f8, $f0, $f6              
/* 00594 8098D564 10000017 */  beq     $zero, $zero, .L8098D5C4   
/* 00598 8098D568 E4C801F0 */  swc1    $f8, 0x01F0($a2)           ## 000001F0
/* 0059C 8098D56C 94C901F4 */  lhu     $t1, 0x01F4($a2)           ## 000001F4
.L8098D570:
/* 005A0 8098D570 240400C3 */  addiu   $a0, $zero, 0x00C3         ## $a0 = 000000C3
/* 005A4 8098D574 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 005A8 8098D578 3142FFFF */  andi    $v0, $t2, 0xFFFF           ## $v0 = 00000001
/* 005AC 8098D57C 28410065 */  slti    $at, $v0, 0x0065           
/* 005B0 8098D580 14200007 */  bne     $at, $zero, .L8098D5A0     
/* 005B4 8098D584 A4CA01F4 */  sh      $t2, 0x01F4($a2)           ## 000001F4
/* 005B8 8098D588 0C00D6DD */  jal     Flags_SetEventChkInf
              
/* 005BC 8098D58C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 005C0 8098D590 0C00B55C */  jal     Actor_Kill
              
/* 005C4 8098D594 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 005C8 8098D598 10000012 */  beq     $zero, $zero, .L8098D5E4   
/* 005CC 8098D59C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8098D5A0:
/* 005D0 8098D5A0 28410029 */  slti    $at, $v0, 0x0029           
/* 005D4 8098D5A4 14200007 */  bne     $at, $zero, .L8098D5C4     
/* 005D8 8098D5A8 3C018099 */  lui     $at, %hi(D_8098E2BC)       ## $at = 80990000
/* 005DC 8098D5AC C430E2BC */  lwc1    $f16, %lo(D_8098E2BC)($at) 
/* 005E0 8098D5B0 C4CA0050 */  lwc1    $f10, 0x0050($a2)          ## 00000050
/* 005E4 8098D5B4 46105480 */  add.s   $f18, $f10, $f16           
/* 005E8 8098D5B8 E4D20050 */  swc1    $f18, 0x0050($a2)          ## 00000050
/* 005EC 8098D5BC C4C40050 */  lwc1    $f4, 0x0050($a2)           ## 00000050
/* 005F0 8098D5C0 E4C40058 */  swc1    $f4, 0x0058($a2)           ## 00000058
.L8098D5C4:
/* 005F4 8098D5C4 94CB01F6 */  lhu     $t3, 0x01F6($a2)           ## 000001F6
.L8098D5C8:
/* 005F8 8098D5C8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 005FC 8098D5CC 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 00600 8098D5D0 55800004 */  bnel    $t4, $zero, .L8098D5E4     
/* 00604 8098D5D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00608 8098D5D8 0C00BE5D */  jal     func_8002F974              
/* 0060C 8098D5DC 240520EE */  addiu   $a1, $zero, 0x20EE         ## $a1 = 000020EE
/* 00610 8098D5E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8098D5E4:
/* 00614 8098D5E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00618 8098D5E8 03E00008 */  jr      $ra                        
/* 0061C 8098D5EC 00000000 */  nop
