USE MSListsV12;
GO

-- Temporary tables for reusable data
DECLARE @FirstNames TABLE (Name NVARCHAR(50));
DECLARE @LastNames TABLE (Name NVARCHAR(50));
DECLARE @WorkspaceNames TABLE (Name NVARCHAR(255));
DECLARE @ListNames TABLE (Name NVARCHAR(255));
DECLARE @ColumnNames TABLE (Name NVARCHAR(255));
DECLARE @ViewNames TABLE (Name NVARCHAR(255));
DECLARE @ChoiceNames TABLE (Name NVARCHAR(255));
DECLARE @Colors TABLE (Color NVARCHAR(20));
DECLARE @Companies TABLE (Name NVARCHAR(255));
DECLARE @Statuses TABLE (Status NVARCHAR(50));

INSERT INTO @FirstNames (Name) VALUES
('John'), ('Jane'), ('Michael'), ('Emily'), ('David'), ('Sarah'), ('James'), ('Emma'), ('Robert'), ('Lisa');
INSERT INTO @LastNames (Name) VALUES
('Smith'), ('Johnson'), ('Williams'), ('Brown'), ('Jones'), ('Garcia'), ('Miller'), ('Davis'), ('Rodriguez'), ('Martinez');
INSERT INTO @WorkspaceNames (Name) VALUES
('Team Project'), ('Development'), ('Marketing'), ('Personal'), ('Research');
INSERT INTO @ListNames (Name) VALUES
('Tasks'), ('Projects'), ('Inventory'), ('Events'), ('Issues');
INSERT INTO @ColumnNames (Name) VALUES
('Title'), ('Status'), ('Due Date'), ('Priority'), ('Assigned To');
INSERT INTO @ViewNames (Name) VALUES
('All Items'), ('My Tasks'), ('Overdue'), ('Kanban'), ('Calendar');
INSERT INTO @ChoiceNames (Name) VALUES
('Not Started'), ('In Progress'), ('Completed'), ('Blocked'), ('High'), ('Medium'), ('Low'), ('Critical');
INSERT INTO @Colors (Color) VALUES
('#28A745'), ('#0078D4'), ('#D83B01'), ('#FFB900'), ('#6F42C1'), ('#17A2B8'), ('#6C757D'), ('#FD7E14');
INSERT INTO @Companies (Name) VALUES
('Acme Corp'), ('Tech Solutions'), ('Global Enterprises'), ('Innovate Inc'), ('Future Systems');
INSERT INTO @Statuses (Status) VALUES
('Active'), ('Inactive'), ('Pending'), ('Suspended');

-- Insert into Account (1000 rows)
DECLARE @Counter INT = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @FirstName_Acc NVARCHAR(50);
    DECLARE @LastName_Acc NVARCHAR(50);
    DECLARE @Email_Acc NVARCHAR(100) = 'user' + CAST(@Counter AS NVARCHAR(10)) + '@example.com';
    DECLARE @Password_Acc NVARCHAR(50) = 'hashed_password_' + CAST(@Counter AS NVARCHAR(10));
    DECLARE @Avatar_Acc NVARCHAR(255) = CASE WHEN @Counter % 2 = 0 THEN 'http://example.com/avatars/user' + CAST(@Counter AS NVARCHAR(10)) + '.png' ELSE NULL END;
    DECLARE @Company_Acc NVARCHAR(255);
    DECLARE @AccountStatus_Acc NVARCHAR(50);
    SELECT TOP 1 @FirstName_Acc = Name FROM @FirstNames ORDER BY NEWID();
    SELECT TOP 1 @LastName_Acc = Name FROM @LastNames ORDER BY NEWID();
    SELECT @Company_Acc = CASE WHEN @Counter % 10 < 7 THEN (SELECT TOP 1 Name FROM @Companies ORDER BY NEWID()) ELSE NULL END;
    SELECT TOP 1 @AccountStatus_Acc = Status FROM @Statuses ORDER BY NEWID();
    INSERT INTO Account (FirstName, LastName, Email, AccountPassword, Avatar, Company, AccountStatus)
    VALUES (@FirstName_Acc, @LastName_Acc, @Email_Acc, @Password_Acc, @Avatar_Acc, @Company_Acc, @AccountStatus_Acc);
    SET @Counter = @Counter + 1;
