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
JOIN Folder fo ON ar.ObjectTypeId = 1 AND ar.ObjectId = fo.FolderId
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
JOIN UserFile f ON ar.ObjectTypeId = 2 AND ar.ObjectId = f.FileId
WHERE ar.UserId = @userId
ORDER BY ar.ActionDateTime DESC
GO

-- screen 2: my drive
-- case 1: select user folder
DECLARE @UserId INT = 1 
SELECT 
	fo.FolderId,
	a.UserName,
	fo.FolderName
FROM Folder fo
JOIN Account a ON fo.OwnerId = a.UserId
WHERE a.UserId =@UserId
GO

-- case 2: select user file
DECLARE @UserId INT = 1 
SELECT 
	uf.FileId,
	a.UserName,
	uf.UserFileName
FROM UserFile uf 
JOIN Account a ON uf.OwnerId = a.UserId
WHERE a.UserId = @UserId
GO

-- screen 3: share with me
-- select shared folder with user id
DECLARE @userId INT = 101
SELECT
	fo.FolderId,
	a.UserName,
	fo.FolderName
FROM SharedUser su
JOIN Account a ON su.UserId = a.UserId
JOIN Share s ON su.ShareId = s.ShareId
JOIN [Folder] fo ON s.ObjectTypeId = 1 AND s.ObjectId = fo.FolderId
where su.UserId = @userId
GO

-- select shared file with user id
DECLARE @UserId INT = 102
SELECT
	f.FileId,
	a.UserName,
	f.UserFileName
FROM SharedUser su
JOIN Account a ON su.UserId = a.UserId
JOIN Share s ON su.ShareId = s.ShareId
JOIN UserFile f ON s.ObjectTypeId = 2 AND s.ObjectId = f.FileId
WHERE su.UserId = @UserId
GO

-- screen 4: recent action
WITH RecentObjects AS (
    SELECT 
        ar.ObjectId,
        ar.ObjectTypeId,
        ar.ActionDateTime,
		ar.ActionLog,
        CASE 
            WHEN ar.ObjectTypeId = 1 THEN 'Folder'
            WHEN ar.ObjectTypeId = 2 THEN 'File'
            ELSE 'Unknown'
        END AS ObjectType,
        uf.OwnerId AS FileOwnerId,
        f.OwnerId AS FolderOwnerId
    FROM ActionRecent ar
    LEFT JOIN UserFile uf ON ar.ObjectId = uf.FileId AND ar.ObjectTypeId = 2
    LEFT JOIN Folder f ON ar.ObjectId = f.FolderId AND ar.ObjectTypeId = 1
    WHERE (uf.OwnerId = 11 OR f.OwnerId = 11)
)
SELECT 
    ro.ObjectId,
    ro.ObjectTypeId,
    ro.ObjectType,
    CASE 
        WHEN ro.ObjectType = N'File' THEN uf.UserFileName
        WHEN ro.ObjectType = N'Folder' THEN f.FolderName
        ELSE NULL
    END AS ObjectName,
	ro.ActionLog,
    ro.ActionDateTime
FROM RecentObjects ro
LEFT JOIN UserFile uf ON ro.ObjectId = uf.FileId AND ro.ObjectTypeId = 2
LEFT JOIN Folder f ON ro.ObjectId = f.FolderId AND ro.ObjectTypeId = 1
WHERE ro.FileOwnerId =11 OR ro.FolderOwnerId = 11
ORDER BY ro.ActionDateTime DESC;

-- screen 5: started 
-- screen 6: trash
-- screen 7: product
-- screen 8: search
-- screen 9: folder detail