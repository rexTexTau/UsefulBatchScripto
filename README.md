# UsefulBatchScripto
A collection of useful batch scripts to perform various jobs

## Archive, Protect and Copy (apc.bat)
Creates the password-protected archive from the content of a given dir, then copies this archive to the list of dirs.

Parameters:
`%1` - directory to archive
`%2` - %n - dirs to copy the archive to

Remarks: bin, obj and node_modules subdirectories are excluded from the archive creation.

Password is stored within the batch file itself.

Sample call:

```
apc.bat Projects "G:\My drive\Reserve copies" "C:\Users\admin\YandexDisk\Reserve"
```

## Sync 2 Dirs (s2d.bat)
Syncs the content of two dirs.

Parameters: 
`%1` - first directory to sync
`%2` - second directory to sync

Remarks: if file is not present in one of the dirs, it will be copied to it; if a file is present in both dirs, older version will be replaced by newer one.

Sample call:

```
s2d.bat Projects "G:\My drive\Reserve copies" "C:\Users\admin\YandexDisk\Reserve"
```