END;

-- Insert into Workspace (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @WorkspaceName_WS NVARCHAR(255);
    SELECT TOP 1 @WorkspaceName_WS = Name + ' ' + CAST(@Counter AS NVARCHAR(10)) FROM @WorkspaceNames ORDER BY NEWID();
    INSERT INTO Workspace (WorkspaceName)
    VALUES (@WorkspaceName_WS);
    SET @Counter = @Counter + 1;
END;

-- Insert into TemplateProvider (1000 rows)
INSERT INTO TemplateProvider (ProviderName)
VALUES ('Microsoft'), ('Company');

-- Insert into ListTemplate (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @TemplateProviderId_LT INT = (SELECT TOP 1 Id FROM TemplateProvider ORDER BY NEWID());
    DECLARE @Title_LT NVARCHAR(255) = 'Template ' + CAST(@Counter AS NVARCHAR(10));
    DECLARE @HeaderImage_LT NVARCHAR(255) = 'http://example.com/images/template' + CAST(@Counter AS NVARCHAR(10)) + '.png';
    DECLARE @TemplateDescription_LT NVARCHAR(255) = 'Description for template ' + CAST(@Counter AS NVARCHAR(10));
    DECLARE @Icon_LT NVARCHAR(255) = 'icon' + CAST(@Counter AS NVARCHAR(10));
    DECLARE @Color_LT NVARCHAR(255);
    DECLARE @Sumary_LT NVARCHAR(255) = 'Summary ' + CAST(@Counter AS NVARCHAR(10));
    DECLARE @Feature_LT NVARCHAR(255) = 'Feature ' + CAST(@Counter AS NVARCHAR(10));
    SELECT TOP 1 @Color_LT = Color FROM @Colors ORDER BY NEWID();
    INSERT INTO ListTemplate (Title, HeaderImage, TemplateDescription, Icon, Color, Sumary, Feature, TemplateProviderId)
    VALUES (@Title_LT, @HeaderImage_LT, @TemplateDescription_LT, @Icon_LT, @Color_LT, @Sumary_LT, @Feature_LT, @TemplateProviderId_LT);
    SET @Counter = @Counter + 1;
END;

-- Insert into ViewType
INSERT INTO ViewType (TypeName ,DisplayName, HeaderImage, Icon)
VALUES
('Grid', 'Grid View', 'http://example.com/images/grid.png', 'grid_icon'),
('Gallery', 'Gallery View', 'http://example.com/images/gallery.png', 'gallery_icon'),
('Calendar', 'Calendar View', 'http://example.com/images/calendar.png', 'calendar_icon'),
('Board', 'Kanban Board', 'http://example.com/images/board.png', 'board_icon');

-- Insert into ViewSetting
INSERT INTO ViewSetting (SettingKey, DisplayName, ValueType)
VALUES
('IsPublic', 'Visibility', 'STRING'),
('StartDate', 'Start Date', 'INTEGER'),
('EndDate', 'End Date', 'INTEGER'),
('Title', 'Title', 'INTEGER'),
('Subheading', 'Subheading', 'INTEGER'),
('OrganizeBoardBy', 'Organize board by', 'INTEGER');

-- Insert into ViewTypeSetting
INSERT INTO ViewTypeSetting (ViewTypeId, ViewSettingId) 
VALUES
(1, 1),
(2, 1),(2, 2),(2, 3),(2, 4),(2, 5),
(3, 1),
(4, 1),(4, 6);

-- Insert into TemplateView (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListTemplateId_TV INT = (SELECT TOP 1 Id FROM ListTemplate ORDER BY NEWID());
    DECLARE @ViewTypeId_TV INT = (SELECT TOP 1 Id FROM ViewType ORDER BY NEWID());
    DECLARE @ViewName_TV NVARCHAR(255);
    SELECT TOP 1 @ViewName_TV = Name + ' ' + CAST(@Counter AS NVARCHAR(10)) FROM @ViewNames ORDER BY NEWID();
    INSERT INTO TemplateView (ViewName, ListTemplateId, ViewTypeId, DisplayOrder)
    VALUES (@ViewName_TV, @ListTemplateId_TV, @ViewTypeId_TV, @Counter % 10 + 1);
    SET @Counter = @Counter + 1;
END;

-- Insert into SystemDataType
INSERT INTO SystemDataType (Icon, TypeDescription, CoverImage, DisplayName, DataTypeValue)
VALUES
('text_icon', 'Plain text input field', 'http://example.com/images/text.png', 'Text', 'TEXT'),
('choice_icon', 'Single or multiple choice selector', 'http://example.com/images/choice.png', 'Choice', 'CHOICE'),
('number_icon', 'Numeric input field', 'http://example.com/images/number.png', 'Number', 'NUMBER'),
('date_icon', 'Date picker for calendar input', 'http://example.com/images/date.png', 'Date', 'DATE'),
('person_icon', 'Person or user selector', 'http://example.com/images/person.png', 'Person', 'PERSON');

-- Insert into TemplateColumn (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListTemplateId_TC INT = (SELECT TOP 1 Id FROM ListTemplate ORDER BY NEWID());
    DECLARE @SystemDataTypeId_TC INT = (SELECT TOP 1 Id FROM SystemDataType ORDER BY NEWID());
    DECLARE @ColumnName_TC NVARCHAR(255);
    SELECT TOP 1 @ColumnName_TC = Name + ' ' + CAST(@Counter AS NVARCHAR(10)) FROM @ColumnNames ORDER BY NEWID();
    INSERT INTO TemplateColumn (ColumnName, ColumnDescription, DisplayOrder, IsVisible, SystemDataTypeId, ListTemplateId)
    VALUES (@ColumnName_TC, 'Description for ' + @ColumnName_TC, @Counter % 10 + 1, @Counter % 2, @SystemDataTypeId_TC, @ListTemplateId_TC);
    SET @Counter = @Counter + 1;
END;

-- Insert into TemplateSampleRow (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListTemplateId_TSR INT = (SELECT TOP 1 Id FROM ListTemplate ORDER BY NEWID());
    DECLARE @SampleRowName_TSR NVARCHAR(255) = 'Sample Row ' + CAST(@Counter AS NVARCHAR(10));
    INSERT INTO TemplateSampleRow (ListTemplateId, SampleRowName)
    VALUES (@ListTemplateId_TSR, @SampleRowName_TSR);
    SET @Counter = @Counter + 1;
END;

-- Insert into TemplateSampleCell (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @TemplateSampleRowId_TSC INT = (SELECT TOP 1 Id FROM TemplateSampleRow ORDER BY NEWID());
    DECLARE @TemplateColumnId_TSC INT = (SELECT TOP 1 Id FROM TemplateColumn WHERE ListTemplateId = (SELECT ListTemplateId FROM TemplateSampleRow WHERE Id = @TemplateSampleRowId_TSC) ORDER BY NEWID());
    DECLARE @CellValue_TSC NVARCHAR(255) = 'Value ' + CAST(@Counter AS NVARCHAR(10));
    IF @TemplateColumnId_TSC IS NOT NULL
    BEGIN
        INSERT INTO TemplateSampleCell (TemplateColumnId, TemplateSampleRowId, CellValue)
        VALUES (@TemplateColumnId_TSC, @TemplateSampleRowId_TSC, @CellValue_TSC);
    END;
    SET @Counter = @Counter + 1;
END;

-- Insert into TemplateViewSetting (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @TemplateViewId_TVS INT = (SELECT TOP 1 Id FROM TemplateView ORDER BY NEWID());
    DECLARE @ViewTypeSettingId_TVS INT = (SELECT TOP 1 Id FROM ViewTypeSetting ORDER BY NEWID());
    DECLARE @GroupByColumnId_TVS INT = (SELECT TOP 1 Id FROM TemplateColumn WHERE ListTemplateId = (SELECT ListTemplateId FROM TemplateView WHERE Id = @TemplateViewId_TVS) ORDER BY NEWID());
    DECLARE @RawValue_TVS NVARCHAR(50) = 'Value' + CAST(@Counter AS NVARCHAR(10));
    IF @GroupByColumnId_TVS IS NOT NULL
    BEGIN
        INSERT INTO TemplateViewSetting (TemplateViewId, ViewTypeSettingId, GroupByColumnId, RawValue)
        VALUES (@TemplateViewId_TVS, @ViewTypeSettingId_TVS, @GroupByColumnId_TVS, @RawValue_TVS);
    END;
    SET @Counter = @Counter + 1;
END;

-- Insert into ListType 
INSERT INTO ListType (Title, Icon, HeaderImage, ListTypeDescription)
VALUES
('List', 'list_icon', 'http://example.com/images/list_header.png', 'Categorize items, track, assign and more.'),
('Form', 'form_icon', 'http://example.com/images/form_header.png', 'Collect structured data via form submissions.'),
('Gallery', 'gallery_icon', 'http://example.com/images/gallery_header.png', 'Visual display of items in card format.'),
('Calendar', 'calendar_icon', 'http://example.com/images/calendar_header.png', 'Manage and schedule time-based events.'),
('Board', 'board_icon', 'http://example.com/images/board_header.png', 'Organize items using Kanban-style workflow.');

-- Insert into List (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListName_L NVARCHAR(255);
    DECLARE @Icon_L NVARCHAR(255) = 'icon' + CAST(@Counter AS NVARCHAR(10));
    DECLARE @Color_L NVARCHAR(255);
    DECLARE @WorkspaceId_L INT = (SELECT TOP 1 Id FROM Workspace ORDER BY NEWID());
    DECLARE @TemplateId_L INT = (SELECT TOP 1 Id FROM ListTemplate ORDER BY NEWID());
    DECLARE @CreatedBy_L INT = (SELECT TOP 1 Id FROM Account ORDER BY NEWID());
    SELECT TOP 1 @ListName_L = Name + ' ' + CAST(@Counter AS NVARCHAR(10)) FROM @ListNames ORDER BY NEWID();
    SELECT TOP 1 @Color_L = Color FROM @Colors ORDER BY NEWID();
    INSERT INTO List (ListName, Icon, Color, WorkspaceId, TemplateId, CreatedBy)
    VALUES (@ListName_L, @Icon_L, @Color_L, @WorkspaceId_L, @TemplateId_L, @CreatedBy_L);
    SET @Counter = @Counter + 1;
END;

-- Insert into FavoriteList (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListId_FL INT = (SELECT TOP 1 Id FROM List ORDER BY NEWID());
    DECLARE @AccountId_FL INT = (SELECT TOP 1 Id FROM Account ORDER BY NEWID());
    INSERT INTO FavoriteList (ListId, AccountId)
    VALUES (@ListId_FL, @AccountId_FL);
    SET @Counter = @Counter + 1;
END;

-- Insert into ListView (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListId_LV INT = (SELECT TOP 1 Id FROM List ORDER BY NEWID());
    DECLARE @ViewName_LV NVARCHAR(255);
    DECLARE @ViewTypeId_LV INT = (SELECT TOP 1 Id FROM ViewType ORDER BY NEWID());
    DECLARE @CreatedBy_LV INT = (SELECT TOP 1 Id FROM Account ORDER BY NEWID());
    SELECT TOP 1 @ViewName_LV = Name + ' ' + CAST(@Counter AS NVARCHAR(10)) FROM @ViewNames ORDER BY NEWID();
    INSERT INTO ListView (ListId, ViewName, ViewTypeId, CreatedBy)
    VALUES (@ListId_LV, @ViewName_LV, @ViewTypeId_LV, @CreatedBy_LV);
    SET @Counter = @Counter + 1;
END;

-- Insert into KeySetting
INSERT INTO KeySetting (KeyName, ValueType, DisplayName, IsDefaultValue, ValueOfDefault)
VALUES
('Required', 'BOOLEAN', 'Is Required', 1, 'false'),
('MaxLength', 'INTEGER', 'Maximum Length', 0, 'false'),
('MinLength', 'INTEGER', 'Minimum Length', 0, 'false'),
('MinValue', 'INTEGER', 'Minimum Value', 0, 'false'),
('MaxValue', 'INTEGER', 'Maximum Value', 0, 'false'),
('DefaultValue', 'STRING', 'Default Value', 0, 'false'),
('AllowMultiple', 'BOOLEAN', 'Allow Multiple Selection', 1, 'false'),
('IsUnique', 'BOOLEAN', 'Must Be Unique', 1, 'false'),
('LookupSource', 'STRING', 'Lookup Source', 0, 'false'),
('Regex', 'STRING', 'Regex Validation Pattern', 0, 'false');

-- Insert into DataTypeSettingKey
INSERT INTO DataTypeSettingKey (SystemDataTypeId, KeySettingId)
VALUES
-- Text (1)
(1, 1), (1, 2), (1, 3), (1, 6), (1, 10), (1, 8),
-- Choice (2)
(2, 1), (2, 7), (2, 6), (2, 9),
-- Number (3)
(3, 1), (3, 4), (3, 5), (3, 6), (3, 8),
-- Date (4)
(4, 1), (4, 6), (4, 4), (4, 5),
-- Person (5)
(5, 1), (5, 7), (5, 6);

-- Insert into ListDynamicColumn (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListId_LDC INT = (SELECT TOP 1 Id FROM List ORDER BY NEWID());
    DECLARE @ColumnName_LDC NVARCHAR(255);
    DECLARE @SystemDataTypeId_LDC INT = (SELECT TOP 1 Id FROM SystemDataType ORDER BY NEWID());
    SELECT TOP 1 @ColumnName_LDC = Name + ' ' + CAST(@Counter AS NVARCHAR(10)) FROM @ColumnNames ORDER BY NEWID();
    INSERT INTO ListDynamicColumn (ListId, ColumnName, ColumnDescription, DisplayOrder, SystemDataTypeId, IsVisible, IsRequired)
    VALUES (@ListId_LDC, @ColumnName_LDC, 'Description for ' + @ColumnName_LDC, @Counter % 10 + 1, @SystemDataTypeId_LDC, @Counter % 2, @Counter % 2);
    SET @Counter = @Counter + 1;
END;

-- Insert into ListColumnSettingObject (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListDynamicColumnId_LCSO INT = (SELECT TOP 1 Id FROM ListDynamicColumn WHERE SystemDataTypeId IN (SELECT Id FROM SystemDataType WHERE DataTypeValue LIKE 'CHOICE%') ORDER BY NEWID());
    DECLARE @DisplayName_LCSO NVARCHAR(255);
    DECLARE @DisplayColor_LCSO NVARCHAR(20);
    SELECT TOP 1 @DisplayName_LCSO = Name + ' ' + CAST(@Counter AS NVARCHAR(10)) FROM @ChoiceNames ORDER BY NEWID();
    SELECT TOP 1 @DisplayColor_LCSO = Color FROM @Colors ORDER BY NEWID();
    IF @ListDynamicColumnId_LCSO IS NOT NULL
    BEGIN
        INSERT INTO ListColumnSettingObject (ListDynamicColumnId, DisplayName, DisplayColor, DisplayOrder)
        VALUES (@ListDynamicColumnId_LCSO, @DisplayName_LCSO, @DisplayColor_LCSO, @Counter % 10 + 1);
    END;
    SET @Counter = @Counter + 1;
END;

-- Insert into ListColumnSettingValue (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ColumnId_LCSV INT = (SELECT TOP 1 Id FROM ListDynamicColumn ORDER BY NEWID());
    DECLARE @DataTypeSettingKeyId_LCSV INT = (SELECT TOP 1 Id FROM DataTypeSettingKey ORDER BY NEWID());
    DECLARE @KeyValue_LCSV NVARCHAR(255) = CASE 
        WHEN (SELECT ValueType FROM KeySetting WHERE Id = (SELECT KeySettingId FROM DataTypeSettingKey WHERE Id = @DataTypeSettingKeyId_LCSV)) = 'INTEGER' THEN CAST((@Counter % 255 + 1) AS NVARCHAR(255))
        ELSE 'Value' + CAST(@Counter AS NVARCHAR(10))
    END;
    INSERT INTO ListColumnSettingValue (ColumnId, DataTypeSettingKeyId, KeyValue)
    VALUES (@ColumnId_LCSV, @DataTypeSettingKeyId_LCSV, @KeyValue_LCSV);
    SET @Counter = @Counter + 1;
END;

-- Insert into ListViewSetting (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListViewId_LVS INT = (SELECT TOP 1 Id FROM ListView ORDER BY NEWID());
    DECLARE @ViewTypeSettingId_LVS INT = (SELECT TOP 1 Id FROM ViewTypeSetting ORDER BY NEWID());
    DECLARE @GroupByColumnId_LVS INT = (SELECT TOP 1 Id FROM ListDynamicColumn WHERE ListId = (SELECT ListId FROM ListView WHERE Id = @ListViewId_LVS) ORDER BY NEWID());
    DECLARE @RawValue_LVS NVARCHAR(255) = 'Value' + CAST(@Counter AS NVARCHAR(10));
    IF @GroupByColumnId_LVS IS NOT NULL
    BEGIN
        INSERT INTO ListViewSetting (ListViewId, ViewTypeSettingId, GroupByColumnId, RawValue)
        VALUES (@ListViewId_LVS, @ViewTypeSettingId_LVS, @GroupByColumnId_LVS, @RawValue_LVS);
    END;
    SET @Counter = @Counter + 1;
END;

-- Insert into ListRow (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListId_LR INT = (SELECT TOP 1 Id FROM List ORDER BY NEWID());
    DECLARE @CreatedBy_LR INT = (SELECT TOP 1 Id FROM Account ORDER BY NEWID());
    INSERT INTO ListRow (ListId, DisplayOrder, CreatedBy)
    VALUES (@ListId_LR, @Counter % 100 + 1, @CreatedBy_LR);
    SET @Counter = @Counter + 1;
END;

-- Insert into ListCellValue (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListRowId_LCV INT = (SELECT TOP 1 Id FROM ListRow ORDER BY NEWID());
    DECLARE @ListDynamicColumnId_LCV INT = (SELECT TOP 1 Id FROM ListDynamicColumn WHERE ListId = (SELECT ListId FROM ListRow WHERE Id = @ListRowId_LCV) ORDER BY NEWID());
    DECLARE @CellValue_LCV NVARCHAR(255);
    DECLARE @ChoiceType_LCV NVARCHAR(100) = CASE 
        WHEN (SELECT SystemDataTypeId FROM ListDynamicColumn WHERE Id = @ListDynamicColumnId_LCV) IN (SELECT Id FROM SystemDataType WHERE DataTypeValue LIKE 'CHOICE%') THEN 'SINGLE'
        ELSE NULL
    END;
    SET @CellValue_LCV = CASE 
        WHEN @ChoiceType_LCV IS NOT NULL THEN (SELECT TOP 1 DisplayName FROM ListColumnSettingObject WHERE ListDynamicColumnId = @ListDynamicColumnId_LCV ORDER BY NEWID())
        WHEN (SELECT SystemDataTypeId FROM ListDynamicColumn WHERE Id = @ListDynamicColumnId_LCV) IN (SELECT Id FROM SystemDataType WHERE DataTypeValue LIKE 'DATE%') THEN '2025-08-' + RIGHT('0' + CAST(@Counter % 30 + 1 AS NVARCHAR(2)), 2)
        ELSE 'Value ' + CAST(@Counter AS NVARCHAR(10))
    END;
    IF @ListDynamicColumnId_LCV IS NOT NULL AND @CellValue_LCV IS NOT NULL
    BEGIN
        INSERT INTO ListCellValue (ListRowId, ListDynamicColumnId, CellValue, ChoiceType)
        VALUES (@ListRowId_LCV, @ListDynamicColumnId_LCV, @CellValue_LCV, @ChoiceType_LCV);
    END;
    SET @Counter = @Counter + 1;
END;

-- Insert into ListRowComment (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListRowId_LRC INT = (SELECT TOP 1 Id FROM ListRow ORDER BY NEWID());
    DECLARE @CreatedBy_LRC INT = (SELECT TOP 1 Id FROM Account ORDER BY NEWID());
    INSERT INTO ListRowComment (ListRowId, Content, CreatedBy)
    VALUES (@ListRowId_LRC, 'Comment ' + CAST(@Counter AS NVARCHAR(10)), @CreatedBy_LRC);
    SET @Counter = @Counter + 1;
END;

-- Insert into Permission (1000 rows)
SET @Counter = 1;
DECLARE @BasePermissions TABLE (PermissionName_Perm NVARCHAR(100), PermissionCode_Perm NVARCHAR(50));
INSERT INTO @BasePermissions VALUES
('Read', 'READ'), ('Contribute', 'CONTRIBUTE'), ('Edit', 'EDIT'), ('Full Control', 'FULL_CONTROL'), ('View Only', 'VIEW_ONLY');
WHILE @Counter <= 1000
BEGIN
    DECLARE @PermissionName_Perm NVARCHAR(100);
    DECLARE @PermissionCode_Perm NVARCHAR(50);
    SELECT TOP 1 @PermissionName_Perm = PermissionName_Perm + ' ' + CAST(@Counter AS NVARCHAR(10)),
                 @PermissionCode_Perm = PermissionCode_Perm + '_' + CAST(@Counter AS NVARCHAR(10))
    FROM @BasePermissions ORDER BY NEWID();
    INSERT INTO Permission (PermissionName, PermissionCode)
    VALUES (@PermissionName_Perm, @PermissionCode_Perm);
    SET @Counter = @Counter + 1;
END;

-- Insert into ListMemberPermission (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListId_LMP INT = (SELECT TOP 1 Id FROM List ORDER BY NEWID());
    DECLARE @AccountId_LMP INT = (SELECT TOP 1 Id FROM Account ORDER BY NEWID());
    DECLARE @HighestPermissionId_LMP INT = (SELECT TOP 1 Id FROM Permission ORDER BY NEWID());
    INSERT INTO ListMemberPermission (ListId, AccountId, HighestPermissionId)
    VALUES (@ListId_LMP, @AccountId_LMP, @HighestPermissionId_LMP);
    SET @Counter = @Counter + 1;
END;

-- Insert into Scope (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @Code_Scope NVARCHAR(50) = 'SCOPE_' + CAST(@Counter AS NVARCHAR(10));
    DECLARE @ScopeName_Scope NVARCHAR(100) = 'Scope ' + CAST(@Counter AS NVARCHAR(10));
    DECLARE @ScopeDescription_Scope NVARCHAR(255) = 'Description for scope ' + CAST(@Counter AS NVARCHAR(10));
    DECLARE @Icon_Scope NVARCHAR(255) = 'icon' + CAST(@Counter AS NVARCHAR(10));
    INSERT INTO Scope (Code, ScopeName, ScopeDescription, Icon)
    VALUES (@Code_Scope, @ScopeName_Scope, @ScopeDescription_Scope, @Icon_Scope);
    SET @Counter = @Counter + 1;
END;

-- Insert into ShareLink (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ScopeId_SL INT = (SELECT TOP 1 Id FROM Scope ORDER BY NEWID());
    DECLARE @PermissionId_SL INT = (SELECT TOP 1 Id FROM Permission ORDER BY NEWID());
    DECLARE @CreatedBy_SL INT = (SELECT TOP 1 Id FROM Account ORDER BY NEWID());
    DECLARE @TargetUrl_SL NVARCHAR(500) = 'http://example.com/share/link' + CAST(@Counter AS NVARCHAR(10));
    DECLARE @Note_SL NVARCHAR(500) = 'Note for link ' + CAST(@Counter AS NVARCHAR(10));
    DECLARE @ExpirationDate_SL DATETIME = DATEADD(DAY, @Counter % 365, GETDATE());
    DECLARE @LinkPassword_SL NVARCHAR(255) = CASE WHEN @Counter % 2 = 0 THEN 'pass' + CAST(@Counter AS NVARCHAR(10)) ELSE NULL END;
    INSERT INTO ShareLink (TargetUrl, IsPublic, ScopeId, PermissionId, Note, ExpirationDate, IsLoginRequired, LinkPassword, CreatedBy)
    VALUES (@TargetUrl_SL, @Counter % 2, @ScopeId_SL, @PermissionId_SL, @Note_SL, @ExpirationDate_SL, @Counter % 2, @LinkPassword_SL, @CreatedBy_SL);
    SET @Counter = @Counter + 1;
END;

-- Insert into ShareLinkUserAccess (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ShareLinkId_SLUA INT = (SELECT TOP 1 Id FROM ShareLink ORDER BY NEWID());
    DECLARE @AccountId_SLUA INT = (SELECT TOP 1 Id FROM Account ORDER BY NEWID());
    INSERT INTO ShareLinkUserAccess (ShareLinkId, AccountId)
    VALUES (@ShareLinkId_SLUA, @AccountId_SLUA);
    SET @Counter = @Counter + 1;
END;

-- Insert into FileAttachment (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ListRowId_FA INT = (SELECT TOP 1 Id FROM ListRow ORDER BY NEWID());
    DECLARE @NameFile_FA NVARCHAR(255) = 'Document' + CAST(@Counter AS NVARCHAR(10)) + '.pdf';
    DECLARE @FileUrl_FA NVARCHAR(255) = 'http://example.com/files/doc' + CAST(@Counter AS NVARCHAR(10)) + '.pdf';
    DECLARE @Size_FA NVARCHAR(100) = CAST((@Counter % 1000 + 1) AS NVARCHAR(100)) + ' KB';
    DECLARE @FileStatus_FA NVARCHAR(100) = CASE WHEN @Counter % 2 = 0 THEN 'Active' ELSE 'Pending' END;
    INSERT INTO FileAttachment (ListRowId, NameFile, FileUrl, Size, FileStatus, DeleteAt)
    VALUES (@ListRowId_FA, @NameFile_FA, @FileUrl_FA, @Size_FA, @FileStatus_FA, GETDATE());
    SET @Counter = @Counter + 1;
END;

-- Insert into TrashItem (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @ObjectId_TI INT = (SELECT TOP 1 Id FROM ListColumnSettingObject ORDER BY NEWID());
    DECLARE @CreateBy_TI INT = (SELECT TOP 1 Id FROM Account ORDER BY NEWID());
    DECLARE @DeletedBy_TI INT = (SELECT TOP 1 Id FROM Account ORDER BY NEWID());
    DECLARE @ObjectType_TI NVARCHAR(100) = 'Choice';
    DECLARE @ObjectName_TI NVARCHAR(100) = 'Deleted Item ' + CAST(@Counter AS NVARCHAR(10));
    DECLARE @ObjectStatus_TI NVARCHAR(100) = CASE WHEN @Counter % 2 = 0 THEN 'Deleted' ELSE 'Archived' END;
    DECLARE @PathItem_TI NVARCHAR(255) = '/trash/item' + CAST(@Counter AS NVARCHAR(10));
    IF @ObjectId_TI IS NOT NULL
    BEGIN
        INSERT INTO TrashItem (ObjectId, ObjectType, ObjectName, ObjectStatus, PathItem, CreateBy, DeletedBy, DeleteAt)
        VALUES (@ObjectId_TI, @ObjectType_TI, @ObjectName_TI, @ObjectStatus_TI, @PathItem_TI, @CreateBy_TI, @DeletedBy_TI, GETDATE());
    END;
    SET @Counter = @Counter + 1;
END;

-- Insert into WorkspaceMember (1000 rows)
SET @Counter = 1;
WHILE @Counter <= 1000
BEGIN
    DECLARE @AccountId_WM INT = (SELECT TOP 1 Id FROM Account ORDER BY NEWID());
    DECLARE @WorkspaceId_WM INT = (SELECT TOP 1 Id FROM Workspace ORDER BY NEWID());
    INSERT INTO WorkspaceMember (AccountId, WorkspaceId)
    VALUES (@AccountId_WM, @WorkspaceId_WM);
    SET @Counter = @Counter + 1;
END;
GO