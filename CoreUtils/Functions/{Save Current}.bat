cls
cd "%~dp0\.."
set /p mytextfile=< "%~dp0\..\current.txt"
.\mkdir.exe "%~dp0\..\modpacks\%mytextfile%"
.\cp.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\mods" "%~dp0\..\modpacks\%mytextfile%"
.\cp.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\config" "%~dp0\..\modpacks\%mytextfile%"
.\cp.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\saves" "%~dp0\..\modpacks\%mytextfile%"
.\cp.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\resourcepacks" "%~dp0\..\modpacks\%mytextfile%"
.\cp.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\shaderpacks" "%~dp0\..\modpacks\%mytextfile%"
cls
echo Saved %mytextfile%
pause
call "%~dp0\..\..\Launcher.bat"
