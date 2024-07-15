/* Default linker script, for normal executables */
OUTPUT_FORMAT("elf32-tricore")
OUTPUT_ARCH(tricore)
ENTRY(_START)

__TRICORE_DERIVATE_MEMORY_MAP__ = 0x210;

/* RAM Layout *****************************************************************/
LCF_DSPR0_START       = 0x70000000; __LCF_DSPR0_SIZE    =  48k;
LCF_DSPR0_ZBSS        = 0x70000000; __LCF_ZBSS_SIZE     =   0k;
LCF_DSPR0_ZDATA       = 0x70003000; __LCF_ZDATA_SIZE    =   0k;
LCF_DSPR0_BSS         = 0x70000008; __LCF_BSS_SIZE      =  16k - 0x08;
LCF_DSPR0_DATA        = 0x70000000; __LCF_DATA_SIZE     = 0x08;
LCF_DSPR0_USTACK      = 0x70008E00; __LCF_USTACK_SIZE   =   2k;
LCF_DSPR0_USTACK_GAP  = 0x70009600; __LCF_USTACK_GAP    = 256 ;
LCF_DSPR0_ISTACK      = 0x70009700; __LCF_ISTACK_SIZE   =   1k;
LCF_DSPR0_ISTACK_GAP  = 0x70009B00; __LCF_ISTACK_GAP    = 256 ;
LCF_DSPR0_CSA         = 0x70009C00; __LCF_CSA_SIZE      =   8k;
LCF_DSPR0_CSA_GAP     = 0x7000BC00; __LCF_CSA_GAP       =   1k;
LCF_DSPR0_END         = 0x7000C000;
/*******************************************************************************
LCF_PSPR0_START       = 0x70100000; __LCF_PSPR0_SIZE    =   8k;
LCF_PSPR0_20US        = 0x70100000; __LCF_20US_SIZE     =   8k;
LCF_PSPR0_END         = 0x70102000;

/* FLASH Layout ****************************************************************
LCF_FLASH_START       = 0x80000000; __LCF_FLASH_SIZE    = 512k;
LCF_FLASH_FBL         = 0x80000000; __LCF_FBL_SIZE      =  32k;
LCF_FLASH_SRODATA     = 0x80008000; __LCF_RESERV1_SIZE  =  32k;
LCF_FLASH_DATA0       = 0x8002A7A8; __LCF_DATA0_SIZE    = 0x08;
LCF_FLASH_ZBSS        = 0x80010000;
LCF_FLASH_BSS         = 0x80014000; *******************************************/
LCF_FLASH_SYSTEM      = 0x80020000; __LCF_SYSTEM_SIZE   =  0x110; /*************
LCF_FLASH_RODATA1     = 0x80020110; __LCF_RODATA1_SIZE  =  0;
LCF_FLASH_RODATA2     = 0x8002124C; __LCF_RODATA2_SIZE  =  0;
LCF_FLASH_ISRTAB      = 0x80060000; __LCF_SYSTEM_SIZE   =  16k;
LCF_FLASH_LIB         = 0x80028000; __LCF_LIB_SIZE      =  32k;
LCF_FLASH_MCAL        = 0x80030000; __LCF_MCAL_SIZE     =  64k;
LCF_FLASH_BSW         = 0x80040000; __LCF_BSW_SIZE      =  64k;
LCF_FLASH_APP1        = 0x80050000; __LCF_APP1_SIZE     =  64k;
LCF_FLASH_APP2        = 0x80060000; __LCF_APP2_SIZE     =  64k;
LCF_FLASH_RESERV2     = 0x80070000; __LCF_RESERV2_SIZE  =  64k;
LCF_FLASH_VALIDFL     = 0x8007FFE0; __LCF_VALIDFL_SIZE  =  32 ;
LCF_FLASH_END         = 0x80080000;
                                    __LCF_SWC_SIZE      =   4k;
                                    __LCF_BSS_GAP       =  256;
                                    __LCF_ZBSS_GAP      =   16;  /* up to 256 */
                                    __LCF_ZBSS_MIN      =   16;  /* down to 0 */
                                    __LCF_RODATA_ALIGN  =  256;

