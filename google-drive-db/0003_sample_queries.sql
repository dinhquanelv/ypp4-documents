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
GO

-- screen 5: started 
-- case 1: file stared
DECLARE @UserId INT = 794
SELECT
	f.FileId,
	f.UserFileName,
	a.USerName,
	a.UserId,
	ft.FileTypeName
FROM FavoriteObject fa
LEFT JOIN UserFile f ON fa.ObjectTypeId = 2 AND fa.ObjectId = f.FileId
LEFT JOIN Account a ON f.OwnerId = a.UserId 
JOIN FileType ft ON f.FileTypeId = ft.FileTypeId
WHERE fa.OwnerId = @UserId
GO

-- case 2: folder started
DECLARE @UserId INT = 794
SELECT
	f.FolderId,
	f.FolderName,
	a.USerName,
	a.UserId
FROM FavoriteObject fa
LEFT JOIN Folder f ON fa.ObjectTypeId = 1 AND fa.ObjectId = f.FolderId
LEFT JOIN Account a ON f.OwnerId = a.UserId
WHERE fa.OwnerId = @UserId
GO

-- screen 6: trash
DECLARE @UserId INT = 1;
SELECT
    t.TrashId,
    ot.ObjectTypeName,
    CASE 
        WHEN t.ObjectTypeId = 1 THEN fo.FolderName
        WHEN t.ObjectTypeId = 2 THEN uf.UserFileName
        ELSE NULL
    END AS ObjectName,
    CASE 
        WHEN t.ObjectTypeId = 1 THEN fo.FolderId
        WHEN t.ObjectTypeId = 2 THEN uf.FileId
        ELSE NULL
    END AS ObjectId,
    t.RemovedDatetime,
    t.IsPermanent
FROM Trash t
JOIN ObjectType ot ON t.ObjectTypeId = ot.ObjectTypeId
LEFT JOIN Folder fo ON t.ObjectTypeId = 1 AND t.ObjectId = fo.FolderId
LEFT JOIN UserFile uf ON t.ObjectTypeId = 2 AND t.ObjectId = uf.FileId
WHERE t.UserId = @UserId
ORDER BY t.RemovedDatetime DESC
GO

-- screen 8: Banned user
DECLARE @UserId int = 533
SELECT 
    bu.Id AS BanId,
    Banned.UserName AS BannedUserName,
    Banner.UserName AS BannedByUserName,
    bu.BannedAt
FROM BannedUser bu
JOIN Account Banned ON bu.UserId = Banned.UserId
JOIN Account Banner ON bu.BannedUserId = Banner.UserId
where bu.UserId = @UserId
ORDER BY bu.BannedAt DESC
GO

-- screen 9: folder structure
-- case 1: select folders by user id
DECLARE @UserId INT = 18
SELECT 
    f.FolderPath,
    c.ColorName
FROM Folder f
JOIN Account a ON f.OwnerId = a.UserId
JOIN Color c ON f.ColorId = c.ColorId
WHERE f.OwnerId = @UserId
GO

-- case 2: select all children by folder id
DECLARE @FolderId INT = 1;
WITH RecursiveFolders AS (
    SELECT FolderId, FolderName, ParentId, FolderPath
    FROM Folder
    WHERE FolderId = @FolderId
    UNION ALL
    SELECT f.FolderId, f.FolderName, f.ParentId, f.FolderPath
    FROM Folder f
    JOIN RecursiveFolders rf ON f.ParentId = rf.FolderId
    WHERE f.FolderPath LIKE rf.FolderPath + '/%'
)
SELECT 
    rf.FolderName,
    rf.ParentId,
    rf.FolderPath,
    fo.FolderName AS ParentFolderName
FROM RecursiveFolders rf
LEFT JOIN Folder fo ON rf.ParentId = fo.FolderId
WHERE rf.FolderId != 1
ORDER BY rf.FolderPath;
GO

-- case 3: select children by folder id
SELECT FolderId, FolderName, FolderPath
FROM Folder
WHERE ParentId = 1

-- screen 10: search
-- screen 11: product