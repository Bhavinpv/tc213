#** ****************************************************************************
#* \file    makefile
#* \brief   In this file the configuration for pclint shall be defined.
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

#-------------------------------------------------------------------------------
#--- PC Lint rule --------------------------------------------------------------
#-------------------------------------------------------------------------------

#--- pclint settings -----------------------------------------------------------
pclint_cfg_folder := ../70_Tools/80_PCLint

pclint_flags := -v -b $(depend_defines)

pclint_source = $(addsuffix .lint, $(basename $(notdir $(delta_appl_source))))

post-pclint :=

pclint := v:/LINT-NT.EXE

#-------------------------------------------------------------------------------
#--- End of make file  ---------------------------------------------------------
#-------------------------------------------------------------------------------