LCF_FILL_SECT  = 0;  /* 1/0 Enable/ Disable fill between sections *************/
LCF_ALIGN_SWC  = 0;  /* 1/0 Enable/ Disable align of software components ******/
LCF_ALIGN_BSS  = 0;  /* 1/0 Enable/ Disable align of  bss sections ************/
LCF_ALIGN_ZBSS = 1;  /* 1/0 Enable/ Disable align of zbss sections ************/

/* System Setting *************************************************************/

LCF_TRAPVEC0_START = 0x80020100;    __TRAPTAB_CPU0   = LCF_TRAPVEC0_START;
LCF_INTVEC0_START  = 0x80060000;    __INTTAB_CPU0    = LCF_INTVEC0_START;
LCF_INTVEC_ALIGN   =       0x20;  

  __LCF_SRPN_SAFETY =  16;

  __LCF_SRPN_GPT__10MS =  48;
  __LCF_SRPN_GPT___1MS =  64;
  __LCF_SRPN_GPT_100US =  80;

  __LCF_SRPN_VADC_20US_A = 96;

  __A0_MEM = 0x70008000; /* fix due to no use of .sdata  section */
  __A9_MEM = 0x70008000; /* fix due to no use of .sdata4 section */
/*__A1_MEM = 0x80008000; /* fix due to no use of .sdata2 section */
  __A8_MEM = 0x80008000; /* fix due to no use of .sdata3 section */

/* Memory definition **********************************************************/

MEMORY {
/*dsram0 (w!xp) : org = 0x70000000, len = 48k ** split ***********************/
/*ZBSS   (w!xp) : org = 0x70000000, len = 12k * use zbss, zdata for Runtime
  ZDATA  (w!xp) : org = 0x70003000, len =  4k * optimization                 */ 
  DATA   (w!xp) : org = 0x70000000, len = 0x08 
  BSS    (w!xp) : org = 0x70000008, len = 16k - 0x08
  SYSRAM (w!xp) : org = 0x70009700, len =  13K 
/*PSRAM0 (w!xp) : org = 0x70100000, len =   8K /* 20us Task *******************/
/*pfls0  (rx!p) : org = 0x80020000, len = 384k /* 128k offset FBL * split *****/
/*FBL    (!arx) : org = 0x80000000, len =  32k ** reserved ********************/
  SYSROM (rx!p) : org = 0x80020000, len = 0x0110
  RODAT1 (rx!p) : org = 0x80020110, len = 0x113C 
  RODAT2 (rx!p) : org = 0x8002124C, len = 0x0AC
  TEXT   (rx!p) : org = 0x800212F8, len = 512K
  DATA0  (rx!p) : org = 0x8002A7A8, len = 0x0008
  ISRROM (rx!p) : org = 0x80060000, len =  16k
/* dedicated allocation of SWC with respect to SwArch layer *******************/
  MCAL   (rx!p) : org = 0x80030000, len =  64k
/*BSW    (rx!p) : org = 0x80040000, len =  64k
  APP1   (rx!p) : org = 0x80050000, len =  64k
  APP2   (rx!p) : org = 0x80060000, len =  64k ********************************/
  RESERV (rx!p) : org = 0x80070000, len =  64k 
}

/* ROM sections ***************************************************************/

