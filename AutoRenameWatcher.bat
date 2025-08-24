@echo off
setlocal enabledelayedexpansion

:: ================================================
:: CONFIGURATION
:: ================================================
set "ROOT=E:\Golden-Dir"
set "LOGDIR=%ROOT%\_logs"
set "INTERVAL=30"    :: seconds between scans
:: ================================================

:: Ensure log directory exists
if not exist "%LOGDIR%" mkdir "%LOGDIR%"

:LOOP
cls
echo Watching "%ROOT%" for changes... (Press CTRL+C to stop)
echo.

:: Get today's date in YYYY-MM-DD
for /f %%a in ('powershell -NoLogo -NoProfile -Command "Get-Date -Format yyyy-MM-dd"') do set "TODAY=%%a"

:: Log files for today
set "RENAMED=%LOGDIR%\%TODAY%_renamed.log"
set "SKIPPED=%LOGDIR%\%TODAY%_skipped.log"
set "FAILED=%LOGDIR%\%TODAY%_failed.log"

:: Reset counters
set /a COUNT_RENAMED=0
set /a COUNT_SKIPPED=0
set /a COUNT_FAILED=0

:: Scan files recursively
for /r "%ROOT%" %%F in (*.*) do (
    set "FILE=%%~nxF"
    set "DIR=%%~dpF"
    for %%I in ("%%~dpF.") do set "PARENT=%%~nxI"

    :: Skip logs themselves
    if /i "!DIR!"=="%LOGDIR%\" (
        rem skip log files
    ) else (
        :: Skip if already renamed
        echo !FILE! | findstr /c:"_!PARENT!_[" >nul
        if not errorlevel 1 (
            echo [!DATE! !TIME!] SKIPPED: %%F >> "%SKIPPED%"
            set /a COUNT_SKIPPED+=1
        ) else (
            set "NEWNAME=!TODAY!_!PARENT!_[!FILE!]"
            2>nul (
                ren "%%F" "!NEWNAME!"
            )
            if !errorlevel! equ 0 (
                echo [!DATE! !TIME!] RENAMED: %%F --> !NEWNAME! >> "%RENAMED%"
                set /a COUNT_RENAMED+=1
            ) else (
                echo [!DATE! !TIME!] FAILED: %%F (rename error) >> "%FAILED%"
                set /a COUNT_FAILED+=1
            )
        )
    )
)

:: Print summary this cycle
echo ================================
echo Cycle Summary (%TODAY%)
echo Renamed: !COUNT_RENAMED!
echo Skipped: !COUNT_SKIPPED!
echo Failed : !COUNT_FAILED!
echo ================================

:: Wait before next scan
timeout /t %INTERVAL% /nobreak >nul
goto LOOP
