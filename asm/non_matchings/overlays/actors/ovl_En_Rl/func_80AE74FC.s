glabel func_80AE74FC
/* 0024C 80AE74FC AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00250 80AE7500 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 00254 80AE7504 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00258 80AE7508 00077880 */  sll     $t7, $a3,  2               
/* 0025C 80AE750C 30C6FFFF */  andi    $a2, $a2, 0xFFFF           ## $a2 = 00000000
/* 00260 80AE7510 11C00009 */  beq     $t6, $zero, .L80AE7538     
/* 00264 80AE7514 00AFC021 */  addu    $t8, $a1, $t7              
/* 00268 80AE7518 8F021D8C */  lw      $v0, 0x1D8C($t8)           ## 00001D8C
/* 0026C 80AE751C 50400007 */  beql    $v0, $zero, .L80AE753C     
/* 00270 80AE7520 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00274 80AE7524 94590000 */  lhu     $t9, 0x0000($v0)           ## 00000000
/* 00278 80AE7528 50D90004 */  beql    $a2, $t9, .L80AE753C       
/* 0027C 80AE752C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00280 80AE7530 03E00008 */  jr      $ra                        
/* 00284 80AE7534 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AE7538:
/* 00288 80AE7538 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AE753C:
/* 0028C 80AE753C 03E00008 */  jr      $ra                        
/* 00290 80AE7540 00000000 */  nop
