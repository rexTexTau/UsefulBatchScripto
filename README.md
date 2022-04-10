# UsefulBatchScripto
A collection of useful batch scripts to perform various jobs

## Archive, Protect and Copy (apc.bat)
Creates the password-protected archive from the content of a given dir, then copies this archive to the list of dirs.

Free 7za.exe archiver binary file **must** be put in the dir containing this batch file.

Parameters:
`%1` - directory to archive
`%2` - %n - dirs to copy the archive to

Remarks: bin, obj, packages and node_modules subdirectories are excluded from the archive creation.

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

## MSSQL DB Backup, Archive & Protect (mssqlbap.bat + mssqldb.sql)

Backups the specified MSSQL db, then puts it into the password-protected archive from the content of a given dir, then copies this archive to the list of dirs.

Free sqlcmd.exe and sqlcmd.rll tool binary files **must** be put in the dir containing this batch file.

Remarks: mssqldb.sql also must be present in the same dir as batch file, otherwise the script will not work.

Db server name, db login id, db password and archive password are stored within the batch file itself.

Sample call:

```
mssqlbap.bat customers "G:\My drive\Reserve copies\Db"
```

# If you benefit from my work

You're welcome to share a tiny part of your success with me:

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/rextextaucom)