#--- help target, this will be called if no argument is given. Do not replace --
.PHONY: help
help: default

#--- Variable for substitute functions ----------------------------------------
comma:=,
semicolon:=;
empty:=
space:=$(empty) $(empty)
dollar:=\$

#------------------------------------------------------------------------------------
#--- Project make settings  ---------------------------------------------------------
#--- Set the compiler path and developer specific configurations --------------
COMPILER_PATH      = $(subst $(space),\$(space),$(subst \,/,$(COMPILER_DIR)))

UNDERSTAND_C_PATH := $(subst $(space),\$(space),$(subst \,/,$(UNDERSTAND_C_DIR)))

PCLINT_PATH        = $(subst $(space),\$(space),$(subst \,/,$(PCLINT_DIR)))

MAKE_SUPPORT       = $(subst $(space),\$(space),$(subst \,/,$(MAKESUPPORT_DIR)))/..
#--- Directory of the unix-tools ----------------------------------------------
UNIXTOOL_PATH      = $(subst $(space),\$(space),$(subst \,/,$(MAKESUPPORT_DIR)))
#UNIXTOOL_PATH = C:/cygwin/bin
#--- Tool to create the dependencies. If you do not use the cpp.exe of the
#--- Delta MakeSupport, then overwrite also the define make-depend
MAKE_DEPEND       := $(subst $(space),\$(space),$(subst \,/,$(MAKESUPPORT_DIR)))/cpp0.exe

#--- Set sh.exe as shell for makefile -----------------------------------------
SHELL=$(UNIXTOOL_PATH)/sh.exe

#--- Tools definition ---------------------------------------------------------
pclint        := $(PCLINT_PATH)/lint-nt.exe

#--- Folder which shall be used for the build process -------------------------
obj_path := obj
bin_path := bin
s_path := asm
out_path := bin

dir_list := $(obj_path) $(bin_path) $(s_path)

#--- Project name --------------------------------------------------------------
output := IPB_LvDcCtrl
appl_name := $(out_path)/$(output).elf
appl_hex := $(out_path)/$(output).hex

#--- Project source and include folers -----------------------------------------
controller_root := $(subst \,/,$(ROOT_DIR))

#--- Suffix for the oject file and the assembler file --------------------------
obj_suffix = o
asm_suffix = asm

#--- Library parameter ---------------------------------------------------------
linker_dependence = 

#-------------------------------------------------------------------------------
#--- include the makefile for compiler settings --------------------------------
#-------------------------------------------------------------------------------
include compiler_gnuc.mk

#-------------------------------------------------------------------------------
#--- include the makefiles for sources -----------------------------------------
#-------------------------------------------------------------------------------
include source_appl.mk
include source_bsw.mk
include source_safetylib.mk

#-------------------------------------------------------------------------------
#--- include the makefile for polyspace ------------------------
#-------------------------------------------------------------------------------
include make_polyspace.mk

#-------------------------------------------------------------------------------
#--- include the makefile for pclint rules and settings ------------------------
#-------------------------------------------------------------------------------
include make_pclint.mk

#-------------------------------------------------------------------------------
#--- include the makefile for understand_c rules and settings ------------------
#-------------------------------------------------------------------------------
include make_understand_c.mk

#-------------------------------------------------------------------------------
#--- include the makefile for the build rules ----------------------------------
#-------------------------------------------------------------------------------
include make_build.mk

#-------------------------------------------------------------------------------
#--- include the makefile for linker command file creation ---------------------
#-------------------------------------------------------------------------------
include make_linker_file.mk

#-------------------------------------------------------------------------------
#--- include the global makefile with all targets ------------------------------
#-------------------------------------------------------------------------------
include $(MAKE_SUPPORT)/makefile_global.mk

#-------------------------------------------------------------------------------
#--- End of make file  ---------------------------------------------------------
#-------------------------------------------------------------------------------
