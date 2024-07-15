@echo off
setlocal
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
set ROOT_DIR=..

rem ****************************************************************************
rem * MAKESUPPORT_DIR has to be set to MakeSupport root directory
rem * There MUSTNOT be any blanks between the '=' sign and the path string
rem * Example:
rem *     set MAKESUPPORT_DIR=..\70_Tools\41_MakeSupportDelta\bin
rem ****************************************************************************
IF "%USERNAME%" EQU "service.desoebamboo" GOTO SETTING_CI_SERVER
IF "%USERNAME%" EQU "DEDEMUK" GOTO SETTING_DEDEMUK
IF "%USERNAME%" EQU "DENOACH" GOTO SETTING_DENOACH
IF "%USERNAME%" EQU "DESOEAP06$" GOTO SETTING_CI_SERVER
IF "%USERNAME%" EQU "ILLY.YL.CAI" GOTO SETTING_ILLY
IF "%USERNAME%" EQU "RICHIE.BAO" GOTO SETTING_RICHIE
IF "%USERNAME%" EQU "OLLIE.CAI" GOTO SETTING_OLLIE
IF "%USERNAME%" EQU "Bhavin.PV" GOTO SETTING_BHAVIN

:SETTING_DEFAULT
echo Username: %USERNAME%
echo Used settings: SETTING_DEFAULT
set INSTALLED_COMPILER_DIR=D:\NoBackup\DEV\toolchains\tricore\v4.6.3.0
::set INSTALLED_COMPILER_DIR=D:\NoBackup\DEV\toolchains\tricore\v4.6.6.1
set RLM_LICENSE=ES-DESO-SR010.delta.corp@5053
set PCLINT_DIR=V:\
GOTO END_USER_SETTING

:SETTING_DENOACH
echo Username: %USERNAME%
echo Used settings: SETTING_DENOACH
set INSTALLED_COMPILER_DIR=D:\NoBackup\Program\HighTec\toolchains\tricore\v4.6.6.1
set RLM_LICENSE=ES-DESO-SR010.delta.corp@5053
set PCLINT_DIR=V:\
GOTO END_USER_SETTING

:SETTING_ILLY
echo Username: %USERNAME%
echo Used settings: SETTING_ILLY
set PCLINT_DIR=V:\
set INSTALLED_COMPILER_DIR=C:\HIGHTEC\toolchains\tricore\V4.6.6.1
set RLM_LICENSE=cnshals07@5053
GOTO END_USER_SETTING

:SETTING_RICHIE
echo Username: %USERNAME%
echo Used settings: SETTING_RICHIE
set PCLINT_DIR=V:\
set INSTALLED_COMPILER_DIR=D:\APE_Tools\HIGHTEC\toolchains\tricore\V4.6.6.1
set RLM_LICENSE=cnshals07@5053
GOTO END_USER_SETTING

:SETTING_OLLIE
echo Username: %USERNAME%
echo Used settings: SETTING_OLLIE
set PCLINT_DIR=V:\
set INSTALLED_COMPILER_DIR=D:\SW\Hightec\toolchains\tricore\v4.6.3.0
::set INSTALLED_COMPILER_DIR=D:\SW\Hightec\toolchains\tricore\v4.6.6.1
set RLM_LICENSE=ES-DESO-SR010.delta.corp@5053
GOTO END_USER_SETTING


:SETTING_BHAVIN
echo Username: %USERNAME%
echo Used settings: SETTING_BHAVIN
set PCLINT_DIR=V:\
set INSTALLED_COMPILER_DIR=C:\HIGHTEC\toolchains\tricore\v4.6.3.0
::set INSTALLED_COMPILER_DIR=C:\HIGHTEC\toolchains\tricore\v4.6.3.0
set RLM_LICENSE=ES-DESO-SR010.delta.corp@5053
GOTO END_USER_SETTING

:SETTING_CI_SERVER
echo Username: %USERNAME%
echo Used settings: SETTING_CI_SERVER
set INSTALLED_COMPILER_DIR=%bamboo_capability_system_builder_command_HIGHTEC_tricore_v4_6_3_0%
set RLM_LICENSE=ES-DESO-SR010.delta.corp@5053
set PCLINT_DIR=%bamboo_capability_system_builder_command_PC_lint%
set HEXVIEW_DIR=%bamboo_capability_system_builder_command_HexView%
set HEXVIEW=%HEXVIEW_DIR%\hexview.exe
if not exist "%MAKESUPPORT_DIR%" set MAKESUPPORT_DIR=%bamboo_capability_system_builder_command_DeltaMakeSupport_02_02%
GOTO END_USER_SETTING

