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
assembler_flags_bsw = 

#--- Compiler settings ---------------------------------------------------------
compiler_flags_bsw = -save-temps=obj \
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
source_bsw := \
	$(controller_root)/30_Bsw/Compilers/CompilerGnuc.c \
	$(controller_root)/30_Bsw/ComStack/ComServ/Comserv.c \
	$(controller_root)/30_Bsw/ComStack/Tp/Tp_cfg.c\
	$(controller_root)/30_Bsw/ComStack/Tp/Tp.c\
	$(controller_root)/30_Bsw/ComStack/Uds/Uds.c\
	$(controller_root)/30_Bsw/ComStack/VerInfo/VerInfo.c\
	$(controller_root)/30_Bsw/Dsp/Dsp.c \
	$(controller_root)/30_Bsw/Mpu/mpu.c \
	$(controller_root)/30_Bsw/Pma/Pma.c \
	$(controller_root)/30_Bsw/iohw/Static/iohwsf.c \
	$(controller_root)/30_Bsw/iohw/Static/iohwsf_Reset.c \
	$(controller_root)/30_Bsw/iohw/Static/iohwsf_CfgCheck.c \
	$(controller_root)/30_Bsw/iohw/Static/iohwsf_IsrMon.c \
	$(controller_root)/30_Bsw/iohw/Static/iohwsf_AccessProt.c \
    $(controller_root)/30_Bsw/iohw/Static/iohwsf_FspTest.c \
	$(controller_root)/30_Bsw/Main/Main.c \
	$(controller_root)/30_Bsw/Main/Main_isr_cfg.c \
	$(controller_root)/30_Bsw/Scheduler/Scheduler_Asil.c \
	$(controller_root)/30_Bsw/Scheduler/Scheduler_Qm.c \
	$(controller_root)/30_Bsw/Mcal/Adc/Adc.c \
	$(controller_root)/30_Bsw/Mcal/Can/can_cfg.c \
	$(controller_root)/30_Bsw/Mcal/Can/can_driver.c \
	$(controller_root)/30_Bsw/Mcal/Cpu/IfxCpu.c \
	$(controller_root)/30_Bsw/Mcal/Cpu/IfxCpu_CStart0.c \
	$(controller_root)/30_Bsw/Mcal/Gtm/Gtm.c \
	$(controller_root)/30_Bsw/Mcal/Port/Port.c \
	$(controller_root)/30_Bsw/Mcal/Qspi/Qspi_cfg.c \
	$(controller_root)/30_Bsw/Mcal/Qspi/Qspi.c \
	$(controller_root)/30_Bsw/Mcal/Scu/IfxScuCcu.c \
	$(controller_root)/30_Bsw/Mcal/Scu/IfxScuWdt.c \
	$(controller_root)/30_Bsw/Safety/Safety_cfg.c \

#--- Project source files there shall be lint tested ---------------------------
pclint_source_bsw := $(source_bsw)

#-------------------------------------------------------------------------------
source_files += $(source_bsw)
pclint_files += $(addsuffix .lint, $(basename $(notdir $(pclint_source_bsw))))
obj_files_bsw = $(sort $(addsuffix .$(obj_suffix), $(basename $(notdir $(source_bsw)))))
obj_files += $(sort $(addsuffix .$(obj_suffix), $(basename $(notdir $(source_bsw)))))
include_folders += \
    $(COMPILER_PATH)/tricore/include \
    $(controller_root)/30_Bsw/Common \
	$(controller_root)/30_Bsw/Common/Delta_commen \
	$(controller_root)/30_Bsw/Common/TC21x \
	$(controller_root)/20_Make \
	$(sort $(dir $(source_bsw)))

$(obj_files_bsw): compiler_flags = $(compiler_flags_bsw)

#-------------------------------------------------------------------------------
#--- End of make file  ---------------------------------------------------------
#-------------------------------------------------------------------------------
