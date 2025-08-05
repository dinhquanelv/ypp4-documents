USE GoogleDrive
GO

-- screen 1: home
-- case 1: select user info
 DECLARE @userId INT = 1
 SELECT 
	a.UserName,
	a.Email,
	a.UserImg
 FROM Account a
 WHERE a.UserId = @userId 
 GO

 -- case 2: select user setting
DECLARE @userId INT = 1;
SELECT
	su.SettingUserId,
	s.SettingKey,
	s.SettingValue
FROM SettingUser su
JOIN Account a ON su.UserId = a.UserId
JOIN AppSetting s ON su.SettingId = s.SettingId
WHERE a.UserId = @userId
GO

-- case 3: recommend folder
DECLARE @userId INT = 1
SELECT TOP 10
	fo.FolderId,
	a.UserName,
	fo.FolderName,
	ar.ActionLog,
	ar.ActionDateTime
FROM ActionRecent ar
JOIN Account a ON ar.UserId = a.UserId
JOIN Folder fo ON ar.ObjectTypeId = 1 and ar.ObjectId = fo.FolderId
WHERE ar.UserId = @userId  
ORDER BY ar.ActionDateTime DESC
GO

-- case 4: recommend file
DECLARE @userId INT = 1
SELECT TOP 10
	f.FileId,
	a.UserName,
	f.UserFileName,
	ar.ActionLog,
	ar.ActionDateTime
FROM ActionRecent ar 
JOIN Account a ON ar.UserId = a.UserId
JOIN UserFile f ON ar.ObjectTypeId = 2 and ar.ObjectId = f.FileId
WHERE ar.UserId = @userId
ORDER BY ar.ActionDateTime DESC
GO
