USE MicrosoftLists;
GO
	
-- screen 1: dashboard & account
-- case 1: favorites list from user
DECLARE @AccountId INT = 1;

SELECT
	l.Id AS ListId,
	l.Icon,
	l.Color,
	w.WorkspaceName,
	l.ListName
FROM
	List l
	JOIN FavoriteList fl ON fl.Id = l.Id
	JOIN Account a ON a.Id = fl.FavoredBy
	JOIN Workspace w ON w.Id = l.WorkspaceId
WHERE
	a.Id = @AccountId
GO

-- case 2: find recents list
DECLARE @AccountId INT = 1;

SELECT
	l.Id AS ListId,
	l.Color,
	l.Icon,
	l.ListName,
	w.WorkspaceName,
	l.AccessedAt
FROM
	List l
	JOIN AccountList al ON al.ListId = l.Id
	JOIN Account a ON a.Id = al.AccountId
	JOIN Workspace w ON w.Id = l.WorkspaceId
WHERE
	a.Id = @AccountId
ORDER BY
	l.AccessedAt DESC
GO

-- case 3: find all list from user
DECLARE @AccountId INT = 1;

SELECT
	l.Id AS ListId,
	l.Color,
	l.Icon,
	l.ListName,
	w.WorkspaceName
FROM
	List l
	JOIN AccountList al ON al.ListId = l.Id
	JOIN Account a ON a.Id = al.AccountId
	JOIN Workspace w ON w.Id = l.WorkspaceId
WHERE
	a.Id = @AccountId
ORDER BY
	l.CreatedAt DESC
GO
	
-- case 4: find Account by Id
DECLARE @AccountId INT = 1;

SELECT
	a.LastName + ' ' + a.FirstName AS FullName,
	a.Email,
	a.Avatar,
	a.Company
FROM
	Account a
WHERE
	a.Id = @AccountId
GO

-- case 5: search list (apply paging for query)
DECLARE @Query NVARCHAR(100) = 't'
DECLARE @PageSize INT = 24;
DECLARE @PageNumber INT = 1;

SELECT 
	l.Id AS ListId,
	l.Icon,
	l.Color,
	l.ListName,
	w.WorkspaceName
FROM
	List l
	JOIN Workspace w ON w.Id = l.WorkspaceId
WHERE
	ListName LIKE '%' + @Query + '%'
ORDER BY
	ListName
OFFSET (@PageNumber - 1) * @PageSize ROWS
FETCH NEXT @PageSize ROWS ONLY;
GO

-- screen 2: create list screen (when user choose create new)
-- case 1: show list type
SELECT
	lt.Id AS ListTypeId,
	lt.Icon,
	lt.Title,
	lt.ListTypeDescription
FROM
	ListType lt
GO
	
-- case 2: show template from Microsoft
DECLARE @ProviderId INT = 1;

SELECT
	lt.Id AS ListTemplateId,
	lt.HeaderImage,
	lt.Title,
	lt.TemplateDescription
FROM
	ListTemplate lt
	JOIN TemplateProvider tp ON tp.Id = lt.TemplateProviderId
WHERE
	tp.Id = @ProviderId
GO
	
-- check cache for list template
SELECT  
    cp.usecounts,             -- Number of times the execution plan has been reused
    cp.cacheobjtype,          -- Type of cached object (e.g., Compiled Plan, Execution Context)
    cp.objtype,               -- Type of statement (Adhoc, Prepared, Proc, etc.)
    st.text AS QueryText      -- The actual SQL query text
FROM sys.dm_exec_cached_plans AS cp
CROSS APPLY sys.dm_exec_sql_text(cp.plan_handle) AS st
WHERE st.text LIKE '%ListTemplate%'  -- Filter queries related to the ListTemplate table
ORDER BY cp.usecounts DESC;          -- Sort by reuse count in descending order

-- case 3: show template from your organization
DECLARE @ProviderId INT = 2;

SELECT
	lt.Id AS ListTemplateId,
	lt.HeaderImage,
	lt.Title,
	lt.TemplateDescription
FROM
	ListTemplate lt
	JOIN TemplateProvider tp ON tp.Id = lt.TemplateProviderId
WHERE
	tp.Id = @ProviderId
GO
	
-- screen 3: create list screen (when user choose List type)
-- case 1: show info List type
DECLARE @ListTypeId INT = 1;

SELECT
	Id AS ListTypeId,
	Title,
	ListTypeDescription,
	HeaderImage
FROM
	ListType
