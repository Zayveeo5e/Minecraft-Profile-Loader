cd "%~dp0\.."
cls
echo Loading Profile...
.\rm.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\mods"
.\cp.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\config\*" "%~dp0\..\modpacks\%~n0\config\*"
.\rm.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\config"
.\cp.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\saves\*" "%~dp0\..\modpacks\%~n0\saves\*"
.\rm.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\saves"
.\rm.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\resourcepacks"
.\rm.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\shaderpacks"
.\cp.exe -r "%~dp0\..\modpacks\%~n0\*" "C:\Users\%username%\AppData\Roaming\.minecraft"
cd "%~dp0\.."
echo %~n0> current.txt
echo Loaded %~n0
pause
call "%~dp0\..\..\Launcher.bat"