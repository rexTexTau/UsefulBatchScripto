rem Backups the specified MSSQL db, then puts it into the password-protected archive from the content of a given dir, then copies this archive to the list of dirs
rem %1 - database name to backup&archive, %2 - %n - dirs to copy the archive to

echo off

if %1.==. goto End
if %2.==. goto End 

set backupFolder=%~dp0
set dbName=%1
shift

set "sqlServer=ReplaceThisWithAnyServerNameOfYourChoice"
set "sqlUser=sReplaceThisWithAnyUserNameOfYourChoice"
set "sqlPwd=ReplaceThisWithAnyPasswordOfYourChoice"

sqlcmd.exe -i "mssqlb.sql" -S "%sqlServer%" -U "%sqlUser%" -P "%sqlPwd%" -v dbName="%dbName%" backupFolder="%backupFolder%"

set "pwd=ReplaceThisWithAnyPasswordOfYourChoice"

7za.exe a -tzip -p"%pwd%" %dbName%.zip %dbName%.bak

del %dbName%.bak

:Loop
robocopy . %1 %dbName%.zip
shift
if not "%~1"=="" goto Loop

del %dbName%.zip

:End