WHERE
	Id = @ListTypeId
GO
	
-- case 2: show all workspace by account id
DECLARE @AccountId INT = 1;

SELECT
	w.Id AS WorkspaceId,
	w.WorkspaceName,
	w.Icon
FROM
	Workspace w
	JOIN AccountWorkspace wb ON wb.WorkspaceId = w.Id
	JOIN Account a ON a.Id = wb.AccountId
WHERE
	a.Id = @AccountId
GO
	
-- screen 4: when user choose template
-- case 1: find list template by id
DECLARE @ListTemplateId INT = 1;

SELECT
	lt.Id,
	lt.Icon,
	lt.Title,
	lt.Sumary,
	lt.Feature
FROM
	ListTemplate lt
WHERE
	lt.Id = @ListTemplateId
GO

-- case 2: get all data of list
DECLARE @ListTemplateId INT = 1;
DECLARE @cols NVARCHAR(MAX),
		@sql NVARCHAR(MAX);

-- 1. Get dynamic column list
SELECT
	@cols = STRING_AGG(QUOTENAME(tc.Id), ',')
FROM
	TemplateColumn tc
WHERE
	tc.ListTemplateId = @ListTemplateId;

-- 2. Build dynamic SQL with PIVOT
SET
	@sql = '
SELECT *
FROM (
    SELECT 
        tsr.Id AS TemplateSampleRowId,
        tc.Id AS TemplateColumnId,
        tscv.CellValue
    FROM TemplateSampleRow tsr
    CROSS JOIN TemplateColumn tc
    LEFT JOIN TemplateSampleCellValue tscv
        ON tscv.TemplateSampleRowId = tsr.Id
        AND tscv.TemplateColumnId = tc.Id
    WHERE tsr.ListTemplateId = ' + CAST(@ListTemplateId AS NVARCHAR) + '
        AND tc.ListTemplateId = ' + CAST(@ListTemplateId AS NVARCHAR) + '
) AS SourceTable
PIVOT (
    MAX(CellValue)
    FOR TemplateColumnId IN (' + @cols + ')
) AS PivotTable
ORDER BY TemplateSampleRowId;
';

-- 3. Execute dynamic SQL
EXEC sp_executesql @sql;
GO

-- case 3: show all column in list template
DECLARE @ListTemplateId INT = 1;

SELECT
	tc.Id AS TempalteColumn,
	sdt.Icon,
	tc.ColumnName
FROM
	TemplateColumn tc
	JOIN SystemDataType sdt ON sdt.Id = tc.SystemDataTypeId
WHERE
	tc.ListTemplateId = 1
ORDER BY
	tc.DisplayOrder
GO
	
-- case 4: show all view in list template
DECLARE @ListTemplateId INT = 1;

SELECT
	tv.Id AS TempalteViewId,
	vt.Icon,
	tv.ViewName
FROM
	TemplateView tv
	JOIN ViewType vt ON vt.Id = tv.ViewTypeId
WHERE
	tv.ListTemplateId = 1
ORDER BY
	tv.DisplayOrder
GO

-- screen 5: list (after user create list)
-- case 1: show info list
DECLARE @ListId INT = 1;
DECLARE @AccountId INT = 1;

SELECT
	l.Id AS ListId,
	l.Icon,
	l.Color,
	w.WorkspaceName,
	l.ListName,
	CASE
		WHEN fl.Id IS NOT NULL THEN 1
		ELSE 0
	END AS IsFavoriteList
FROM
	List l
	JOIN Account a ON a.Id = @AccountId
	JOIN Workspace w ON w.Id = l.WorkspaceId
	LEFT JOIN FavoriteList fl ON fl.ListId = l.Id
	AND fl.FavoredBy = @AccountId
WHERE
	l.Id = @ListId
GO
	
-- case 2: show list column is visible
DECLARE @ListId INT = 1;

SELECT
	ldc.Id AS ListColumnId,
	sdt.Icon,
	ldc.ColumnName,
	sdt.DataTypeValue
FROM
	ListDynamicColumn ldc
	JOIN List l ON l.Id = ldc.ListId
	JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
WHERE
	l.Id = @ListId
	AND ldc.IsVisible = 1
ORDER BY
	ldc.DisplayOrder
GO

-- case 3: show list data
DECLARE @ListId INT = 1;
DECLARE @cols NVARCHAR(MAX),
        @sql NVARCHAR(MAX);

-- 1. get dynamic column
SELECT
    @cols = STRING_AGG(QUOTENAME(ldc.Id), ',')
