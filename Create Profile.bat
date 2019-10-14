@echo off
cd "%~dp0\CoreUtils"
cls
echo Copying files...
.\cp.exe -r "%~1" "%~dp0\CoreUtils\modpacks"
cls
echo Creating Loader file...
.\cp.exe "%~dp0\CoreUtils\base loader.bat" "%~dp0\CoreUtils\ModpackSwitchers\%~nx1.bat"
cls
echo creating Deleter file...
.\cp.exe "%~dp0\CoreUtils\base deleter.bat" "%~dp0\CoreUtils\ModpackDeleters\%~nx1.bat"
cls
echo Done!
echo Profile "%~nx1" has been created.
pause
call "%~dp0\Launcher.bat"