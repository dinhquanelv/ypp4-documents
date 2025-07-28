USE MSListsV12;
GO

-- screen 1: dashboard & account
-- case 1: favorites list from user
SELECT l.Icon, l.Color, w.WorkspaceName, l.ListName
FROM List l
JOIN FavoriteList fl ON fl.Id = l.Id
JOIN Account a ON a.Id = fl.ListId
JOIN Workspace w ON w.Id = l.WorkspaceId
WHERE a.Id = 2

-- case 2: find recents list from user
SELECT l.ListName, l.Icon, w.WorkspaceName, l.CreateAt
FROM List l
JOIN Account a ON a.Id = l.CreatedBy
JOIN Workspace w ON w.Id = l.WorkspaceId
WHERE a.Id = 2

-- case 3: find all list from user
SELECT l.ListName, l.Icon, w.WorkspaceName
FROM List l
JOIN Account a ON a.Id = l.CreatedBy
JOIN Workspace w ON w.Id = l.WorkspaceId
WHERE a.Id = 2

-- case 4: find Account by Id
SELECT a.FirstName, a.LastName, a.Email, a.Avatar, a.Company 
FROM Account a WHERE a.Id = 1

-- screen 2: create list screen (when user choose create new)
-- case 1: show list type
SELECT lt.Icon, lt.Title, lt.ListTypeDescription
FROM ListType lt

-- case 2: show template from Microsoft
SELECT lt.HeaderImage, lt.Title, lt.TemplateDescription
FROM ListTemplate lt
JOIN TemplateProvider tp ON tp.Id = lt.TemplateProviderId
WHERE tp.ProviderName = 'Microsoft'

-- case 3: show template from your organization
SELECT lt.HeaderImage, lt.Title, lt.TemplateDescription
FROM ListTemplate lt
JOIN TemplateProvider tp ON tp.Id = lt.TemplateProviderId
WHERE tp.ProviderName = 'Company'

-- screen 3: create list screen (when user choose List type)
-- case 1: show info List type
SELECT Title, ListTypeDescription, HeaderImage
FROM ListType 
WHERE Title = 'List'

-- case 2: show all workspace by account id
SELECT w.WorkspaceName, w.Icon
FROM Workspace w
JOIN WorkspaceMember wb ON wb.WorkspaceId = w.Id
JOIN Account a ON a.Id = wb.AccountId
WHERE a.Id = 1

-- screen 4: when user choose template
-- case 1: find list template by id
SELECT lt.Id, 
	lt.Icon, lt.Title, 
	lt.Sumary, lt.Feature
FROM ListTemplate lt
WHERE lt.Id = 478

-- case 2: find sample data for list template
SELECT tsr.Id, tsr.DisplayOrder, tc.ColumnName, tsc.CellValue
FROM ListTemplate lt
JOIN TemplateColumn tc ON tc.ListTemplateId = lt.Id
JOIN TemplateSampleRow tsr ON tsr.ListTemplateId = lt.Id
LEFT JOIN TemplateSampleCell tsc 
	ON tsc.TemplateSampleRowId = tsr.Id
	AND tsc.TemplateColumnId = tc.Id
WHERE lt.Id = 478

-- screen 5: list (after user create list)
-- case 1: show info list
SELECT l.Icon, l.Color, w.WorkspaceName, l.ListName,
	CASE
		WHEN fl.Id IS NOT NULL THEN 1
		ELSE 0
	END AS IsFavoriteList
FROM List l
JOIN Workspace w ON w.Id = l.WorkspaceId
LEFT JOIN FavoriteList fl ON fl.ListId = l.Id AND fl.AccountId = 83
WHERE l.Id = 1

-- case 2: show list column is visible
SELECT sdt.Icon, ldc.ColumnName, sdt.DataTypeValue
FROM ListDynamicColumn ldc
JOIN List l ON l.Id = ldc.ListId
JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
WHERE l.Id = 33 AND ldc.IsVisible = 1

