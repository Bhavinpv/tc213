#** ****************************************************************************
#* \file    makefile
#* \brief   This makefile is to config the compiler settings for project 
#*          specific preferences.
#*
#* \section AUTHOR
#*    1. deenstr
#*
#* \section SVN
#*  $Date: 2017-01-13 15:18:43 +0100 (Fr, 13 Jan 2017) $
#*  $Author: deenstr $
#*  $Revision: 2955 $
#*
#* \section LICENSE
#* Copyright (c) 2017 Delta Energy Systems (Germany) GmbH.
#* All rights reserved.
#******************************************************************************/

#--- Tool to create the dependencies. If you do not use the cpp.exe of the
#--- Delta MakeSupport, then overwrite also the define make-depend
MAKE_DEPEND := $(UNIXTOOL_PATH)/cpp0.exe

#--- Tools definition ----------------------------------------------------------
compiler=$(COMPILER_PATH)/bin/tricore-gcc.exe
assembler=$(COMPILER_PATH)/bin/tricore-gcc.exe
linker=$(COMPILER_PATH)/bin/tricore-gcc.exe
converter=$(COMPILER_PATH)/bin/tricore-objcopy.exe

#-------------------------------------------------------------------------------
#--- End of make file  ---------------------------------------------------------
#-------------------------------------------------------------------------------
