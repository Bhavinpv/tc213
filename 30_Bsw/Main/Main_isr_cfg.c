/** ****************************************************************************
 * \file    Main_isr_cfg.c
 * \brief   This file is responsible for allocation alll the used ISRs in the System 
 *          to the Interrupt vector table and the unhandled interrupts
 *
 * \section AUTHOR
 *    #. DERAGHM
 *
 * \section SVN
 *  $Date: 2021-05-17 09:28:08 $
 *  $Author: DERAGHM $
 *  $Revision:  $
 *
 * \section LICENSE
 * Copyright (c) 2016 Delta Energy Systems (Germany) GmbH.
 * All rights reserved.
 ******************************************************************************/

/*******************************************************************************
 * Included header
 ******************************************************************************/

#include "Compilers.h"
#include "mcu_cfg.h"

/*******************************************************************************
 * Local constants and macros (private to module)
 ******************************************************************************/

/*******************************************************************************
 * Local data types (private typedefs / structs / enums)
 ******************************************************************************/

/*******************************************************************************
 * Local data (private to module)
 ******************************************************************************/

/*******************************************************************************
 * Local function prototypes (private to module)
 ******************************************************************************/

/*******************************************************************************
 * Global functions (public to other modules)
 ******************************************************************************/

/*******************************************************************************
 * Local functions (private to module)
 ******************************************************************************/

/*******************************************************************************
 * ISR Vector Table Allocation
 ******************************************************************************/

/* The following list is used to allocate ISRs definitions 
 *  ----------------------------------------------------------
 * 1 - The default handler (ISR_DefaultHandler) is responsble handling any non used ISR 
 * 2 - The definition of the default handler API is located at the iohwsf_IsrMon.c file 
 * 3 - Any used ISR API shall be located regarding its priority number 
 */

IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x00 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x01 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x02 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x03 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x04 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x05 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x06 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x07 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x08 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x09 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x0A );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x0B );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x0C );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x0D );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x0E );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x0F );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x10 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x11 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x12 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x13 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x14 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x15 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x16 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x17 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x18 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x19 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x1A );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x1B );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x1C );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x1D );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x1E );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x1F );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x20 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x21 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x22 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x23 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x24 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x25 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x26 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x27 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x28 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x29 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x2A );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x2B );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x2C );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x2D );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x2E );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x2F );
IFX_INTERRUPT(Isr_Call10ms,  0, CPU0_SRPN4);
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x31 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x32 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x33 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x34 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x35 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x36 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x37 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x38 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x39 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x3A );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x3B );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x3C );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x3D );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x3E );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x3F );
IFX_INTERRUPT(Isr_Call1ms,   0, CPU0_SRPN3);
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x41 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x42 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x43 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x44 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x45 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x46 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x47 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x48 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x49 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x4A );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x4B );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x4C );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x4D );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x4E );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x4F );
IFX_INTERRUPT(Isr_Call100us, 0, CPU0_SRPN2);
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x51 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x52 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x53 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x54 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x55 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x56 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x57 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x58 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x59 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x5A );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x5B );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x5C );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x5D );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x5E );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x5F );
IFX_INTERRUPT(Isr_Call15us,  0, CPU0_SRPN1);
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x61 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x62 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x63 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x64 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x65 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x66 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x67 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x68 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x69 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x6A );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x6B );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x6C );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x6D );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x6E );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x6F );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x70 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x71 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x72 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x73 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x74 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x75 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x76 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x77 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x78 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x79 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x7A );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x7B );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x7C );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x7D );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x7E );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x7F );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x80 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x81 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x82 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x83 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x84 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x85 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x86 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x87 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x88 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x89 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x8A );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x8B );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x8C );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x8D );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x8E );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x8F );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x90 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x91 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x92 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x93 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x94 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x95 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x96 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x97 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x98 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x99 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x9A );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x9B );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x9C );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x9D );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x9E );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0x9F );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xA0 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xA1 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xA2 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xA3 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xA4 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xA5 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xA6 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xA7 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xA8 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xA9 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xAA );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xAB );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xAC );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xAD );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xAE );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xAF );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xB0 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xB1 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xB2 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xB3 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xB4 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xB5 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xB6 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xB7 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xB8 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xB9 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xBA );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xBB );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xBC );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xBD );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xBE );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xBF );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xC0 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xC1 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xC2 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xC3 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xC4 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xC5 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xC6 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xC7 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xC8 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xC9 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xCA );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xCB );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xCC );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xCD );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xCE );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xCF );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xD0 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xD1 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xD2 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xD3 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xD4 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xD5 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xD6 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xD7 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xD8 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xD9 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xDA );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xDB );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xDC );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xDD );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xDE );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xDF );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xE0 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xE1 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xE2 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xE3 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xE4 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xE5 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xE6 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xE7 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xE8 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xE9 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xEA );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xEB );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xEC );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xED );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xEE );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xEF );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xF0 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xF1 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xF2 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xF3 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xF4 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xF5 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xF6 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xF7 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xF8 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xF9 );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xFA );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xFB );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xFC );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xFD );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xFE );
IFX_INTERRUPT(ISR_DefaultHandler,  0, 0xFF );


/*
 * End of file
 */