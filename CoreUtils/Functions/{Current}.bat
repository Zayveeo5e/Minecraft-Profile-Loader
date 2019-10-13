set /p mytextfile=< %~dp0\..\current.txt
cls
echo Current Pack is %mytextfile%
pause
call %~dp0\..\..\Launcher.bat