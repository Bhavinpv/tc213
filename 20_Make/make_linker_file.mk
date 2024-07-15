#** ****************************************************************************
#* \file    makefile
#* \brief  This file defines the target to create the linker command file.
#*
#* \section AUTHOR
#*    1. deenstr
#*
#* \section SVN
#*  $Date: 2017-01-24 15:45:06 +0100 (Di, 24 Jan 2017) $
#*  $Author: deenstr $
#*  $Revision: 3270 $
#*
#* \section LICENSE
#* Copyright (c) 2017 Delta Energy Systems (Germany) GmbH.
#* All rights reserved.
#******************************************************************************/

$(linker_file): $(linker_dependence)

#--- Linker command file -------------------------------------------------------
define create-linker-command-file
endef

linker_file := Lcf_Gnuc.lsl

#-------------------------------------------------------------------------------
#--- End of make file  ---------------------------------------------------------
#-------------------------------------------------------------------------------
