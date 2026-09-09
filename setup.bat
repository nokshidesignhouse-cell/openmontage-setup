@echo off
REM OpenMontage Windows Automatic Setup Script
REM This script will install everything needed for OpenMontage

setlocal enabledelayedexpansion
color 0A

echo.
echo ========================================
echo   OpenMontage - Windows Setup Script
echo ========================================
echo.

REM Check if Python is installed
echo [1/5] Checking Python installation...
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python is not installed!
    echo.
    echo Please download and install Python from:
    echo https://www.python.org/downloads/
    echo.
    echo Make sure to check "Add Python to PATH" during installation!
    echo.
    pause
    exit /b 1
) else (
    echo ✅ Python is installed
    python --version
)

echo.

REM Check if Git is installed
echo [2/5] Checking Git installation...
git --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Git is not installed!
    echo.
    echo Please download and install Git from:
    echo https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
) else (
    echo ✅ Git is installed
    git --version
)

echo.

REM Create virtual environment
echo [3/5] Creating Python virtual environment...
if exist venv (
    echo Virtual environment already exists, skipping...
) else (
    python -m venv venv
    echo ✅ Virtual environment created
)

echo.

REM Activate virtual environment
echo [4/5] Activating virtual environment and installing dependencies...
call venv\Scripts\activate.bat
python -m pip install --upgrade pip
pip install -r requirements.txt
echo ✅ Dependencies installed

echo.

REM Create output directory
echo [5/5] Creating output directory...
if not exist output mkdir output
echo ✅ Output directory created

echo.
echo ========================================
echo   ✅ Setup Complete!
echo ========================================
echo.
echo Your first video is ready to create!
echo.
echo To create a video, run:
echo   venv\Scripts\activate.bat
echo   python main.py create --prompt "Your video idea"
echo.
echo Or use the batch file:
echo   run_openmontage.bat
echo.
pause
