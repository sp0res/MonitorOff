@echo off

setlocal
cd /d %~dp0

powershell ./DisableMonitorAutoOff.ps1
timeout /t 1
gpupdate /Target:Computer /Force