@echo off
set /p commit_message="Enter your commit message: "
echo.

:: Add all changes
git add .

:: Commit changes with the entered message
git commit -m "%commit_message%"

:: Check if the commit was successful
echo.
echo.
if %errorlevel% equ 0 (
  powershell -Command Write-Host "Changes committed successfully! Use PUSH.bat to push them to the cloud." -ForegroundColor Green
) else (
  powershell -Command Write-Host "Commit FAILED! Please check your changes and try again." -ForegroundColor Red
)

echo.
PAUSE
