@echo off
setlocal enabledelayedexpansion
for /r %%f in (*.dds) do (
    set "sourceDir=%%~dpf"
    set "targetDir=%%~dpfPNG"
    if not exist "!targetDir!" mkdir "!targetDir!"
    magick "%%f" "!targetDir!\%%~nf.png"
)
echo Recursive conversion to PNG complete.
pause