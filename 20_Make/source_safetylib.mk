#** ****************************************************************************
#* \file    makefile
#* \brief   In this file all application source files shall be included.
#*
#* \section AUTHOR
#*    1. deparap
#*
#* \section SVN
#*  $Date:
#*  $Author:
#*  $Revision: 
#*
#* \section LICENSE
#* Copyright (c) 2017 Delta Energy Systems (Germany) GmbH.
#* All rights reserved.
#******************************************************************************/


#--- Assembler settings--------------------------------------------------------
assembler_flags_bsw = 

#--- Compiler settings---------------------------------------------------------
compiler_flags_safetylib = -save-temps=obj \
                      -DGNU \
                      -msmall-const=8 \
                      -Wall \
                      -g \
                      -fno-common \
                      -fno-short-enums \
                      -mtc161 \
                      -fsingle-precision-constant \
                      -fstrict-volatile-bitfields \
                      -c \
                      -std=iso9899:1990 \
                      -ansi \
                      -ffreestanding \
                      -fpeel-loops \
                      -falign-functions=4 \
                      -funsigned-bitfields \
                      -ffunction-sections \
                      -fno-ivopts \
                      -fno-peephole2 \
                      -O3 \
                      -o $(obj_path)/$(notdir $*).$(obj_suffix)
                      
#--- Project source files------------------------------------------------------
source_safetylib := \
	$(controller_root)/30_Bsw/Smu/Static/Smu.c \
    $(controller_root)/30_Bsw/Smu/Config/Smu_PBCfg.c \
	$(controller_root)/30_Bsw/TstHandler/Static/TstHandler.c \
	$(controller_root)/30_Bsw/TstHandler/Config/TstHandler_PBCfg.c \
	$(controller_root)/30_Bsw/TstM/Config/TstM_Cfg.c \
	$(controller_root)/30_Bsw/TstM/Static/TstM.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/ClkmTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/CpuBusMpuLfmTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Config/CpuBusMpuLfmTst_LCfg.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/CpuMpuTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Config/CpuMpuTst_LCfg.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/IRTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Config/IRTst_LCfg.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/IRTst_IRTab.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/LockStepTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/Mtl_Trap.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/Mtl_TrapTab.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/PmuEccEdcTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/PmuEccEdcTst_PtrnDef.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/PmuEccEdcTst_RefPtrnDef.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/RegAccProtTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/SffTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/SfrCmpTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Config/SfrTst_LCfg.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/SmuTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/SpbTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Config/SpbTst_LCfg.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/SramEccTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Config/SramEccTst_LCfg.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/SramEccTst_MemDef.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/SriTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Config/SriTst_LCfg.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/TrapTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/VltmTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Static/WdgTst.c \
	$(controller_root)/30_Bsw/MicroTestLib/Config/WdgTst_LCfg.c \
	$(controller_root)/30_Bsw/STL_common/Mcal_WdgLib.c \
	$(controller_root)/30_Bsw/STL_common/Mcal_TcLib.c \
	$(controller_root)/30_Bsw/STL_common/Mcal_Trap.c \
	$(controller_root)/30_Bsw/STL_common/Sl_Ipc.c \
	$(controller_root)/30_Bsw/STL_common/Sl_FlsErrPtrn.c \
   
#-------------------------------------------------------------------------------
source_files += $(source_safetylib)
pclint_files += $(addsuffix .lint, $(basename $(notdir $(pclint_source_safetylib))))
obj_files_safetylib = $(sort $(addsuffix .$(obj_suffix), $(basename $(notdir $(source_safetylib)))))
obj_files += $(sort $(addsuffix .$(obj_suffix), $(basename $(notdir $(source_safetylib)))))
include_folders += \
	$(COMPILER_PATH)/tricore/include \
	$(controller_root)/20_Make \
	$(sort $(dir $(source_safetylib)))

$(obj_files_safetylib): compiler_flags = $(compiler_flags_safetylib)

CpuMpuTst.o: compiler_flags+= -O0
CpuMpuTst_LCfg.o: compiler_flags+= -O0
SriTst.o: compiler_flags+= -O0
SriTst_LCfg.o: compiler_flags+= -O0

#-------------------------------------------------------------------------------
#--- End of make file  ---------------------------------------------------------
#-------------------------------------------------------------------------------