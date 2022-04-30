rem Creates the password-protected archive from the content of a given dir, then copies this archive to the list of dirs
rem %1 - directory to archive, %2 - %n - dirs to copy the archive to
rem bin, obj and node_modules subdirectories are excluded from the archive creation

echo off

if %1.==. goto End
if %2.==. goto End 

set "pwd=ReplaceThisWithAnyPasswordOfYourChoice"

set fullDir=%1
shift

for %%f in ("%fullDir%") do set shortDir=%%~nxf

7za.exe a -tzip -p"%pwd%" -xr!bin -xr!obj -xr!node_modules -xr!packages %shortDir%.zip %fullDir%

:Loop
robocopy . %1 %shortDir%.zip
shift
if not "%~1"=="" goto Loop

del %shortDir%.zip

:End