-- case 3: show list data
SELECT lr.Id,
ldc.ColumnName, lr.DisplayOrder, lcv.CellValue
FROM List l
JOIN ListDynamicColumn ldc ON ldc.ListId = l.Id
JOIN ListRow lr ON lr.ListId = l.Id
LEFT JOIN ListCellValue lcv 
	ON lcv.ListRowId = lr.Id
	AND lcv.ListDynamicColumnId = ldc.Id
WHERE l.Id = 33
ORDER BY lr.DisplayOrder

-- case 4: show list view
SELECT lv.ViewName
FROM ListView lv
JOIN List l ON l.Id = lv.ListId
WHERE l.Id = 3

-- screen 6: add new item
-- case 1: show info column
SELECT sdt.Icon, ldc.ColumnName, sdt.DataTypeValue
FROM ListDynamicColumn ldc
JOIN List l ON l.Id = ldc.ListId
JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
WHERE l.Id = 3 AND ldc.IsVisible = 1

-- screen 6: List row detail
-- case 1: show row detail
SELECT lr.Id,
sdt.Icon, ldc.ColumnName, lcv.CellValue
FROM List l
JOIN ListDynamicColumn ldc ON ldc.ListId = l.Id
JOIN ListRow lr ON lr.ListId = l.Id
LEFT JOIN ListCellValue lcv 
	ON lcv.ListRowId = lr.Id
	AND lcv.ListDynamicColumnId = ldc.Id
JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
WHERE lr.Id = 702

-- case 2: show row file attachment
SELECT fa.NameFile, fa.FileUrl
FROM ListRow lr
JOIN FileAttachment fa ON fa.ListRowId = lr.Id
WHERE lr.Id = 702

-- case 3: show all comments by row
SELECT a.FirstName, a.LastName, a.Avatar, lrc.Content, lrc.CreateAt
FROM ListRowComment lrc
JOIN ListRow lr ON lr.Id = lrc.ListRowId
JOIN Account a ON a.Id = lrc.CreatedBy
WHERE lr.Id = 998
ORDER BY lrc.CreateAt DESC

-- screen 8: Custom column
-- case 1: find all column type
SELECT sdt.Icon, sdt.DisplayName, sdt.CoverImage, sdt.TypeDescription
FROM SystemDataType sdt

-- case 2: when user choose column type
SELECT sdt.DisplayName, sdt.DataTypeValue, ks.KeyName, ks.DisplayName, ks.ValueType
FROM DataTypeSettingKey dtsk
JOIN SystemDataType sdt ON sdt.Id = dtsk.SystemDataTypeId
JOIN KeySetting ks ON ks.Id = dtsk.KeySettingId
WHERE sdt.Id = 1

-- case 3: when user choose edit column
SELECT ldc.ColumnName, ldc.ColumnDescription, 
	sdt.DisplayName, sdt.DataTypeValue,
	ks.KeyName, ks.ValueType, ks.DisplayName
FROM ListDynamicColumn ldc
JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
JOIN DataTypeSettingKey dtsk ON dtsk.SystemDataTypeId = sdt.Id
LEFT JOIN ListColumnSettingValue lcsv 
	ON lcsv.ColumnId = ldc.Id AND lcsv.DataTypeSettingKeyId = dtsk.Id
JOIN KeySetting ks ON ks.Id = dtsk.KeySettingId
WHERE ldc.Id = 2

-- screen 9: create view for list
-- case 1: create view with calendar type
SELECT vt.Icon ,vt.TypeName, vs.DisplayName, vs.ValueType
FROM ViewTypeSetting vts
JOIN ViewType vt ON vt.Id = vts.ViewTypeId
JOIN ViewSetting vs ON vs.Id = vts.ViewSettingId
WHERE vt.TypeName = 'Calendar'

-- case 2: ref column have type DATE for Calendar View
SELECT ldc.ColumnName
FROM ListDynamicColumn ldc
JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
JOIN List l ON l.Id = ldc.ListId
WHERE sdt.DataTypeValue = 'DATE' AND l.Id = 299