FROM
    ListDynamicColumn ldc
WHERE
    ldc.ListId = @ListId;

-- 2. build dynamic SQL with PIVOT
SET @sql = '
SELECT *
FROM (
    SELECT 
        lr.Id AS ListRowId,
        ldc.Id AS ListColumnId,
        lcv.CellValue
    FROM ListRow lr
    CROSS JOIN ListDynamicColumn ldc
    LEFT JOIN ListCellValue lcv
        ON lcv.ListRowId = lr.Id
        AND lcv.ListDynamicColumnId = ldc.Id
    WHERE lr.ListId = ' + CAST(@ListId AS NVARCHAR) + '
      AND ldc.ListId = ' + CAST(@ListId AS NVARCHAR) + '
) AS SourceTable
PIVOT (
    MAX(CellValue)
    FOR ListColumnId IN (' + @cols + ')
) AS PivotTable
ORDER BY ListRowId;
';

-- 3. execute dynamic SQL
EXEC sp_executesql @sql;
GO

-- case 4: show list view
DECLARE @ListId INT = 1;

SELECT
	lv.Id AS ListViewId,
	lv.ViewName
FROM
	ListView lv
	JOIN List l ON l.Id = lv.ListId
WHERE
	l.Id = @ListId
GO

-- screen 6: add new item
-- case 1: show info column
DECLARE @ListId INT = 1;

SELECT
	ldc.Id AS ListColumnId,
	sdt.Icon,
	ldc.ColumnName,
	sdt.DataTypeValue
FROM
	ListDynamicColumn ldc
	JOIN List l ON l.Id = ldc.ListId
	JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
WHERE
	l.Id = @ListId
	AND ldc.IsVisible = 1
GO
	
-- screen 7: List row detail
-- case 1: show row detail
DECLARE @ListRowId INT = 1;

SELECT
	lr.Id AS ListRowId,
	sdt.Icon,
	ldc.ColumnName,
	lcv.CellValue
FROM
	List l
	JOIN ListDynamicColumn ldc ON ldc.ListId = l.Id
	JOIN ListRow lr ON lr.ListId = l.Id
	LEFT JOIN ListCellValue lcv ON lcv.ListRowId = lr.Id
	AND lcv.ListDynamicColumnId = ldc.Id
	JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
WHERE
	lr.Id = @ListRowId
GO

-- case 2: show row file attachment
DECLARE @ListRowId INT = 1;

SELECT
	fa.Id AS FileAttachmentId,
	fa.NameFile,
	fa.FileUrl
FROM
	ListRow lr
	JOIN FileAttachment fa ON fa.ListRowId = lr.Id
WHERE
	lr.Id = @ListRowId
GO

-- case 3: show all comments by row
DECLARE @ListRowId INT = 1;

SELECT
	lrc.Id AS CommentId,
	a.FirstName,
	a.LastName,
	a.Avatar,
	lrc.Content,
	lrc.CreatedAt
FROM
	ListRowComment lrc
	JOIN ListRow lr ON lr.Id = lrc.ListRowId
	JOIN Account a ON a.Id = lrc.CreatedBy
WHERE
	lr.Id = @ListRowId
ORDER BY
	lrc.CreatedAt DESC
GO

-- screen 8: Custom column
-- case 1: find all column type
SELECT
	sdt.Id AS SystemDataTypeId,
	sdt.Icon,
	sdt.DisplayName,
	sdt.CoverImage,
	sdt.TypeDescription
FROM
	SystemDataType sdt
GO

-- case 2: when user choose column type
DECLARE @SystemDataTypeId INT = 1;

SELECT
	sdt.Id AS SystemDataTypeId,
	sdt.DisplayName,
	sdt.DataTypeValue,
	ks.KeyName,
	ks.DisplayName,
	ks.ValueType
FROM
	DataTypeSettingKey dtsk
	JOIN SystemDataType sdt ON sdt.Id = dtsk.SystemDataTypeId
	JOIN KeySetting ks ON ks.Id = dtsk.KeySettingId
WHERE
	sdt.Id = @SystemDataTypeId
GO

-- case 3: when user choose edit column (column value)
DECLARE @ListColumnId INT = 1;

SELECT
	ldc.Id AS ListColumnId,
	ldc.ColumnName,
	ldc.ColumnDescription,
	sdt.Id AS SystemDataTypeId,
	sdt.DisplayName,
	sdt.DataTypeValue
FROM
	ListDynamicColumn ldc
	JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
