@echo off
title Pokemon Card Downloader Setup
cd /d "%~dp0"

echo ========================================================
echo         Installing Required Libraries
echo ========================================================
echo.

REM Check if pip is available
pip --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: pip is not recognized. Please ensure Python is installed and added to PATH.
    pause
    exit /b 1
)

echo Installing dependencies...
pip install requests

if %errorlevel% neq 0 (
    echo.
    echo Error: Failed to install dependencies.
    pause
    exit /b 1
)

echo.
echo ========================================================
echo Setup completed successfully!
echo You can now run 'run_scraper.bat' to start the downloader.
echo ========================================================
pause
