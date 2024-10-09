@echo off
:: To ensure file is always ran as admin (won't work otherwise)
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

setlocal
cd /d %~dp0 

:: Starting
echo Starting - Enable Turn Off Monitor...

timeout /t 1 > nul

:: Run ps1 file in same folder to change policy
powershell ./EnableMonitorAutoOff.ps1

:: timeout /t 1 > nul
gpupdate /Target:Computer /Force

timeout /t 1 > nul

echo Done, closing terminal.

timeout /t 4

:: Close the terminal window
exit