SECTIONS{

	/* Boot mode header 1 absolutely restricted at address 0x80020000 */
	.bmhd1 (LCF_FLASH_SYSTEM) : FLAGS(arl) {
    KEEP(*(.bmhd_1)); } > SYSROM
	
	/* User start address absolutely restricted at address 0x80020020 */
    .start (LCF_FLASH_SYSTEM + 0x20) : FLAGS(rxl) {
    KEEP(*(.start)); . = ALIGN(0x4); } > SYSROM = 0x800
 
    .addrtab (LCF_FLASH_SYSTEM + 0x40) : FLAGS(arl) {
    KEEP(*(.startaddrtable)) } > SYSROM

    /* Boot mode header 1 CRC data */
    .bmhd1crc (0x80030000) : {
      PROVIDE(BmhdValidate = .);
      LONG(0xAAAAAAAA); LONG(0x55555555); LONG(0xAAAAAAAA); LONG(0x55555555);
      LONG(0xAAAAAAAA); LONG(0x55555555); LONG(0xAAAAAAAA); LONG(0x55555555);
    } > MCAL

  
  .SW_version (0x80030020) : {
    KEEP (*(.SW_version));
    . = ALIGN(4);
  } > MCAL
  
 /* TrapTab removed due to not used, no hex change ***************************/

  .sdata2 (0x80020100): FLAGS(arsl) {
    *(.srodata)
    *(.srodata.*)
  } > SYSROM

  _SMALL_DATA2_ = SIZEOF(CORE_SEC(.sdata2)) ? ADDR(CORE_SEC(.sdata2)) + 32k : (ADDR(CORE_SEC(.sdata2)) & 0xF0000000) + 32k ;
  __A1_MEM = _SMALL_DATA2_;

  /* Read Only Data ***********************************************************/
  .rodata1 : FLAGS(arl) {
    __LCF_SIZE_RODATA1 = SIZEOF(.rodata1);
    M0 = ABSOLUTE(.);
    *(.rodata)
    *(.rodata.*)
    M1 = ABSOLUTE(.); __LCF_SIZE_RODATA1_NET  = (M1 - M0);
    . = ALIGN(__LCF_RODATA_ALIGN * LCF_ALIGN_SWC);
/*  . += LCF_FILL_SECT * (LCF_FLASH_RODATA1 + __LCF_RODATA1_SIZE - .); */    
  } > RODAT1 = 0
  

  .rodata2 : FLAGS(arl) {
    __LCF_SIZE_RODATA2 = SIZEOF(.rodata2);
    M0 = ABSOLUTE(.);
    /*
     * Create the clear and copy tables that tell the startup code
     * which memory areas to clear and to copy, respectively.
     */
    . = ALIGN(4) ;
    PROVIDE(__clear_table = .) ;
    LONG(0 + ADDR(.bss));     LONG(SIZEOF(.bss));
    LONG(-1);                 LONG(-1);
    M1 = ABSOLUTE(.); __LCF_SIZE_RODATA2_NET  = (M1 - M0);
    . = ALIGN(__LCF_RODATA_ALIGN * LCF_ALIGN_SWC);
    M0 = ABSOLUTE(.);
    PROVIDE(__copy_table = .) ;
    LONG(LOADADDR(.data));    LONG(0 + ADDR(.data));    LONG(SIZEOF(.data));
    LONG(-1);                 LONG(-1);                 LONG(-1);
    . = ALIGN(8);
    M1 = ABSOLUTE(.); __LCF_SIZE_RODATA2_NET += (M1 - M0);
  } > RODAT2

    .text (0x800212F8) : FLAGS(axl) {
    *(.text)
    *(.text.*)
    . = ALIGN(4);
  } > TEXT
  
  /* Setup interrupt vector table for required SRPN ***************************/
  .inttab (LCF_INTVEC0_START) : {
    /* Safety */
    . = LCF_INTVEC_ALIGN * __LCF_SRPN_SAFETY; KEEP(*(.intvec_tc0_16 ));

    /* GPT 10ms, 1ms, 100us */
    . = LCF_INTVEC_ALIGN * __LCF_SRPN_GPT__10MS; KEEP(*(.intvec_tc0_48 ));
    . = LCF_INTVEC_ALIGN * __LCF_SRPN_GPT___1MS; KEEP(*(.intvec_tc0_64));
    . = LCF_INTVEC_ALIGN * __LCF_SRPN_GPT_100US; KEEP(*(.intvec_tc0_80));

    /* VADC 20us-A, 20us-B 20us-C */
    . = LCF_INTVEC_ALIGN * __LCF_SRPN_VADC_20US_A; KEEP(*(.intvec_tc0_96));

/*  . += LCF_FILL_SECT * (LCF_FLASH_SYSTEM + __LCF_SYSTEM_SIZE - .); */
  } > ISRROM
}

