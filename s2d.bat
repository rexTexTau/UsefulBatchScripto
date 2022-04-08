rem Syncs the content of two dirs
rem %1 - first directory to sync, %2 - second directory to sync
rem if a file is not present in one of the dirs, it will be copied to it
rem if a file is present in both dirs, older version will be replaced by newer one

IF %1.==. GOTO End
IF %2.==. GOTO End

robocopy /s /xo /r:10 /w:1 %1 %2
robocopy /s /xo /r:10 /w:1 %2 %1

:End