::NeeroCMD | Main Script
@echo off
setlocal EnableExtensions

title Loading...

set "xName=NeeroCMD"
set "xVersion=1.1.0"
set "xDeveloper=External"
set "xCMDPrefix=%xName%> "
set "xCurrentCommand="
set "xCommandArgs="
set "xCommandsFolder=%~dp0commands\"
set "xChecker=1"
set "xNotCommandFoundText=is not an internal or external command, executable program or batch file."
set "xDataTransferPath=%~dp0temp\NeeroCMD_DbgTransfer.tmp"
set "xMsgPath=%~dp0msg.vbs"
set "xSettingsPath=%~dp0..\settings.json"
set "xMsgIconError=16"
set "xMsgIconQuestion=32"
set "xMsgIconWarn=48"
set "xMsgIconInfo=64"

if not exist "%~dp0temp\" mkdir "%~dp0temp\" 2>nul

if not exist "%xSettingsPath%" (
    echo [%xName%] [%date% %time%]: 'settings.json' not found! > "%xDataTransferPath%"
    cscript //nologo "%xMsgPath%" "%xName%" "'settings.json' not found!" %xMsgIconError%
    goto END
)

set "xCurrentTheme="
for /f "usebackq delims=" %%T in (`powershell -NoProfile -Command ^
  "try { $p = (Resolve-Path -LiteralPath '%xSettingsPath%').Path; $j = Get-Content -LiteralPath $p -Raw | ConvertFrom-Json; if ($j.Theme) { $j.Theme } } catch { }"`) do (
    set "xCurrentTheme=%%T"
)

if /i "%xCurrentTheme%"=="Black" (
    color 0f
) else if /i "%xCurrentTheme%"=="White" (
    color f0
) else (
    set "xCurrentTheme=Black"
    color 0f
    echo [%xName%] [%date% %time%]: Unknown theme in settings.json, using default: Black > "%xDataTransferPath%"
    cscript //nologo "%xMsgPath%" "%xName%" "Unknown theme in settings.json. Valid: White, Black. Using default: Black." %xMsgIconWarn%
)

cls
echo [%xName%] [%date% %time%]: Launching main module v%xVersion%, Theme: %xCurrentTheme% > "%xDataTransferPath%"
call "%~dp0neerocmd.bat"
:END
endlocal
exit /b 0
