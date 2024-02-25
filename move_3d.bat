@echo off
setlocal

REM Source Dir
set "source_dir=C:\Path\To\Your\Directory"

REM Destination Dir
set "destination_dir=D:\3D"

REM Check folder
if not exist "%destination_dir%" mkdir "%destination_dir%"

REM Move 3D files
for %%i in ("%source_dir%\*.3mf" "%source_dir%\*.stl") do (
    move "%%i" "%destination_dir%" > nul 2>&1
)

echo Your damn 3D files rearranged.
pause
