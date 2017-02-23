@echo off
:waitforserver
tasklist | find /I "rustdedicated"
IF %ERRORLEVEL% == 0 GOTO startrustadmin
TIMEOUT /T 5
GOTO waitforserver

:startrustadmin
TIMEOUT /T 30
start C:\Users\dcadmin\Desktop\RustAdminRelease\RustAdmin.exe

