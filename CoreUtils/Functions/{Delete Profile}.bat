@echo off
cls

cd "%~dp0\..\ModpackDeleters"

setlocal enabledelayedexpansion

set /A counter=0
set choice=

for /R %%i in (*) do (

if not "%%~nxi" == "%~nx0" (
set /A counter+=1
echo !counter!: %%~ni
set exe[!counter!]=%%i

set choice=!choice!!counter!
)
)

if %counter% LSS 10 (
choice /C %choice% /M "Type option number"
set EXENUM=!ERRORLEVEL!
) else set /P EXENUM="Enter option number: "


set EXECUTABLE=!exe[%EXENUM%]!
echo running %EXECUTABLE%
call "%EXECUTABLE%"
