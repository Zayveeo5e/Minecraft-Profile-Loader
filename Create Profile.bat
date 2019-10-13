
cd "%~dp0\CoreUtils"

.\cp.exe -r "%~1" "%~dp0\CoreUtils\modpacks"

.\cp.exe "%~dp0\CoreUtils\base loader.bat" "%~dp0\CoreUtils\ModpackSwitchers\%~nx1.bat"

.\cp.exe "%~dp0\CoreUtils\base deleter.bat" "%~dp0\CoreUtils\ModpackDeleters\%~nx1.bat"