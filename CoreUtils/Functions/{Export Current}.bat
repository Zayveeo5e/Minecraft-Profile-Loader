cls
cd "%~dp0\.."
set /p mytextfile=< "%~dp0\..\current.txt"
.\mkdir.exe "%~dp0\..\..\%mytextfile%"
cls
echo Exporting...
.\cp.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\mods" "%~dp0\..\..\%mytextfile%"
.\cp.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\config" "%~dp0\..\..\%mytextfile%"
.\cp.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\saves" "%~dp0\..\..\%mytextfile%"
.\cp.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\resourcepacks" "%~dp0\..\..\%mytextfile%"
.\cp.exe -r "C:\Users\%username%\AppData\Roaming\.minecraft\shaderpacks" "%~dp0\..\..\%mytextfile%"
cls
echo Exported %mytextfile% to "%~dp0\..\.."
pause
call "%~dp0\..\..\Launcher.bat"
