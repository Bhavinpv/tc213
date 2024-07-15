#** ****************************************************************************
#* \file    makefile
#* \brief   This file handle the compiler and linker rules.
#*
#* \section AUTHOR
#*    1. deenstr
#*
#* \section SVN
#*  $Date: 2017-02-24 10:32:18 +0100 (Fr, 24 Feb 2017) $
#*  $Author: deenstr $
#*  $Revision: 4309 $
#*
#* \section LICENSE
#* Copyright (c) 2017 Delta Energy Systems (Germany) GmbH.
#* All rights reserved.
#******************************************************************************/

#--- Additional libs -----------------------------------------------------------
lib_include =
lib_folder := 
libs :=

#--- Include folders -----------------------------------------------------------
include_folders += \
  $(sort $(dir $(source_files)))

#-------------------------------------------------------------------------------
#--- Additional init, compile and linker functions -----------------------------
#-------------------------------------------------------------------------------
define init
  $(call assert,$(shell echo "`$(compiler) --version | $(GREP) 'tricore-gcc'`"),This makefile requires the HighTec tricore-gcc compiler) \
  $(call assert,$(shell echo "`$(compiler) --version | $(GREP) 'v4.6.3.0'`"),This makefile requires the tricore-gcc release version v4.6.3.0)
endef

#$(call assert,$(shell echo "`$(compiler) --version | $(GREP) 'HighTec Release HDP-v4.6.6.1'`"),This makefile requires the tricore-gcc release version v4.6.6.1)
#$(call assert,$(shell echo "`$(compiler) --version | $(GREP) 'v4.6.3.0'`"),This makefile requires the tricore-gcc release version v4.6.3.0)
#-------------------------------------------------------------------------------
#--- Dependency rule -----------------------------------------------------------
#-------------------------------------------------------------------------------

#--- makedepend settings -------------------------------------------------------
depend_defines = -D__GNUC__
#depend_defines = -D__HIGHTEC__

depend_flags = -std=iso9899:1999 \
               -Wall \
               $(depend_defines) \
               $(addprefix -I,$(include_folders))

#-------------------------------------------------------------------------------
#--- Assembler rule ------------------------------------------------------------
#-------------------------------------------------------------------------------

#--- Assembler settings --------------------------------------------------------
assembler_flags = 

## $(call assembler-rule, source-file)
define assembler-rule
  $(assembler) $(assembler_flags) $1
endef

#-------------------------------------------------------------------------------
#--- Compiler rule -------------------------------------------------------------
#-------------------------------------------------------------------------------

#--- Compiler settings ---------------------------------------------------------
compiler_flags = 

## $(call compile-rule, source-file)
define compiler-rule
  if ( $(compiler) $(addprefix -I, $(include_folders)) $(compiler_flags) $1 ); then \
    true; \
  else \
    false; \
  fi
endef

#--- post compiler rule - add comands which should be executed at the end of
#                         the compile step.
define post-compile
#  $(MV) *.s $(s_path);
endef

#-------------------------------------------------------------------------------
#--- Linker rule ---------------------------------------------------------------
#-------------------------------------------------------------------------------

#--- Linker parameter file to be used ------------------------------------------
linker_out := $(out_path)/$(output).map

#--- Linker settings ----------------------------------------------------------
linker_flags = -o $(appl_name) \
               -Wl,-T $(linker_file) \
               -Wl,-Map=$(linker_out) \
               -Wl,--mcpu=aurix \
               -Wl,--gc-sections \
               -nostartfiles \
               -Wl,-n \
               -Wl,--extmap="a"

hexdump = $(converter) -O ihex $(appl_name) $(appl_hex)

define pre-linker-step
# currently nothing to do
endef

define linker-rule
  if ( $(linker) $(linker_flags) $(addprefix $(obj_path)/, $(obj_files))); then \
    if [ -f $(appl_name) ]; then $(hexdump); fi; true; \
  else \
    if [ -f $(appl_name) ]; then $(hexdump); fi; false; \
  fi
endef

define post-linker-step
# currently nothing to do
endef

#-------------------------------------------------------------------------------
#--- End of build process ------------------------------------------------------
#-------------------------------------------------------------------------------
define end-of-build
# currently nothing to do
endef

#-------------------------------------------------------------------------------
#--- End of make file  ---------------------------------------------------------
#-------------------------------------------------------------------------------
