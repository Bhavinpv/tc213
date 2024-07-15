#** ****************************************************************************
#* \file    makefile
#* \brief   In this file all application source files shall be included.
#*
#* \section AUTHOR
#*    1. deenstr
#*
#* \section SVN
#*  $Date: 2017-03-09 08:25:33 +0100 (Do, 09 Mrz 2017) $
#*  $Author: detheit $
#*  $Revision: 4837 $
#*
#* \section LICENSE
#* Copyright (c) 2017 Delta Energy Systems (Germany) GmbH.
#* All rights reserved.
#******************************************************************************/

#--- Assembler settings --------------------------------------------------------
assembler_flags_appl = 

#--- Compiler settings ---------------------------------------------------------
compiler_flags_appl = -save-temps=obj \
                      -DGNU \
                      -msmall-const=8 \
                      -O2 \
                      -Wall \
                      -g \
                      -fno-common \
                      -fno-short-enums \
                      -mtc161 \
                      -fsingle-precision-constant \
                      -fstrict-volatile-bitfields \
                      -c \
                      -o $(obj_path)/$(notdir $*).$(obj_suffix)
        
#--- Project source files ------------------------------------------------------
source_appl := \
			$(controller_root)/40_Appl/HsfbApp/HsfbApp.c   \
			$(controller_root)/40_Appl/HsfbCtrl/HsfbCtrl.c \
			$(controller_root)/40_Appl/HsfbCtrl/HsfbCtrl_support.c \
			$(controller_root)/40_Appl/HsfbPwm/HsfbPwm.c \
			$(controller_root)/40_Appl/HsfbPwm/HsfbPwm_driver.c \
			$(controller_root)/40_Appl/HsfbDiag/HsfbDiag.c \
			$(controller_root)/40_Appl/HsfbMeas/HsfbMeas.c \
			$(controller_root)/40_Appl/HsfbNtc/HsfbNtc.c   \
			$(controller_root)/40_Appl/HsfbNtc/HsfbNtc_table.c \
			$(controller_root)/40_Appl/HsfbNtc/look1_is32lfys16ts16Df_hV1slEhI.c \
			$(controller_root)/40_Appl/HsfbState/HsfbState.c \
			$(controller_root)/40_Appl/HsfbSafety/HsfbSafety.c \
#			$(controller_root)/40_Appl/LlcCtrl/LlcCtrl.c \
			$(controller_root)/40_Appl/LlcCtrl/LlcCtrl_support.c \
			$(controller_root)/40_Appl/LlcPwm/LlcPwm.c \
			$(controller_root)/40_Appl/LlcPwm/LlcPwm_driver.c \

#--- Project source files there shall be lint tested ---------------------------
pclint_source_appl := $(source_appl)

#-------------------------------------------------------------------------------
source_files += $(source_appl)
pclint_files += $(addsuffix .lint, $(basename $(notdir $(pclint_source_appl))))
obj_files_appl = $(sort $(addsuffix .$(obj_suffix), $(basename $(notdir $(source_appl)))))
obj_files += $(sort $(addsuffix .$(obj_suffix), $(basename $(notdir $(source_appl)))))
include_folders += \
    $(COMPILER_PATH)/tricore/include \
	$(sort $(dir $(source_appl)))

$(obj_files_appl): compiler_flags = $(compiler_flags_appl)

#-------------------------------------------------------------------------------
#--- End of make file  ---------------------------------------------------------
#-------------------------------------------------------------------------------
