@echo off
title RBank Management System
cls
echo ===========================================
echo       Starting RBank Management System
echo ===========================================
echo.

REM Navigate to Backend Folder
echo  Starting Backend...
cd /d C:\Users\TEJAS\IdeaProjects\RSBank_System\RSBankSystem_B\BankSystem
start cmd /k "mvn spring-boot:run"
timeout /t 10 >nul
echo ✅ Backend Started Successfully.

REM Navigate to Frontend Folder
echo.
echo  Starting Frontend...
cd /d C:\Users\TEJAS\IdeaProjects\RSBank_System\RSBankSystem_F

if not exist node_modules (
    echo Installing Dependencies...
    call npm install
) else (
    echo Dependencies Already Installed.
)

start cmd /k "npm run dev"
timeout /t 5 >nul
echo ✅ Frontend Started Successfully.

REM Automatically open the app in browser
echo  Opening Application in Browser...
start http://localhost:5173/

echo ===========================================
echo         RBank System is Running... ✅
echo ===========================================

pause
exit
