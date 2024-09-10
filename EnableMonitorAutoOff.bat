@echo off

setlocal
cd /d %~dp0

powershell ./EnableMonitorAutoOff.ps1
timeout /t 1
gpupdate /Target:Computer /Force