WHERE
	ldc.Id = @ListColumnId
GO

-- case 4: when user choose edit column (column setting)
DECLARE @ListColumnId INT = 1;

SELECT
	dtsk.Id AS DataTypeSettingKeyId,
	ks.KeyName,
	ks.DisplayName,
	ks.ValueType,
	lcsv.Id AS SettingValueId
FROM
	ListDynamicColumn ldc
	JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
	JOIN DataTypeSettingKey dtsk ON dtsk.SystemDataTypeId = sdt.Id
	JOIN KeySetting ks ON ks.Id = dtsk.KeySettingId
	LEFT JOIN ListColumnSettingValue lcsv ON lcsv.ColumnId = ldc.Id
	AND lcsv.DataTypeSettingKeyId = dtsk.Id
WHERE
	ldc.Id = @ListColumnId
GO

-- screen 9: create view for list
-- case 1: find all view types
SELECT 
	Id,
	TypeName,
	Icon
FROM
	ViewType
GO

-- case 2: create view with calendar type
SELECT
	vs.Id AS ViewSettingId,
	vs.DisplayName,
	vs.ValueType
FROM
	ViewTypeSetting vts
	JOIN ViewType vt ON vt.Id = vts.ViewTypeId
	JOIN ViewSetting vs ON vs.Id = vts.ViewSettingId
WHERE
	vt.TypeName = 'Calendar'
GO

-- case 3: ref column have type DATE for Calendar View
DECLARE @ListId INT = 1;

SELECT
	ldc.Id AS ListColumnId,
	ldc.ColumnName
FROM
	ListDynamicColumn ldc
	JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
	JOIN List l ON l.Id = ldc.ListId
WHERE
	sdt.DataTypeValue = 'DATE'
	AND l.Id = @ListId
GO

-- case 4: ref title & subheading column for Calendar View
DECLARE @ListId INT = 1;

SELECT
	ldc.Id AS ListColumnId,
	ldc.ColumnName
FROM
	ListDynamicColumn ldc
	JOIN SystemDataType sdt ON sdt.Id = ldc.SystemDataTypeId
	JOIN List l ON l.Id = ldc.ListId
WHERE
	l.Id = @ListId
GO

-- screen 10: share link
-- case 1: show curent list name
DECLARE @ListId INT = 1;

SELECT
	Id AS ListId,
	ListName
FROM
	List
WHERE
	Id = @ListId
GO

-- case 2: show all scope
SELECT
	Id AS ScopeId,
	ScopeIcon,
	ScopeName,
	ScopeDescription,
	ScopeCode
FROM
	Scope
GO

-- case 3: show all permission
SELECT
	Id AS PermissionId,
	PermissionIcon,
	PermissionName,
	PermissionDescription,
	PermissionCode
FROM
	Permission
GO

-- case 4: show option if user choose scope 'PUBLIC'
DECLARE @ScopeCode NVARCHAR(50) = 'PUBLIC';

SELECT
	s.Id AS ScopeId,
	s.ScopeIcon,
	s.ScopeName,
	s.ScopeDescription
FROM
	ShareLinkOption slo
	JOIN Scope s ON s.Id = slo.ScopeId
WHERE
	s.ScopeCode = @ScopeCode
GO

-- case 5: show option if user choose scope 'SPECIFIC'
DECLARE @ScopeCode NVARCHAR(50) = 'SPECIFIC';

SELECT
	s.Id AS ScopeId,
	s.ScopeIcon,
	s.ScopeName,
	s.ScopeDescription
FROM
	ShareLinkOption slo
	JOIN Scope s ON s.Id = slo.ScopeId
WHERE
	s.ScopeCode = @ScopeCode
GO

-- screen 11: manage access
-- case 1: count people have permission
DECLARE @ListId INT = 14;

SELECT
	COUNT(*) AS People
FROM
	ListMemberPermission lmp
	JOIN List l ON l.Id = lmp.ListId
	JOIN Permission p ON p.Id = lmp.HighestPermissionId
	JOIN Account a ON a.Id = lmp.AccountId
WHERE
	l.Id = @ListId
GO

-- case 2: show info all user have permission in list
DECLARE @ListId INT = 1;

SELECT
	l.Id AS ListId,
	l.ListName,
	a.Id AS AccountId,
	a.Avatar,
	a.FirstName,
	a.LastName,
	a.Email,
	p.Id AS PermissionId,
	p.PermissionIcon,
	p.PermissionName