:END_USER_SETTING
rem *****************************************************************************
rem * DO NOT EDIT ANYTHING BELOW THIS
rem *****************************************************************************
set COMPILER_DIR=%INSTALLED_COMPILER_DIR%
if not exist "%HEXVIEW%" set HEXVIEW=%ROOT_DIR%\70_Tools\35_Hexview\hexview.exe
if not exist "%MAKESUPPORT_DIR%" set MAKESUPPORT_DIR=%ROOT_DIR%\70_Tools\42_DeltaMakeSupport\UnixTools

if not exist "%MAKESUPPORT_DIR%" (
  echo wrong path MAKESUPPORT_DIR %MAKESUPPORT_DIR%
  goto End
)

if not exist "%COMPILER_DIR%" (
  echo wrong path COMPILER_DIR %COMPILER_DIR%
  goto End
)

if "%1" == "" goto End

set str1=%1
set lint_output=
if not x%str1:.c.lint=%==x%str1% (
  FOR /F "tokens=*" %%A IN ('echo %1 ^| %MAKESUPPORT_DIR%\sed "s/\(.*\)\.c\.lint/\1\.lint/g"') DO SET Variable=%%A
  set lint_output=%MAKESUPPORT_DIR%\cat pclint\!Variable!
) else if not x%str1:.c.o=%==x%str1% (
  FOR /F "tokens=*" %%A IN ('echo %1 ^| %MAKESUPPORT_DIR%\sed "s/\(.*\)\.c\.o/\1\.o/g"') DO SET Variable=%%A
) else (
  set Variable=%1
)
goto SetPath

:NoArgument
set Variable=

:SetPath
set PATH_OLD=%PATH%
set PATH=%MAKESUPPORT_DIR%;%PATH%

set CYGWIN=nodosfilewarning

%MAKESUPPORT_DIR%\make --output-sync --jobs=8 !Variable! %2 %3 %4 %5 %6 %7
!lint_output!

set PATH=%PATH_OLD%
set PATH_OLD=

set LvDcApplInputPath=%ROOT_DIR%\20_Make\bin

if "%1" == "build" (
  if exist %LvDcApplInputPath%\IPB_LvDcCtrl.hex echo **** Generating bin file ****
  if exist *.hex del *.hex
  if exist %LvDcApplInputPath%\*.bin del %LvDcApplInputPath%\*.bin
  copy %LvDcApplInputPath%\IPB_LvDcCtrl.hex .\bin >> log.txt
  copy %LvDcApplInputPath%\IPB_LvDcCtrl.hex . >> log.txt
  if exist %LvDcApplInputPath%\IPB_LvDcCtrl.hex %HEXVIEW% /S %LvDcApplInputPath%\IPB_LvDcCtrl.hex /XI -o Temp1.hex
  if exist Temp1.hex %HEXVIEW% /S Temp1.hex /AR:0x80020000-0x8007FFDB /XI -o Temp2.hex
  if exist Temp2.hex %HEXVIEW% /S Temp2.hex /FR:0x80020000-0x8007FFDB /FP:0x00 /XI -o Temp3.hex
  if exist Temp3.hex %HEXVIEW% /S Temp3.hex /CS9:@0x8007FFDC;0x80020000-0x8007FFDB /XI -o Temp4.hex
  if exist Temp4.hex %HEXVIEW% /S Temp4.hex /XN -o .\bin\IPB_LvDcCtrl.bin
  REM if exist Temp4.hex %HEXVIEW% /S Temp4.hex %HEXVIEW% /S Temp4.hex /XI -o %LvDcApplInputPath%\IPB_LvDcCtrl.hex
  if exist .\bin\IPB_LvDcCtrl.bin goto SUCCESS
  echo **** bin file generation failed ****
  goto END
  :SUCCESS
  echo bin file successfully generated
  goto END
  :END
  del *.hex
)

:End

set MAKESUPPORT_DIR=
