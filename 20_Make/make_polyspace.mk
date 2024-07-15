#******************************************************************************
# * Filename   : polyspace_bugfinder.mk
# * Project    :
# * Author(s)  : deuhlef (Falk Uhlenbruck)
# * Created    : 05.07.22
# * Description: Delta base makefile for Delta internal make support (using GNU make)
# *              Project specific settings
# *
# * Last modification:
# *  on $Date: $
# *  by $Author: $
# *  current $Revision: 1 $
# *
# * Copyright (c) 2022 Delta Energy Systems (Germany) GmbH.
# * All rights reserved.
# ****************************************************************************/

#--- polyspace inputs -----------------------------------------------------------
polyspace_sources=$(source_files)
polyspace_includes=$(include_folders)

#--- polyspace options -----------------------------------------------------------
polyspace_options= \
-no-extern-C \
-misra3 all-rules \
-cert-c all-rules \
-code-metrics

#--- polyspace compiler setting -----------------------------------------------------------
polyspace_compiler= \
-lang C \
-c-version c99 \
-compiler gnu7.x \
-target mcpu 

#-------------------------------------------------------------------------------
#--- End of make file  ---------------------------------------------------------
#-------------------------------------------------------------------------------