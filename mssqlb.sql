DECLARE @path varchar(255)
SET @path=N'$(backupFolder)' + N'$(dbName)'+'.bak'

BACKUP DATABASE [$(dbName)] TO DISK = @path WITH NOFORMAT, INIT, NAME = N'$(dbName)', SKIP, NOREWIND, NOUNLOAD, STATS = 10

GO