FROM
	ListMemberPermission lmp
	JOIN List l ON l.Id = lmp.ListId
	JOIN Permission p ON p.Id = lmp.HighestPermissionId
	JOIN Account a ON a.Id = lmp.AccountId
WHERE
	l.Id = @ListId
GO

-- screen 12: trash items
-- case 1: default
SELECT
	ti.Id AS TrashItemId,
	ot.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS ItemPath
FROM
	TrashItem ti
	JOIN Account creator ON creator.Id = ti.CreateBy
	JOIN Account deleter ON deleter.Id = ti.DeletedBy
	JOIN ObjectType ot ON ot.Id = ti.ObjectTypeId
GO

-- case 2: sort A-Z ObjectName
SELECT
	ti.Id AS TrashItemId,
	ot.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM
	TrashItem ti
	JOIN Account creator ON creator.Id = ti.CreateBy
	JOIN Account deleter ON deleter.Id = ti.DeletedBy
	JOIN ObjectType ot ON ot.Id = ti.ObjectTypeId
ORDER BY
	ot.ObjectName ASC
GO

-- case 3: sort Z-A ObjectName
SELECT
	ti.Id AS TrashItemId,
	ot.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM
	TrashItem ti
	JOIN Account creator ON creator.Id = ti.CreateBy
	JOIN Account deleter ON deleter.Id = ti.DeletedBy
	JOIN ObjectType ot ON ot.Id = ti.ObjectTypeId
ORDER BY
	ot.ObjectName DESC
GO

-- case 4: sort A-Z DeletedBy
SELECT
	ti.Id AS TrashItemId,
	ot.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM
	TrashItem ti
	JOIN Account creator ON creator.Id = ti.CreateBy
	JOIN Account deleter ON deleter.Id = ti.DeletedBy
	JOIN ObjectType ot ON ot.Id = ti.ObjectTypeId
ORDER BY
	deleter.FirstName + ' ' + deleter.LastName ASC
GO

-- case 5: sort Z-A DeletedBy
SELECT
	ti.Id AS TrashItemId,
	ot.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM
	TrashItem ti
	JOIN Account creator ON creator.Id = ti.CreateBy
	JOIN Account deleter ON deleter.Id = ti.DeletedBy
	JOIN ObjectType ot ON ot.Id = ti.ObjectTypeId
ORDER BY
	deleter.FirstName + ' ' + deleter.LastName DESC
GO

-- case 6: sort A-Z CreatedBy
SELECT
	ti.Id AS TrashItemId,
	ot.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM
	TrashItem ti
	JOIN Account creator ON creator.Id = ti.CreateBy
	JOIN Account deleter ON deleter.Id = ti.DeletedBy
	JOIN ObjectType ot ON ot.Id = ti.ObjectTypeId
ORDER BY
	creator.FirstName + ' ' + creator.LastName ASC
GO

-- case 7: sort Z-A CreatedBy
SELECT
	ti.Id AS TrashItemId,
	ot.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM
	TrashItem ti
	JOIN Account creator ON creator.Id = ti.CreateBy
	JOIN Account deleter ON deleter.Id = ti.DeletedBy
	JOIN ObjectType ot ON ot.Id = ti.ObjectTypeId
ORDER BY
	creator.FirstName + ' ' + creator.LastName DESC
GO

-- case 8: sort DeleteAt Oldest -> Newest
SELECT
	ti.Id AS TrashItemId,
	ot.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM
	TrashItem ti
	JOIN Account creator ON creator.Id = ti.CreateBy
	JOIN Account deleter ON deleter.Id = ti.DeletedBy
	JOIN ObjectType ot ON ot.Id = ti.ObjectTypeId
ORDER BY
	ti.DeleteAt ASC
GO

-- case 9: sort DeleteAt Newest -> Oldest
SELECT
	ti.Id AS TrashItemId,
	ot.ObjectName,
	FORMAT(ti.DeleteAt, 'M/d/yyyy h:mm tt') AS DateDeleted,
	deleter.FirstName + ' ' + deleter.LastName AS DeletedBy,
	creator.FirstName + ' ' + creator.LastName AS CreatedBy,
	ti.PathItem AS OriginalLocation
FROM
	TrashItem ti
	JOIN Account creator ON creator.Id = ti.CreateBy
	JOIN Account deleter ON deleter.Id = ti.DeletedBy
	JOIN ObjectType ot ON ot.Id = ti.ObjectTypeId
ORDER BY
	ti.DeleteAt DESC
GO

