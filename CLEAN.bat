@echo off
setlocal enabledelayedexpansion

set "dirname=BladderMonster"

if exist "%localappdata%\%dirname%\" (
    echo Directory %dirname% exists. Deleting...
    rmdir /s /q "%localappdata%\%dirname%"
    echo %dirname% has been deleted.
) else (
    echo Directory %dirname% does not exist.
)

echo Deleting contents of ./Prod/ folder...
rmdir /s /q "./Prod/"
mkdir "./Prod/"
echo Contents of ./Prod/ folder have been deleted.

endlocal
PAUSE
