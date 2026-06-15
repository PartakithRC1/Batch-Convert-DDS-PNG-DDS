@echo off
setlocal enabledelayedexpansion
for /r %%f in (*.png) do (
    set "sourceDir=%%~dpf"
    set "targetDir=%%~dpfDDS"
    if not exist "!targetDir!" mkdir "!targetDir!"
    magick "%%f" "!targetDir!\%%~nf.dds"
)
echo Recursive conversion to DDS complete.
pause