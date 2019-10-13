cd "%~dp0\.."
.\rm.exe -r "%~dp0\..\..\modpacks\%~n0"
.\rm.exe -r "%~dp0\..\ModpackSwitchers\%~n0.bat"
.\rm.exe -r "%~0"
echo Deleted %~n0
pause
call "%~dp0\..\..\Launcher.bat"