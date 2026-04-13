@echo off
echo Starting build...

REM Go to project directory (optional)
cd /d %~dp0

REM Run make
make clean
make all

IF %ERRORLEVEL% NEQ 0 (
    echo Build failed!
    exit /b %ERRORLEVEL%
)

echo Build completed successfully!
exit /b 0
