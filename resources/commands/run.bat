@echo off
if "%~1"=="" (
    echo Usage: run ^<command^> [arguments...]
    echo Example: run notepad
    exit /b 1
)
echo [%xName%] [%date% %time%]: Running external: %* > "%xDataTransferPath%"
%*
