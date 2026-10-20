@echo off
setlocal enabledelayedexpansion

echo ======================================================================
echo   SHIVAMOS - HOTEL NEW SHIVAM INN
echo   WINDOWS DESKTOP RELEASE BUILDER
echo ======================================================================
echo.

echo [1/5] Enabling Windows desktop target in Flutter...
call flutter config --enable-windows-desktop
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Failed to enable Windows desktop in Flutter.
    pause
    exit /b %ERRORLEVEL%
)

echo [2/5] Fetching project dependencies...
call flutter pub get
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] flutter pub get failed.
    pause
    exit /b %ERRORLEVEL%
)

echo [3/5] Running automated verification test suite...
call flutter test
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Unit/Widget tests failed! Aborting release build.
    pause
    exit /b %ERRORLEVEL%
)

echo [4/5] Compiling Windows release binary with Visual Studio MSVC...
call flutter build windows --release
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Windows compilation failed!
    echo Ensure Visual Studio 2022 with 'Desktop development with C++' is installed.
    pause
    exit /b %ERRORLEVEL%
)

echo [5/5] Packaging distributable release folder and zip archive...
set BUILD_DIR=build\windows\x64\runner\Release
set DIST_DIR=downloads\Windows\ShivamOS
set ZIP_OUTPUT=downloads\ShivamOS-Windows.zip

if not exist "%BUILD_DIR%\shivamos.exe" (
    echo [ERROR] shivamos.exe was not found in %BUILD_DIR%!
    pause
    exit /b 1
)

if exist "%DIST_DIR%" rmdir /s /q "%DIST_DIR%"
mkdir "%DIST_DIR%"

xcopy /e /i /y "%BUILD_DIR%\*" "%DIST_DIR%\"

powershell -Command "Compress-Archive -Path '%DIST_DIR%\*' -DestinationPath '%ZIP_OUTPUT%' -Force"

echo.
echo ======================================================================
echo   BUILD AND PACKAGING COMPLETED SUCCESSFULLY!
echo ======================================================================
echo   Executable Folder:  %CD%\%DIST_DIR%\
echo   Main Executable:    %CD%\%DIST_DIR%\shivamos.exe
echo   Distributable Zip:  %CD%\%ZIP_OUTPUT%
echo.
echo   You can distribute '%ZIP_OUTPUT%' to Hotel New Shivam Inn reception!
echo ======================================================================
echo.
pause