/* RAM sections ***************************************************************/
SECTIONS {
  .data : FLAGS(awl) {
    __LCF_SIZE_DATA = SIZEOF(.data);
    M0 = ABSOLUTE(.);
    *(.data)
    M1 = ABSOLUTE(.);
    __LCF_SIZE_DATA_NET  = (M1 - M0);
/*  . += LCF_FILL_SECT * (LCF_DSPR0_DATA + __LCF_DATA_SIZE - .); */
  } > DATA AT > DATA0

  .bss (NOLOAD) : FLAGS(aw)	{
    __LCF_SIZE_BSS = SIZEOF(.bss);
    M0 = ABSOLUTE(.);
    *(.data)
    M1 = ABSOLUTE(.);
    __LCF_SIZE_BSS_NET  = (M1 - M0);
/*  . += LCF_FILL_SECT * (LCF_DSPR0_BSS + __LCF_BSS_SIZE - .); */
    *(.bss)
  } > BSS
 
/* Setup U-Stack, ISTACK and Context Save Area ********************************/

	.ustack (LCF_DSPR0_USTACK) (NOLOAD) : {
		PROVIDE(__USTACK0_END = .);	. = __LCF_USTACK_SIZE; PROVIDE(__USTACK0  = .);
    . += __LCF_USTACK_GAP;
	} > SYSRAM
	
	.istack (LCF_DSPR0_ISTACK) (NOLOAD) : {
		PROVIDE(__ISTACK0_END = .); . = __LCF_ISTACK_SIZE; PROVIDE(__ISTACK0  = .);
    . += __LCF_ISTACK_GAP;
	} > SYSRAM
	
	.csa (LCF_DSPR0_CSA      ) (NOLOAD) : {
		PROVIDE(__CSA0        = .);	. = __LCF_CSA_SIZE; 	 PROVIDE(__CSA0_END = .);
    . += __LCF_CSA_GAP;
	} > SYSRAM
}

/* ROM sections ***************************************************************/
SECTIONS {

   /*This section contains compatibility BTLD/SW of the application */
  .COMPATIBILITY_APPL_BTLD_SW (0x8007FFB6) : {
    KEEP (*(.COMPATIBILITY_APPL_BTLD_SW));
    . = ALIGN(1);
  } > TEXT

   /*This section contains compatibility SW/SW of the application */
  .COMPATIBILITY_APPL_SW_SW (0x8007FFD6) : {
    KEEP (*(.COMPATIBILITY_APPL_SW_SW));
    . = ALIGN(1);
  } > TEXT

  /*This section contains version of the application */
  .COMPATIBILITY_APPL_VER (0x8007FFD8) : {
    KEEP (*(.COMPATIBILITY_APPL_VER));
    . = ALIGN(4);
  } > TEXT
  
    /*This section contains version of the application */
  .CRC (0x8007FFDC) : {
    KEEP (*(.CRC));
    . = ALIGN(4);
  } > TEXT

}

/* DWARF debug sections
 * Symbols in the DWARF debugging sections are relative to the
 * beginning of the section, so we begin them at 0. ***************************/

SECTIONS {
	/* DWARF 1 */
	.comment         0 : { *(.comment)}
	.debug           0 : { *(.debug  )}
	.line            0 : { *(.line   )}

	/* GNU DWARF 1 extensions */
	.debug_srcinfo   0 : { *(.debug_srcinfo )}
	.debug_sfnames   0 : { *(.debug_sfnames )}

	/* DWARF 1.1 and DWARF 2 */
	.debug_aranges   0 : { *(.debug_aranges )}
	.debug_pubnames  0 : { *(.debug_pubnames)}

	/* DWARF 2 */
	.debug_info      0 : { *(.debug_info   )}
	.debug_abbrev    0 : { *(.debug_abbrev )}
	.debug_line      0 : { *(.debug_line   )}
	.debug_frame     0 : { *(.debug_frame  )}
	.debug_str       0 : { *(.debug_str    )}
	.debug_loc       0 : { *(.debug_loc    )}
	.debug_macinfo   0 : { *(.debug_macinfo)}
	.debug_ranges    0 : { *(.debug_ranges )}

	/* SGI/MIPS DWARF 2 extensions */
	.debug_weaknames 0 : { *(.debug_weaknames)}
	.debug_funcnames 0 : { *(.debug_funcnames)}
	.debug_typenames 0 : { *(.debug_typenames)}
	.debug_varnames  0 : { *(.debug_varnames )}

	/* Optional sections that may appear regardless of relocating. */
	.version_info    0 : { *(.version_info)}
	.boffs           0 : { KEEP (*(.boffs))}
}

/* Check for unassigned sections **********************************************/

SECTIONS {
  unassigned (0): {
    M0 = ABSOLUTE(.); M1 = ABSOLUTE(.);
    *(*)
  }
  UNASSIGNED. = !ASSERT((SIZEOF(unassigned) == 0), "Unassigned sections");
}
