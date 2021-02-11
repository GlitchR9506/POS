@echo off
SET POSDIR=%cd%
SET BIN=%POSDIR%\BINARIES
SET INC=%POSDIR%\INC

echo ##### Building P OS #####
echo ##### Building Boot #####
cd boot
CALL BUILD.BAT
cd ..\

