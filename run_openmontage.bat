@echo off
REM OpenMontage - Easy Video Creator for Windows
REM Simply run this file to create videos

setlocal enabledelayedexpansion
color 0B

:menu
cls
echo.
echo ========================================
echo     OpenMontage Video Creator
echo ========================================
echo.
echo What would you like to do?
echo.
echo 1. Create a new video
echo 2. Check system status
echo 3. Show configuration
echo 4. Exit
echo.

set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" goto create_video
if "%choice%"=="2" goto check_status
if "%choice%"=="3" goto show_config
if "%choice%"=="4" goto exit_program
goto menu

:create_video
cls
echo.
echo ========================================
echo     Create New Video
echo ========================================
echo.
set /p prompt="Enter your video idea: "

echo.
echo Creating your video...
echo.

call venv\Scripts\activate.bat
python main.py create --prompt "%prompt%"

pause
goto menu

:check_status
cls
echo.
echo ========================================
echo     System Status
echo ========================================
echo.

call venv\Scripts\activate.bat
python main.py status

pause
goto menu

:show_config
cls
echo.
echo ========================================
echo     Configuration
echo ========================================
echo.

call venv\Scripts\activate.bat
python main.py config

pause
goto menu

:exit_program
echo.
echo Thanks for using OpenMontage!
echo.
pause
exit /b 0