-- case 3: ref title & subheading column for Calendar View
SELECT ldc.ColumnName
FROM ListDynamicColumn ldc
JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
JOIN List l ON l.Id = ldc.ListId
WHERE l.Id = 2

-- screen 10: share link
-- case 1: show curent list name
SELECT ListName
FROM List
WHERE Id = 14

-- case 2: show all scope
SELECT ScopeIcon, ScopeName, ScopeDescription, ScopeCode
FROM Scope 

-- case 3: show all permission
SELECT PermissionIcon, PermissionName, PermissionDescription, PermissionCode
FROM Permission 

-- screen 11: manage access
-- case 1: count people have permission
SELECT COUNT(*) AS People
FROM ListMemberPermission lmp
JOIN List l ON l.Id = lmp.ListId
JOIN Permission p ON p.Id = lmp.HighestPermissionId
JOIN Account a ON a.Id = lmp.AccountId
WHERE l.Id = 14

-- case 2: show info all user have permission in list
SELECT l.ListName, a.Avatar, a.FirstName, a.LastName, 
	a.Email, p.PermissionIcon, p.PermissionName
FROM ListMemberPermission lmp
JOIN List l ON l.Id = lmp.ListId
JOIN Permission p ON p.Id = lmp.HighestPermissionId
JOIN Account a ON a.Id = lmp.AccountId
WHERE l.Id = 14

-- screen 12: trash items
-- case 1: default
SELECT TOP 20 
	ti.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM TrashItem ti
JOIN Account creator ON creator.Id = ti.CreateBy 
JOIN Account deleter ON deleter.Id = ti.DeletedBy 

-- case 2: sort A-Z ObjectName
SELECT TOP 20 
	ti.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM TrashItem ti
JOIN Account creator ON creator.Id = ti.CreateBy 
JOIN Account deleter ON deleter.Id = ti.DeletedBy
ORDER BY ti.ObjectName ASC;

-- case 3: sort Z-A ObjectName
SELECT TOP 20 
	ti.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM TrashItem ti
JOIN Account creator ON creator.Id = ti.CreateBy 
JOIN Account deleter ON deleter.Id = ti.DeletedBy
ORDER BY ti.ObjectName DESC;

-- case 4: sort A-Z DeletedBy
SELECT TOP 20 
	ti.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM TrashItem ti
JOIN Account creator ON creator.Id = ti.CreateBy 
JOIN Account deleter ON deleter.Id = ti.DeletedBy
ORDER BY deleter.FirstName + ' ' + deleter.LastName ASC;

-- case 5: sort Z-A DeletedBy
SELECT TOP 20 
	ti.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM TrashItem ti
JOIN Account creator ON creator.Id = ti.CreateBy 
JOIN Account deleter ON deleter.Id = ti.DeletedBy
ORDER BY deleter.FirstName + ' ' + deleter.LastName DESC;

-- case 6: sort A-Z CreatedBy
SELECT TOP 20 
	ti.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM TrashItem ti
JOIN Account creator ON creator.Id = ti.CreateBy 
JOIN Account deleter ON deleter.Id = ti.DeletedBy
ORDER BY creator.FirstName + ' ' + creator.LastName ASC;

-- case 7: sort Z-A CreatedBy
SELECT TOP 20 
	ti.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM TrashItem ti
JOIN Account creator ON creator.Id = ti.CreateBy 
JOIN Account deleter ON deleter.Id = ti.DeletedBy
ORDER BY creator.FirstName + ' ' + creator.LastName DESC;

-- case 8: sort DeleteAt Oldest -> Newest
SELECT TOP 20 
	ti.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM TrashItem ti
JOIN Account creator ON creator.Id = ti.CreateBy 
JOIN Account deleter ON deleter.Id = ti.DeletedBy
ORDER BY ti.DeleteAt ASC;

-- case 9: sort DeleteAt Newest -> Oldest
SELECT TOP 20 
	ti.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM TrashItem ti
JOIN Account creator ON creator.Id = ti.CreateBy 
JOIN Account deleter ON deleter.Id = ti.DeletedBy
ORDER BY ti.DeleteAt DESC;
