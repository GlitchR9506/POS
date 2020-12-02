@echo off
SET POSDIR=\POS
SET BIN=%POSDIR%\BINARIES
SET INC=%POSDIR%\INC

echo ##### Building P OS #####
echo ##### Building Boot #####
cd boot
CALL BUILD.BAT
cd ..\

