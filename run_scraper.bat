@echo off
title Pokemon Card Downloader
cd /d "%~dp0"

echo ========================================================
echo         Pokemon Card Downloader Utility
echo ========================================================
echo.
echo 1. Start/Resume Download (Use cache if available)
echo 2. Update Set List and Resume Download (Force API fetch)
echo 3. Show Download Statistics
echo 4. Exit
echo.
echo --------------------------------------------------------

set /p choice="Select an option (1-4): "

if "%choice%"=="4" (
    echo Exiting...
    exit /b 0
)

if "%choice%"=="1" goto run
if "%choice%"=="2" goto run
if "%choice%"=="3" goto run

echo Invalid choice. Please run again and select 1, 2, 3, or 4.
pause
exit /b 1

:run
echo.
echo Starting Python script with option %choice%...
echo.

REM Pipe the choice to the Python script
echo %choice%| python getall.py

echo.
echo ========================================================
echo Script completed. Press any key to exit...
pause >nul
