USE MSListsV15;
GO

IF EXISTS (SELECT 1 FROM TrashItem) BEGIN DELETE FROM TrashItem; DBCC CHECKIDENT ('TrashItem', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ObjectType) BEGIN DELETE FROM ObjectType; DBCC CHECKIDENT ('ObjectType', RESEED, 0); END
IF EXISTS (SELECT 1 FROM FileAttachment) BEGIN DELETE FROM FileAttachment; DBCC CHECKIDENT ('FileAttachment', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ShareLinkUserAccess) BEGIN DELETE FROM ShareLinkUserAccess; DBCC CHECKIDENT ('ShareLinkUserAccess', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ShareLinkOptionValue) BEGIN DELETE FROM ShareLinkOptionValue; DBCC CHECKIDENT ('ShareLinkOptionValue', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ShareLinkOption) BEGIN DELETE FROM ShareLinkOption; DBCC CHECKIDENT ('ShareLinkOption', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ShareLink) BEGIN DELETE FROM ShareLink; DBCC CHECKIDENT ('ShareLink', RESEED, 0); END
IF EXISTS (SELECT 1 FROM Scope) BEGIN DELETE FROM Scope; DBCC CHECKIDENT ('Scope', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ListMemberPermission) BEGIN DELETE FROM ListMemberPermission; DBCC CHECKIDENT ('ListMemberPermission', RESEED, 0); END
IF EXISTS (SELECT 1 FROM Permission) BEGIN DELETE FROM Permission; DBCC CHECKIDENT ('Permission', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ListRowComment) BEGIN DELETE FROM ListRowComment; DBCC CHECKIDENT ('ListRowComment', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ListCellValue) BEGIN DELETE FROM ListCellValue; DBCC CHECKIDENT ('ListCellValue', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ListRow) BEGIN DELETE FROM ListRow; DBCC CHECKIDENT ('ListRow', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ListColumnSettingObject) BEGIN DELETE FROM ListColumnSettingObject; DBCC CHECKIDENT ('ListColumnSettingObject', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ListViewSetting) BEGIN DELETE FROM ListViewSetting; DBCC CHECKIDENT ('ListViewSetting', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ListColumnSettingValue) BEGIN DELETE FROM ListColumnSettingValue; DBCC CHECKIDENT ('ListColumnSettingValue', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ListDynamicColumn) BEGIN DELETE FROM ListDynamicColumn; DBCC CHECKIDENT ('ListDynamicColumn', RESEED, 0); END
IF EXISTS (SELECT 1 FROM SystemColumnSettingValue) BEGIN DELETE FROM SystemColumnSettingValue; DBCC CHECKIDENT ('SystemColumnSettingValue', RESEED, 0); END
IF EXISTS (SELECT 1 FROM SystemColumn) BEGIN DELETE FROM SystemColumn; DBCC CHECKIDENT ('SystemColumn', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ListView) BEGIN DELETE FROM ListView; DBCC CHECKIDENT ('ListView', RESEED, 0); END
IF EXISTS (SELECT 1 FROM AccountList) BEGIN DELETE FROM AccountList; DBCC CHECKIDENT ('AccountList', RESEED, 0); END
IF EXISTS (SELECT 1 FROM FavoriteList) BEGIN DELETE FROM FavoriteList; DBCC CHECKIDENT ('FavoriteList', RESEED, 0); END
IF EXISTS (SELECT 1 FROM List) BEGIN DELETE FROM List; DBCC CHECKIDENT ('List', RESEED, 0); END
IF EXISTS (SELECT 1 FROM TemplateSampleCellValue) BEGIN DELETE FROM TemplateSampleCellValue; DBCC CHECKIDENT ('TemplateSampleCellValue', RESEED, 0); END
IF EXISTS (SELECT 1 FROM TemplateSampleRow) BEGIN DELETE FROM TemplateSampleRow; DBCC CHECKIDENT ('TemplateSampleRow', RESEED, 0); END
IF EXISTS (SELECT 1 FROM TemplateViewSetting) BEGIN DELETE FROM TemplateViewSetting; DBCC CHECKIDENT ('TemplateViewSetting', RESEED, 0); END
IF EXISTS (SELECT 1 FROM TemplateColumn) BEGIN DELETE FROM TemplateColumn; DBCC CHECKIDENT ('TemplateColumn', RESEED, 0); END
IF EXISTS (SELECT 1 FROM DataTypeSettingKey) BEGIN DELETE FROM DataTypeSettingKey; DBCC CHECKIDENT ('DataTypeSettingKey', RESEED, 0); END
IF EXISTS (SELECT 1 FROM KeySetting) BEGIN DELETE FROM KeySetting; DBCC CHECKIDENT ('KeySetting', RESEED, 0); END
IF EXISTS (SELECT 1 FROM SystemDataType) BEGIN DELETE FROM SystemDataType; DBCC CHECKIDENT ('SystemDataType', RESEED, 0); END
IF EXISTS (SELECT 1 FROM TemplateView) BEGIN DELETE FROM TemplateView; DBCC CHECKIDENT ('TemplateView', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ViewTypeSetting) BEGIN DELETE FROM ViewTypeSetting; DBCC CHECKIDENT ('ViewTypeSetting', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ViewSetting) BEGIN DELETE FROM ViewSetting; DBCC CHECKIDENT ('ViewSetting', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ViewType) BEGIN DELETE FROM ViewType; DBCC CHECKIDENT ('ViewType', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ListTemplate) BEGIN DELETE FROM ListTemplate; DBCC CHECKIDENT ('ListTemplate', RESEED, 0); END
IF EXISTS (SELECT 1 FROM TemplateProvider) BEGIN DELETE FROM TemplateProvider; DBCC CHECKIDENT ('TemplateProvider', RESEED, 0); END
IF EXISTS (SELECT 1 FROM ListType) BEGIN DELETE FROM ListType; DBCC CHECKIDENT ('ListType', RESEED, 0); END
IF EXISTS (SELECT 1 FROM AccountWorkspace) BEGIN DELETE FROM AccountWorkspace; DBCC CHECKIDENT ('AccountWorkspace', RESEED, 0); END
IF EXISTS (SELECT 1 FROM Workspace) BEGIN DELETE FROM Workspace; DBCC CHECKIDENT ('Workspace', RESEED, 0); END
IF EXISTS (SELECT 1 FROM Account) BEGIN DELETE FROM Account; DBCC CHECKIDENT ('Account', RESEED, 0); END

-- Insert into Account (10 rows)
INSERT INTO Account (FirstName, LastName, Email, AccountPassword, Avatar, Company, AccountStatus)
VALUES 
('Alice', 'Nguyen', 'alice.nguyen@example.com', 'pass1234', 'https://example.com/avatar1.jpg', 'TechCorp', 'Active'),
('Bob', 'Tran', 'bob.tran@example.com', 'pass2345', 'https://example.com/avatar2.jpg', 'InnoSoft', 'Active'),
('Charlie', 'Le', 'charlie.le@example.com', 'pass3456', 'https://example.com/avatar3.jpg', 'VietDev', 'Inactive'),
('Daisy', 'Pham', 'daisy.pham@example.com', 'pass4567', 'https://example.com/avatar4.jpg', 'FPT', 'Active'),
('Evan', 'Vo', 'evan.vo@example.com', 'pass5678', 'https://example.com/avatar5.jpg', 'CMC', 'Suspended'),
('Fiona', 'Bui', 'fiona.bui@example.com', 'pass6789', 'https://example.com/avatar6.jpg', 'TMA', 'Active'),
('George', 'Dang', 'george.dang@example.com', 'pass7890', 'https://example.com/avatar7.jpg', 'AxonActive', 'Active'),
('Hannah', 'Ngo', 'hannah.ngo@example.com', 'pass8901', 'https://example.com/avatar8.jpg', 'NashTech', 'Inactive'),
('Ian', 'Hoang', 'ian.hoang@example.com', 'pass9012', 'https://example.com/avatar9.jpg', 'GlobalSoft', 'Active'),
('Jane', 'Truong', 'jane.truong@example.com', 'pass0123', 'https://example.com/avatar10.jpg', 'Toshiba', 'Suspended');

-- Insert into Workspace (15 rows)
INSERT INTO Workspace (WorkspaceName, Icon)
VALUES 
('My Lists', 'https://example.com/icon1.png'),
('My Lists', 'https://example.com/icon2.png'),
('My Lists', 'https://example.com/icon3.png'),
('My Lists', 'https://example.com/icon4.png'),
('My Lists', 'https://example.com/icon5.png'),
('My Lists', 'https://example.com/icon6.png'),
('My Lists', 'https://example.com/icon7.png'),
('My Lists', 'https://example.com/icon8.png'),
('My Lists', 'https://example.com/icon9.png'),
('My Lists', 'https://example.com/icon10.png'),
('Frontend Team', 'https://example.com/group1.png'),
('Backend Team', 'https://example.com/group2.png'),
('UI/UX Squad', 'https://example.com/group3.png'),
('Marketing Space', 'https://example.com/group4.png'),
('Data Analysts', 'https://example.com/group5.png');

-- Insert into AccountWorkspace (20 rows)
INSERT INTO AccountWorkspace (AccountId, WorkspaceId)
VALUES
(1, 1),    -- Alice -> My Lists
(2, 2),    -- Bob -> My Lists
(3, 3),    -- Charlie -> My Lists
(4, 4),    -- Daisy -> My Lists
(5, 5),    -- Evan -> My Lists
(6, 6),    -- Fiona -> My Lists
(7, 7),    -- George -> My Lists
(8, 8),    -- Hannah -> My Lists
(9, 9),    -- Ian -> My Lists
(10, 10),  -- Jane -> My Lists
(1, 11),   -- Alice in Frontend Team
(2, 11),   -- Bob in Frontend Team
(3, 12),   -- Charlie in Backend Team
(4, 12),   -- Daisy in Backend Team
(5, 13),   -- Evan in UI/UX Squad
(6, 13),   -- Fiona in UI/UX Squad
(7, 14),   -- George in Marketing Space
(8, 14),   -- Hannah in Marketing Space
(9, 15),   -- Ian in Data Analysts
(10, 15);  -- Jane in Data Analysts

-- Insert into ListType (5 rows)
INSERT INTO ListType (Title, Icon, HeaderImage, ListTypeDescription)
VALUES
('List', 'list_icon', 'http://example.com/images/list_header.png', 'Categorize items, track, assign and more.'),
('Form', 'form_icon', 'http://example.com/images/form_header.png', 'Collect structured data via form submissions.'),
('Gallery', 'gallery_icon', 'http://example.com/images/gallery_header.png', 'Visual display of items in card format.'),
('Calendar', 'calendar_icon', 'http://example.com/images/calendar_header.png', 'Manage and schedule time-based events.'),
('Board', 'board_icon', 'http://example.com/images/board_header.png', 'Organize items using Kanban-style workflow.');

-- Insert into TemplateProvider (2 rows)
INSERT INTO TemplateProvider (ProviderName)
VALUES ('Microsoft'), ('Company');

-- Insert into ListTemplate (20 rows)
INSERT INTO ListTemplate (Title, HeaderImage, TemplateDescription, Icon, Color, Sumary, Feature, ListTypeId, TemplateProviderId)
VALUES
('Issue tracker', 'https://example.com/issue-tracker.jpg', 'Track and resolve issues efficiently.', 'template-icon-1', '#FF5733', 'Bug tracking list', 'Status, Priority, Assignee', 1, 1),
('Employee onboarding', 'https://example.com/employee-onboarding.jpg', 'Help new employees onboard smoothly.', 'template-icon-2', '#33B5FF', 'Checklist for new hires', 'Steps, Owner, Deadline', 1, 1),
('Event itinerary', 'https://example.com/event-itinerary.jpg', 'Organize your event day by day.', 'template-icon-3', '#9C27B0', 'Event planning guide', 'Schedule, Location, Notes', 1, 1),
('Asset manager', 'https://example.com/asset-manager.jpg', 'Manage company assets in one place.', 'template-icon-4', '#4CAF50', 'Track assets', 'Asset name, Value, Assigned to', 1, 1),
('Recruitment tracker', 'https://example.com/recruitment-tracker.jpg', 'Track hiring pipeline.', 'template-icon-5', '#FFC107', 'Track job candidates', 'Stage, Resume, Interview', 1, 1),
('Travel requests', 'https://example.com/travel-requests.jpg', 'Manage employee travel requests.', 'template-icon-6', '#3F51B5', 'Flight & travel list', 'From, To, Status', 1, 1),
('Travel requests with approval', 'https://example.com/travel-approval.jpg', 'Include approval steps in travel.', 'template-icon-7', '#00BCD4', 'Approval workflow', 'Approver, Status, Notes', 1, 1),
('Work tracker', 'https://example.com/work-tracker.jpg', 'Track work items and projects.', 'template-icon-8', '#8BC34A', 'Project management', 'Task, Progress, Deadline', 1, 1),
('Content scheduler', 'https://example.com/content-scheduler.jpg', 'Plan and schedule content.', 'template-icon-9', '#FF9800', 'Plan content release', 'Platform, Date, Owner', 1, 1),
('Content scheduler with approval', 'https://example.com/content-scheduler-approval.jpg', 'Add approval flow to content.', 'template-icon-10', '#FF5722', 'Content approval process', 'Content, Reviewer, Status', 1, 1),
('Playlist', 'https://example.com/playlist.jpg', 'Create and manage playlists.', 'template-icon-11', '#2196F3', 'Music & video playlists', 'Title, Artist, Link', 1, 1),
('Gift ideas', 'https://example.com/gift-ideas.jpg', 'Keep track of gift ideas.', 'template-icon-12', '#E91E63', 'Track gifts by person', 'Occasion, Item, Budget', 1, 1),
('Expense tracker', 'https://example.com/expense-tracker.jpg', 'Track daily and monthly expenses.', 'template-icon-13', '#607D8B', 'Budget management', 'Amount, Category, Date', 1, 1),
('Recipe tracker', 'https://example.com/recipe-tracker.jpg', 'Store and organize recipes.', 'template-icon-14', '#CDDC39', 'Cookbook list', 'Ingredients, Steps, Notes', 1, 1),
('Reading list', 'https://example.com/reading-list.jpg', 'Track books you want to read.', 'template-icon-15', '#795548', 'Books to read', 'Title, Author, Status', 1, 1),
('Apartment hunting', 'https://example.com/apartment-hunting.jpg', 'Manage apartment search.', 'template-icon-16', '#9E9E9E', 'Rental options list', 'Location, Price, Contact', 1, 1),
('Job application tracker', 'https://example.com/job-apps.jpg', 'Track job applications.', 'template-icon-17', '#009688', 'Application history', 'Company, Role, Status', 1, 1),
('Product support metrics', 'https://example.com/product-support.jpg', 'Monitor product support KPIs.', 'template-icon-18', '#673AB7', 'Support performance', 'Tickets, Time, Satisfaction', 1, 1),
('Inventory management', 'https://example.com/inventory-mgmt.jpg', 'Track and manage inventory items.', 'template-icon-19', '#607D8B', 'Stock tracking system', 'Item, Quantity, Location', 1, 2),
('Project timeline', 'https://example.com/project-timeline.jpg', 'Visualize project milestones and deadlines.', 'template-icon-20', '#795548', 'Timeline planning', 'Milestone, Date, Owner', 1, 2);

-- Insert into ViewType (4 rows)
INSERT INTO ViewType (TypeName ,DisplayName, HeaderImage, Icon)
VALUES
('Grid', 'Grid View', 'http://example.com/images/grid.png', 'grid-icon'),
('Calendar', 'Calendar View', 'http://example.com/images/calendar.png', 'calendar-icon'),
('Gallery', 'Gallery View', 'http://example.com/images/gallery.png', 'gallery-icon'),
('Board', 'Kanban Board', 'http://example.com/images/board.png', 'board-icon');

-- Insert into ViewSetting (7 rows)
INSERT INTO ViewSetting (SettingKey, DisplayName, ValueType)
VALUES
('IsPublic', 'Visibility', 'Boolean'),
('StartDate', 'Start Date', 'Integer'),
('EndDate', 'End Date', 'Integer'),
('Title', 'Title', 'Integer'),
('Subheading', 'Subheading', 'Integer'),
('OrganizeBoardBy', 'Organize board by', 'Integer'),
('DefaultLayout', 'Default layout', 'String');

-- Insert into ViewTypeSetting (10 rows)
INSERT INTO ViewTypeSetting (ViewTypeId, ViewSettingId) 
VALUES
(1, 1),                          -- Grid → IsPublic
(2, 1), (2, 2), (2, 3),          -- Calendar → IsPublic, StartDate, EndDate
(2, 4), (2, 5), (2, 7),          -- Calendar → Title, Subheading, DefaultLayout
(3, 1),                          -- Gallery → IsPublic
(4, 1), (4, 6);                  -- Board → IsPublic, OrganizeBoardBy

-- Insert into TemplateView (69 rows)
INSERT INTO TemplateView (ViewName, ListTemplateId, ViewTypeId, DisplayOrder)
VALUES
-- Template 1
('Grid View', 1, 1, 1),
('Calendar View', 1, 2, 2),
('Gallery View', 1, 3, 3),
('Board View', 1, 4, 4),

-- Template 2
('Grid View', 2, 1, 1),
('Board View', 2, 4, 2),

-- Template 3
('Calendar View', 3, 2, 1),
('Gallery View', 3, 3, 2),
('Board View', 3, 4, 3),

-- Template 4
('Grid View', 4, 1, 1),
('Calendar View', 4, 2, 2),

-- Template 5
('Gallery View', 5, 3, 1),
('Board View', 5, 4, 2),

-- Template 6
('Grid View', 6, 1, 1),
('Calendar View', 6, 2, 2),
('Gallery View', 6, 3, 3),
('Board View', 6, 4, 4),

-- Template 7
('Grid View', 7, 1, 1),
('Calendar View', 7, 2, 2),
('Board View', 7, 4, 3),

-- Template 8
('Calendar View', 8, 2, 1),
('Gallery View', 8, 3, 2),

-- Template 9
('Grid View', 9, 1, 1),
('Gallery View', 9, 3, 2),
('Board View', 9, 4, 3),

-- Template 10
('Grid View', 10, 1, 1),
('Calendar View', 10, 2, 2),
('Gallery View', 10, 3, 3),
('Board View', 10, 4, 4),

-- Template 11
('Grid View', 11, 1, 1),
('Gallery View', 11, 3, 2),

-- Template 12
('Calendar View', 12, 2, 1),
('Board View', 12, 4, 2),

-- Template 13
('Grid View', 13, 1, 1),
('Calendar View', 13, 2, 2),
('Board View', 13, 4, 3),

-- Template 14
('Gallery View', 14, 3, 1),
('Board View', 14, 4, 2),

-- Template 15
('Grid View', 15, 1, 1),
('Calendar View', 15, 2, 2),
('Gallery View', 15, 3, 3),

-- Template 16
('Calendar View', 16, 2, 1),
('Gallery View', 16, 3, 2),
('Board View', 16, 4, 3),

-- Template 17
('Grid View', 17, 1, 1),
('Board View', 17, 4, 2),

-- Template 18
('Grid View', 18, 1, 1),
('Calendar View', 18, 2, 2),

-- Template 19
('Gallery View', 19, 3, 1),
('Board View', 19, 4, 2),
('Calendar View', 19, 2, 3),

-- Template 20
('Grid View', 20, 1, 1),
('Calendar View', 20, 2, 2),
('Gallery View', 20, 3, 3);

-- Insert into SystemDataType (13 rows)
INSERT INTO SystemDataType (DisplayName, DataTypeValue, Icon, TypeDescription, CoverImage)
VALUES
(N'Text', 'Text', 'systemdatatype-icon-1', 'Single line of text', 'cover-text.png'),
(N'Choice', 'Choice', 'systemdatatype-icon-2', 'Offer a set of choices', 'cover-choice.png'),
(N'Date and time', 'DateTime', 'systemdatatype-icon-3', 'Set a date or date and time', 'cover-datetime.png'),
(N'Multiple lines of text', 'MultilineText', 'systemdatatype-icon-4', 'Use multiple lines of text or rich formatting', 'cover-multiline.png'),
(N'Person', 'Person', 'systemdatatype-icon-5', 'Use names of people or groups from your organization', 'cover-person.png'),
(N'Number', 'Number', 'systemdatatype-icon-6', 'Set numeric values', 'cover-number.png'),
(N'Yes/No', 'Boolean', 'systemdatatype-icon-7', 'Set a choice between two values, like yes/no', 'cover-yesno.png'),
(N'Hyperlink', 'Hyperlink', 'systemdatatype-icon-8', 'Set a link to a web page, image, or other resources', 'cover-hyperlink.png'),
(N'Currency', 'Currency', 'systemdatatype-icon-9', 'Set monetary amounts in world currencies', 'cover-currency.png'),
(N'Location', 'Location', 'systemdatatype-icon-10', 'Use map locations or even a room in your building', 'cover-location.png'),
(N'Image', 'Image', 'systemdatatype-icon-11', 'Set an image for an item', 'cover-image.png'),
(N'Lookup', 'Lookup', 'systemdatatype-icon-12', 'Make a column from one list become the choices in another list column', 'cover-lookup.png'),
(N'Average Rating', 'Rating', 'systemdatatype-icon-13', 'Let multiple people rate an item and see the average rating', 'cover-rating.png');

-- Insert into KeySetting (12 rows)
INSERT INTO KeySetting (KeyName, ValueType, DisplayName)
VALUES 
-- Common settings
('required', 'boolean', 'Required'),
('defaultValue', 'string', 'Default Value'),
('minLength', 'number', 'Minimum Length'),
('maxLength', 'number', 'Maximum Length'),
('placeholder', 'string', 'Placeholder Text'),
-- Number-specific
('minValue', 'number', 'Minimum Value'),
('maxValue', 'number', 'Maximum Value'),
-- Choice-specific
('choices', 'json', 'Choice Options'),
('allowMultiple', 'boolean', 'Allow Multiple Selections'),
-- Date-specific
('dateFormat', 'string', 'Date Format'),
-- Lookup-specific
('lookupListId', 'number', 'Lookup List Id'),
('lookupFieldName', 'string', 'Lookup Field Name');

-- Inser into DataTypeSettingKey (18 rows)
INSERT INTO DataTypeSettingKey (SystemDataTypeId, KeySettingId)
VALUES 
-- Text
(1, 1),  -- required  
(1, 2),  -- defaultValue  
(1, 3),  -- minLength  
(1, 4),  -- maxLength  
(1, 5),  -- placeholder  
-- Number
(3, 1),  -- required  
(3, 2),  -- defaultValue  
(3, 6),  -- minValue  
(3, 7),  -- maxValue  
-- Choice
(4, 1),  -- required  
(4, 8),  -- choices  
(4, 9),  -- allowMultiple  
-- Date
(5, 1),  -- required  
(5, 2),  -- defaultValue  
(5, 10), -- dateFormat  
-- Lookup
(7, 1),  -- required  
(7, 11), -- lookupListId  
(7, 12); -- lookupFieldName  

-- Insert into TemplateColumn (10 rows)
INSERT INTO TemplateColumn (ColumnName, ColumnDescription, DisplayOrder, IsVisible, SystemDataTypeId, ListTemplateId)
VALUES
(N'Title', N'Task title or name', 1, 1, 1, 1),                       -- Text
(N'Description', N'Detailed description of the task', 2, 1, 1, 1),   -- Text
(N'Assignee', N'Person assigned to this task', 3, 1, 8, 1),          -- Person
(N'Status', N'Current status of the task', 4, 1, 4, 1),              -- Choice
(N'Priority', N'Task priority level', 5, 1, 4, 1),                   -- Choice
(N'DueDate', N'Deadline for the task', 6, 1, 5, 1),                  -- Date
(N'CreatedDate', N'When the task was created', 7, 1, 5, 1),          -- Date
(N'Completed', N'Whether the task is completed', 8, 1, 6, 1),        -- Yes/No
(N'Estimate', N'Estimated hours to complete', 9, 1, 3, 1),           -- Number
(N'AttachmentLink', N'File or URL related to the task', 10, 1, 9, 1); -- Hyperlink

-- Insert into TemplateViewSetting (10 rows)
INSERT INTO TemplateViewSetting (TemplateViewId, ViewTypeSettingId, GroupByColumnId, RawValue)
VALUES    
-- GRID VIEW (TemplateViewId = 1, ViewTypeId = 1)
(1, 1, NULL, 'true'),

-- CALENDAR VIEW (TemplateViewId = 2, ViewTypeId = 2)
(2, 2, NULL, 'true'),         -- IsPublic
(2, 3, 1, NULL),              -- StartDate → ColumnId = 1
(2, 4, 2, NULL),              -- EndDate → ColumnId = 2
(2, 5, 3, NULL),              -- Title → ColumnId = 3
(2, 6, 4, NULL),              -- Subheading → ColumnId = 4
(2, 7, NULL, 'month'),        -- DefaultLayout

-- GALLERY VIEW (TemplateViewId = 3, ViewTypeId = 3)
(3, 8, NULL, 'false'),        -- IsPublic

-- BOARD VIEW (TemplateViewId = 4, ViewTypeId = 4)
(4, 9, NULL, 'true'),         -- IsPublic
(4, 10, 5, NULL);             -- OrganizeBoardBy → ColumnId = 5

-- Insert into TemplateSampleRow (10 rows)
INSERT INTO TemplateSampleRow (ListTemplateId, DisplayOrder)
VALUES 
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10);

-- Insert into TemplateSampleCell (100 rows)
INSERT INTO TemplateSampleCellValue (TemplateColumnId, TemplateSampleRowId, CellValue)
VALUES
(1, 1, 'Task A'),
(2, 1, 'Low'),
(3, 1, 'Open'),
(4, 1, 'Alice'),
(5, 1, '2025-08-01'),
(6, 1, 'High'),
(7, 1, 'Feature'),
(8, 1, '2h'),
(9, 1, 'Yes'),
(10, 1, 'Note A'),

(1, 2, 'Task B'),
(2, 2, 'Medium'),
(3, 2, NULL),
(4, 2, 'Bob'),
(5, 2, '2025-08-03'),
(6, 2, 'Low'),
(7, 2, 'Bug'),
(8, 2, '3h'),
(9, 2, 'No'),
(10, 2, 'Note B'),

(1, 3, 'Task C'),
(2, 3, NULL),
(3, 3, 'Closed'),
(4, 3, 'Carol'),
(5, 3, '2025-08-05'),
(6, 3, 'Medium'),
(7, 3, 'Chore'),
(8, 3, NULL),
(9, 3, 'Yes'),
(10, 3, 'Note C'),

(1, 4, NULL),
(2, 4, 'High'),
(3, 4, 'Open'),
(4, 4, 'Dan'),
(5, 4, NULL),
(6, 4, 'High'),
(7, 4, 'Feature'),
(8, 4, '5h'),
(9, 4, 'No'),
(10, 4, 'Note D'),

(1, 5, 'Task E'),
(2, 5, 'Low'),
(3, 5, 'Closed'),
(4, 5, 'Eve'),
(5, 5, '2025-08-07'),
(6, 5, NULL),
(7, 5, 'Bug'),
(8, 5, '1h'),
(9, 5, 'Yes'),
(10, 5, NULL),

(1, 6, 'Task F'),
(2, 6, 'Medium'),
(3, 6, 'Open'),
(4, 6, NULL),
(5, 6, '2025-08-08'),
(6, 6, 'Medium'),
(7, 6, 'Feature'),
(8, 6, '2h'),
(9, 6, 'Yes'),
(10, 6, 'Note F'),

(1, 7, 'Task G'),
(2, 7, 'High'),
(3, 7, 'Open'),
(4, 7, 'Frank'),
(5, 7, '2025-08-10'),
(6, 7, 'Low'),
(7, 7, 'Bug'),
(8, 7, '3h'),
(9, 7, 'No'),
(10, 7, 'Note G'),

(1, 8, NULL),
(2, 8, 'Low'),
(3, 8, 'Closed'),
(4, 8, 'Grace'),
(5, 8, '2025-08-12'),
(6, 8, 'High'),
(7, 8, 'Chore'),
(8, 8, '1h'),
(9, 8, NULL),
(10, 8, 'Note H'),

(1, 9, 'Task I'),
(2, 9, 'Medium'),
(3, 9, 'Open'),
(4, 9, 'Heidi'),
(5, 9, '2025-08-14'),
(6, 9, 'Medium'),
(7, 9, 'Feature'),
(8, 9, '2h'),
(9, 9, 'Yes'),
(10, 9, 'Note I'),

(1, 10, 'Task J'),
(2, 10, 'Low'),
(3, 10, 'Closed'),
(4, 10, 'Ivan'),
(5, 10, '2025-08-15'),
(6, 10, 'High'),
(7, 10, 'Bug'),
(8, 10, '4h'),
(9, 10, NULL),
(10, 10, 'Note J');

-- Insert into List (10 rows)
INSERT INTO List (ListName, Icon, Color, ListTypeId, WorkspaceId, CreatedBy)
VALUES 
('Project Alpha', 'folder', '#FF5733', 2, 1, 1),
('Daily Tasks', 'check', '#33FF57', 4, 1, 2),
('Backlog', 'box', '#3357FF', 5, 1, 3),
('Marketing Plan', 'chart', '#F1C40F', 1, 1, 4),
('Sprint Board', 'run', '#8E44AD', 2, 1, 5),
('Team Meetings', 'calendar', '#16A085', 5, 1, 6),
('Content Ideas', 'idea', '#E67E22', 3, 1, 7),
('Bug Tracking', 'bug', '#C0392B', 1, 1, 8),
('Design Tasks', 'paint', '#2ECC71', 4, 1, 9),
('Customer Feedback', 'comment', '#2980B9', 2, 1, 10),

('Weekly Report', 'file', '#9B59B6', 3, 1, 4),
('Roadmap', 'map', '#1ABC9C', 1, 1, 1),
('Hiring Plan', 'users', '#F39C12', 2, 1, 2),
('UX Research', 'search', '#E74C3C', 5, 1, 6),
('Financials', 'money', '#27AE60', 3, 1, 8),
('Social Media', 'social', '#D35400', 2, 1, 5),
('Feature Requests', 'star', '#7F8C8D', 4, 1, 3),
('QA Checklist', 'checklist', '#BDC3C7', 1, 1, 10),
('Launch Plan', 'rocket', '#3498DB', 5, 1, 7),
('User Interviews', 'mic', '#9B59B6', 3, 1, 9),

('DevOps Tasks', 'gear', '#2ECC71', 4, 1, 6),
('Partner Outreach', 'connect', '#1ABC9C', 5, 1, 4),
('Press Kit', 'media', '#E67E22', 1, 1, 2),
('Ad Campaign', 'ads', '#2980B9', 3, 1, 1),
('Meeting Notes', 'doc', '#F1C40F', 2, 1, 5),
('Internal Tools', 'tools', '#C0392B', 4, 1, 7),
('Training Plan', 'book', '#8E44AD', 1, 1, 8),
('Customer Onboarding', 'welcome', '#34495E', 2, 1, 3),
('Team Activities', 'game', '#FF6F61', 5, 1, 10),
('Support Queue', 'ticket', '#00BCD4', 3, 1, 9);

-- Insert into FavoriteList (20 rows)
INSERT INTO FavoriteList (ListId, FavoredBy)
VALUES
(3, 1),
(7, 4),
(12, 2),
(15, 6),
(21, 3),
(24, 9),
(5, 8),
(9, 7),
(18, 10),
(27, 5),
(1, 2),
(6, 6),
(10, 4),
(13, 1),
(20, 3),
(23, 7),
(26, 9),
(29, 5),
(30, 8),
(11, 10);

-- Insert into AccountList (20 rows)
INSERT INTO AccountList (AccountId, ListId)
VALUES
(1, 3),
(2, 5),
(3, 7),
(4, 9),
(5, 11),
(6, 13),
(7, 15),
(8, 17),
(9, 19),
(10, 21),
(1, 23),
(2, 25),
(3, 27),
(4, 29),
(5, 1),
(6, 4),
(7, 6),
(8, 8),
(9, 10),
(10, 12),
(1, 14),
(2, 16),
(3, 18),
(4, 20),
(5, 22),
(6, 24),
(7, 26),
(8, 28),
(9, 30),
(10, 2),
(1, 5),
(2, 8),
(3, 11),
(4, 14),
(5, 17),
(6, 20),
(7, 23),
(8, 26),
(9, 29),
(10, 3),
(1, 6),
(2, 9),
(3, 12),
(4, 15),
(5, 18),
(6, 21),
(7, 24),
(8, 27),
(9, 30),
(10, 1);

-- Insert into ListView (26 rows)
INSERT INTO ListView (ViewName, DisplayOrder, ListId, ViewTypeId, CreatedBy)
VALUES
-- List 1
('Grid View', 1, 1, 1, 7),
('Calendar View', 2, 1, 2, 7),
('Gallery View', 3, 1, 3, 7),
('Board View', 4, 1, 4, 7),

-- List 2 - 2 views
('Gallery View', 1, 2, 3, 2),
('Grid View', 2, 2, 1, 2),

-- List 3 - 4 views
('Grid View', 1, 3, 1, 3),
('Calendar View', 2, 3, 2, 3),
('Gallery View', 3, 3, 3, 3),
('Board View', 4, 3, 4, 3),

-- List 4 - 1 view
('Board View', 1, 4, 4, 4),

-- List 5 - 2 views
('Calendar View', 1, 5, 2, 5),
('Gallery View', 2, 5, 3, 5),

-- List 6 - 3 views
('Grid View', 1, 6, 1, 6),
('Board View', 2, 6, 4, 6),
('Gallery View', 3, 6, 3, 6),

-- List 7 - 1 view
('Calendar View', 1, 7, 2, 7),

-- List 8 - 2 views
('Grid View', 1, 8, 1, 8),
('Board View', 2, 8, 4, 8),

-- List 9 - 4 views
('Grid View', 1, 9, 1, 9),
('Calendar View', 2, 9, 2, 9),
('Gallery View', 3, 9, 3, 9),
('Board View', 4, 9, 4, 9),

-- List 10 - 3 views
('Calendar View', 1, 10, 2, 10),
('Grid View', 2, 10, 1, 10),
('Gallery View', 3, 10, 3, 10);

-- Insert into SystemColumn (1000 rows)
INSERT INTO SystemColumn (ColumnName, ColumnDescription, DisplayOrder, SystemDataTypeId) 
VALUES 
('Title', 'Main title field', 1, 1),
('Compliance Asset Id', 'Compliance tracking ID', 2, 1),
('ID', 'System-generated unique ID', 3, 3),
('Modified', 'Date item was last modified', 4, 4),
('Created', 'Date item was created', 5, 4),
('Created By', 'User who created the item', 6, 5),
('Modified By', 'User who last modified the item', 7, 5),
('Attachments', 'Indicates if item has file attachments', 8, 2),
('Type', 'Type of item', 9, 2),
('Item Child Count', 'Number of child items', 10, 3),
('Folder Child Count', 'Number of child folders', 11, 3),
('Label setting', 'Label configuration', 12, 1),
('Retention label', 'Label for data retention', 13, 2),
('Retention label Applied', 'Indicates retention applied', 14, 2),
('Label applied by', 'Who applied the label', 15, 5),
('Item is a Record', 'Whether item is a record', 16, 2);

-- Insert into SystemColumnSettingValue (1000 rows)
INSERT INTO SystemColumnSettingValue (SystemColumnId, DataTypeSettingKeyId, KeyValue)
VALUES 
-- Text Column (ColumnId = 1)
(1, 1, 'true'),     -- Required
(1, 2, 'left'),     -- Alignment
(1, 3, '20'),       -- MaxLength
-- Choice Column (ColumnId = 2)
(2, 4, 'true'),     -- Required
(2, 5, 'dropdown'), -- Display Type
-- Number Column (ColumnId = 3)
(3, 6, 'true'),     -- Required
(3, 7, '0'),        -- Min
(3, 8, '100'),      -- Max
-- Date Column (ColumnId = 4)
(4, 11, 'true'),        -- Required
(4, 12, '2024-01-01'),  -- Min
(4, 13, '2025-01-01'),  -- Max
-- Person Column (ColumnId = 5)
(5, 15, 'true'),        -- Required
(5, 16, 'avatarOnly');  -- Display Type

-- Insert into ListDynamicColumn (10000 rows)
INSERT INTO ListDynamicColumn (
    ColumnName,
    ColumnDescription,
    DisplayOrder,
    IsVisible,
    IsRequired,
    CreatedBy,
    ListId,
    SystemDataTypeId
)
VALUES
(N'Title', N'Task title', 1, 1, 1, 2, 1, 1),
(N'Due Date', N'Deadline for task', 2, 1, 0, 1, 1, 3),
(N'Priority', N'Priority level', 3, 1, 1, 3, 1, 2),
(N'Assigned To', N'Person responsible', 4, 1, 0, 4, 1, 5),
(N'Status', N'Task status', 5, 1, 0, 2, 1, 2),
(N'Description', N'Task details', 6, 0, 1, 1, 1, 4),
(N'Estimated Hours', N'Expected time needed', 7, 0, 0, 3, 1, 6),
(N'Is Approved', N'Approval flag', 8, 1, 0, 2, 1, 7),
(N'Reference Link', N'Optional reference link', 9, 0, 0, 4, 1, 8),
(N'Budget', N'Estimated cost', 10, 0, 0, 1, 1, 9);

-- Insert into ListColumnSettingValue (30 rows)
INSERT INTO ListColumnSettingValue (ColumnId, DataTypeSettingKeyId, KeyValue)
VALUES
-- Title Column (ColumnId = 1, SystemDataTypeId = 1 - Text)
(1, 1, 'true'),           -- required
(1, 2, 'Untitled'),       -- defaultValue
(1, 4, '255'),            -- maxLength
(1, 5, 'Enter title...'), -- placeholder

-- Due Date Column (ColumnId = 2, SystemDataTypeId = 3 - DateTime)
(2, 15, 'false'),         -- required
(2, 16, '2025-01-01'),    -- defaultValue
(2, 17, 'MM/dd/yyyy'),    -- dateFormat

-- Priority Column (ColumnId = 3, SystemDataTypeId = 2 - Choice)
(3, 10, 'true'),          -- required
(3, 11, '["Low", "Medium", "High", "Critical"]'), -- choices
(3, 12, 'false'),         -- allowMultiple

-- Assigned To Column (ColumnId = 4, SystemDataTypeId = 5 - Person)
(4, 13, 'false'),         -- required

-- Status Column (ColumnId = 5, SystemDataTypeId = 2 - Choice)  
(5, 10, 'false'),         -- required
(5, 11, '["Open", "In Progress", "Review", "Closed"]'), -- choices
(5, 12, 'false'),         -- allowMultiple

-- Description Column (ColumnId = 6, SystemDataTypeId = 4 - MultilineText)
(6, 1, 'true'),           -- required
(6, 2, ''),               -- defaultValue
(6, 4, '1000'),           -- maxLength
(6, 5, 'Enter description...'), -- placeholder

-- Estimated Hours Column (ColumnId = 7, SystemDataTypeId = 6 - Number)
(7, 6, 'false'),          -- required
(7, 7, '0'),              -- defaultValue
(7, 8, '0'),              -- minValue
(7, 9, '999'),            -- maxValue

-- Is Approved Column (ColumnId = 8, SystemDataTypeId = 7 - Boolean)
(8, 1, 'false'),          -- required
(8, 2, 'false'),          -- defaultValue

-- Reference Link Column (ColumnId = 9, SystemDataTypeId = 8 - Hyperlink)
(9, 1, 'false'),          -- required
(9, 2, ''),               -- defaultValue
(9, 5, 'https://...'),    -- placeholder

-- Budget Column (ColumnId = 10, SystemDataTypeId = 9 - Currency)
(10, 1, 'false'),         -- required
(10, 2, '0.00'),          -- defaultValue
(10, 8, '0'),             -- minValue
(10, 9, '999999.99');     -- maxValue

-- Insert into ListViewSetting (40 rows)
INSERT INTO ListViewSetting (ListViewId, ViewTypeSettingId, GroupByColumnId, RawValue)
VALUES
-- List 1 Views (ListViewId 1-4)
(1, 1, NULL, 'true'),             -- Grid View → IsPublic
(2, 2, NULL, 'true'),             -- Calendar View → IsPublic
(2, 3, 2, NULL),                  -- Calendar View → StartDate (Due Date column)
(2, 4, 2, NULL),                  -- Calendar View → EndDate (Due Date column)
(2, 5, 1, NULL),                  -- Calendar View → Title (Title column)
(2, 6, 5, NULL),                  -- Calendar View → Subheading (Status column)
(2, 7, NULL, 'month'),            -- Calendar View → DefaultLayout
(3, 8, NULL, 'false'),            -- Gallery View → IsPublic
(4, 9, NULL, 'true'),             -- Board View → IsPublic
(4, 10, 3, NULL),                 -- Board View → OrganizeBoardBy (Priority column)

-- List 2 Views (ListViewId 5-6)
(5, 8, NULL, 'true'),             -- Gallery View → IsPublic
(6, 1, NULL, 'true'),             -- Grid View → IsPublic

-- List 3 Views (ListViewId 7-10)
(7, 1, NULL, 'false'),            -- Grid View → IsPublic
(8, 2, NULL, 'true'),             -- Calendar View → IsPublic
(8, 3, 2, NULL),                  -- Calendar View → StartDate
(8, 4, 2, NULL),                  -- Calendar View → EndDate
(8, 5, 1, NULL),                  -- Calendar View → Title
(8, 7, NULL, 'week'),             -- Calendar View → DefaultLayout
(9, 8, NULL, 'true'),             -- Gallery View → IsPublic
(10, 9, NULL, 'false'),           -- Board View → IsPublic
(10, 10, 5, NULL),                -- Board View → OrganizeBoardBy (Status column)

-- List 4 Views (ListViewId 11)
(11, 9, NULL, 'true'),            -- Board View → IsPublic
(11, 10, 3, NULL),                -- Board View → OrganizeBoardBy (Priority column)

-- List 5 Views (ListViewId 12-13)
(12, 2, NULL, 'true'),            -- Calendar View → IsPublic
(12, 3, 2, NULL),                 -- Calendar View → StartDate
(12, 4, 2, NULL),                 -- Calendar View → EndDate
(12, 7, NULL, 'day'),             -- Calendar View → DefaultLayout
(13, 8, NULL, 'true'),            -- Gallery View → IsPublic

-- List 6 Views (ListViewId 14-16)
(14, 1, NULL, 'true'),            -- Grid View → IsPublic
(15, 9, NULL, 'true'),            -- Board View → IsPublic
(15, 10, 5, NULL),                -- Board View → OrganizeBoardBy (Status column)
(16, 8, NULL, 'false'),           -- Gallery View → IsPublic

-- List 7 Views (ListViewId 17)
(17, 2, NULL, 'true'),            -- Calendar View → IsPublic
(17, 3, 2, NULL),                 -- Calendar View → StartDate
(17, 4, 2, NULL),                 -- Calendar View → EndDate
(17, 5, 1, NULL),                 -- Calendar View → Title
(17, 7, NULL, 'month'),           -- Calendar View → DefaultLayout

-- List 8 Views (ListViewId 18-19)
(18, 1, NULL, 'false'),           -- Grid View → IsPublic
(19, 9, NULL, 'true'),            -- Board View → IsPublic
(19, 10, 3, NULL),                -- Board View → OrganizeBoardBy (Priority column)

-- List 9 Views (ListViewId 20-23)
(20, 1, NULL, 'true'),            -- Grid View → IsPublic
(21, 2, NULL, 'true'),            -- Calendar View → IsPublic
(21, 7, NULL, 'week'),            -- Calendar View → DefaultLayout
(22, 8, NULL, 'true'),            -- Gallery View → IsPublic
(23, 9, NULL, 'true'),            -- Board View → IsPublic
(23, 10, 5, NULL),                -- Board View → OrganizeBoardBy (Status column)

-- List 10 Views (ListViewId 24-26)
(24, 2, NULL, 'true'),            -- Calendar View → IsPublic
(24, 3, 2, NULL),                 -- Calendar View → StartDate
(24, 4, 2, NULL),                 -- Calendar View → EndDate
(24, 7, NULL, 'month'),           -- Calendar View → DefaultLayout
(25, 1, NULL, 'true'),            -- Grid View → IsPublic
(26, 8, NULL, 'true');            -- Gallery View → IsPublic

-- Insert into ListColumnSettingObject (12 rows)
INSERT INTO ListColumnSettingObject (ListDynamicColumnId, DisplayName, DisplayColor, DisplayOrder)
VALUES
-- Priority Column (ColumnId = 3) - Choice options
(3, 'Low', '#4CAF50', 1),           -- Green for Low priority
(3, 'Medium', '#FF9800', 2),        -- Orange for Medium priority
(3, 'High', '#FF5722', 3),          -- Red-Orange for High priority
(3, 'Critical', '#D32F2F', 4),      -- Dark Red for Critical priority

-- Status Column (ColumnId = 5) - Choice options
(5, 'Open', '#2196F3', 1),          -- Blue for Open status
(5, 'In Progress', '#FF9800', 2),   -- Orange for In Progress
(5, 'Review', '#9C27B0', 3),        -- Purple for Review
(5, 'Closed', '#4CAF50', 4);        -- Green for Closed status

-- Insert into ListRow (10 rows)
INSERT INTO ListRow (ListId, DisplayOrder, CreatedBy)
VALUES
(1, 1, 1),   -- Row 1 created by Alice
(1, 2, 1),   -- Row 2 created by Alice
(1, 3, 1),   -- Row 3 created by Alice
(1, 4, 1),   -- Row 4 created by Alice
(1, 5, 1),   -- Row 5 created by Alice
(1, 6, 1),   -- Row 6 created by Alice
(1, 7, 1),   -- Row 7 created by Alice
(1, 8, 1),   -- Row 8 created by Alice
(1, 9, 1),   -- Row 9 created by Alice
(1, 10, 1);  -- Row 10 created by Alice

-- Insert into ListCellValue (100 rows)
INSERT INTO ListCellValue (ListRowId, ListDynamicColumnId, CellValue)
VALUES
-- Row 1 data
(1, 1, 'Setup database schema'),
(1, 2, '2025-08-15'),
(1, 3, 'High'),
(1, 4, 'Alice Johnson'),
(1, 5, 'In Progress'),
(1, 6, 'Create initial database structure with all required tables'),
(1, 7, '8'),
(1, 8, 'true'),
(1, 9, 'https://docs.company.com/db-schema'),
(1, 10, '2500.00'),

-- Row 2 data
(2, 1, 'Implement user authentication'),
(2, 2, '2025-08-20'),
(2, 3, 'Critical'),
(2, 4, 'Bob Smith'),
(2, 5, 'Open'),
(2, 6, NULL),
(2, 7, '12'),
(2, 8, 'false'),
(2, 9, NULL),
(2, 10, '3200.00'),

-- Row 3 data
(3, 1, 'Design user interface'),
(3, 2, NULL),
(3, 3, 'Medium'),
(3, 4, NULL),
(3, 5, 'Review'),
(3, 6, 'Create wireframes and mockups for the main application'),
(3, 7, NULL),
(3, 8, 'true'),
(3, 9, 'https://figma.com/design-specs'),
(3, 10, '1800.00'),

-- Row 4 data
(4, 1, 'Setup CI/CD pipeline'),
(4, 2, '2025-08-25'),
(4, 3, 'High'),
(4, 4, 'Carol Davis'),
(4, 5, 'Closed'),
(4, 6, 'Configure automated build and deployment process'),
(4, 7, '6'),
(4, 8, NULL),
(4, 9, 'https://jenkins.company.com/pipeline'),
(4, 10, NULL),

-- Row 5 data
(5, 1, NULL),
(5, 2, '2025-08-30'),
(5, 3, 'Low'),
(5, 4, 'David Wilson'),
(5, 5, 'Open'),
(5, 6, 'Write comprehensive unit tests for all modules'),
(5, 7, '4'),
(5, 8, 'false'),
(5, 9, NULL),
(5, 10, '1200.00'),

-- Row 6 data
(6, 1, 'API documentation'),
(6, 2, '2025-09-05'),
(6, 3, NULL),
(6, 4, 'Eva Martinez'),
(6, 5, 'In Progress'),
(6, 6, NULL),
(6, 7, '3'),
(6, 8, 'true'),
(6, 9, 'https://swagger.company.com/api-docs'),
(6, 10, '900.00'),

-- Row 7 data
(7, 1, 'Security audit'),
(7, 2, NULL),
(7, 3, 'Critical'),
(7, 4, NULL),
(7, 5, 'Review'),
(7, 6, 'Conduct thorough security review of the application'),
(7, 7, '10'),
(7, 8, NULL),
(7, 9, 'https://security-tools.company.com'),
(7, 10, '4500.00'),

-- Row 8 data
(8, 1, 'Performance optimization'),
(8, 2, '2025-09-10'),
(8, 3, 'Medium'),
(8, 4, 'Frank Brown'),
(8, 5, 'Open'),
(8, 6, 'Optimize database queries and application performance'),
(8, 7, NULL),
(8, 8, 'false'),
(8, 9, NULL),
(8, 10, '2800.00'),

-- Row 9 data
(9, 1, 'Mobile responsiveness'),
(9, 2, '2025-09-15'),
(9, 3, 'High'),
(9, 4, 'Grace Lee'),
(9, 5, 'In Progress'),
(9, 6, NULL),
(9, 7, '5'),
(9, 8, 'true'),
(9, 9, 'https://mobile-testing.company.com'),
(9, 10, NULL),

-- Row 10 data
(10, 1, 'User training materials'),
(10, 2, NULL),
(10, 3, 'Low'),
(10, 4, 'Henry Taylor'),
(10, 5, 'Closed'),
(10, 6, 'Create user manuals and training videos'),
(10, 7, '7'),
(10, 8, NULL),
(10, 9, 'https://training.company.com/materials'),
(10, 10, '1500.00');

-- Insert into ListRowComment (100 rows)
INSERT INTO ListRowComment (ListRowId, Content, CreatedBy)
VALUES
-- Comments for ListRow ID 1 (guaranteed at least 1)
(1, 'Great progress on the database schema! The structure looks solid.', 2),
(1, 'Should we consider adding indexes for performance optimization?', 3),
(1, 'I noticed some foreign key constraints might need review.', 4),
(1, 'The documentation for this task is excellent.', 5),
(1, 'Ready for code review once testing is complete.', 1),

-- Comments for ListRow ID 2
(2, 'Authentication implementation is critical. Need to ensure security best practices.', 1),
(2, 'Consider using OAuth 2.0 or similar standard protocol.', 6),
(2, 'Multi-factor authentication should be included.', 7),
(2, 'Password hashing algorithm needs to be reviewed.', 8),

-- Comments for ListRow ID 3
(3, 'UI mockups look great! Very user-friendly design.', 9),
(3, 'Mobile responsiveness should be considered in the design phase.', 10),
(3, 'Color scheme aligns well with our brand guidelines.', 2),
(3, 'Navigation flow seems intuitive for end users.', 3),
(3, 'Accessibility features need to be incorporated.', 4),

-- Comments for ListRow ID 4
(4, 'CI/CD pipeline setup is crucial for deployment automation.', 5),
(4, 'Jenkins configuration looks good, but need to add automated testing.', 6),
(4, 'Docker containerization should be part of the pipeline.', 7),
(4, 'Deployment rollback strategy needs to be defined.', 8),

-- Comments for ListRow ID 5
(5, 'Unit testing coverage should be at least 80%.', 9),
(5, 'Integration tests are equally important as unit tests.', 10),
(5, 'Consider using Jest for JavaScript testing framework.', 1),
(5, 'Test data setup and teardown processes need attention.', 2),
(5, 'Mock external dependencies for isolated testing.', 3),

-- Comments for ListRow ID 6
(6, 'API documentation should follow OpenAPI 3.0 specification.', 4),
(6, 'Include request/response examples for each endpoint.', 5),
(6, 'Error codes and messages need to be clearly documented.', 6),
(6, 'Rate limiting information should be included.', 7),

-- Comments for ListRow ID 7
(7, 'Security audit is essential before production deployment.', 8),
(7, 'OWASP Top 10 vulnerabilities should be checked.', 9),
(7, 'Penetration testing should be conducted by external team.', 10),
(7, 'Data encryption at rest and in transit must be verified.', 1),
(7, 'Access control and user permissions need thorough review.', 2),

-- Comments for ListRow ID 8
(8, 'Performance optimization should focus on database queries first.', 3),
(8, 'Consider implementing caching mechanisms.', 4),
(8, 'Load testing results will help identify bottlenecks.', 5),
(8, 'Memory usage patterns need to be analyzed.', 6),

-- Comments for ListRow ID 9
(9, 'Mobile responsiveness is crucial for user experience.', 7),
(9, 'Test on various device sizes and orientations.', 8),
(9, 'Touch interactions should be optimized for mobile.', 9),
(9, 'Page load times on mobile networks need attention.', 10),

-- Comments for ListRow ID 10
(10, 'Training materials should include video tutorials.', 1),
(10, 'Step-by-step guides with screenshots are helpful.', 2),
(10, 'FAQ section should address common user questions.', 3),
(10, 'Interactive tutorials would enhance user engagement.', 4),

-- Additional random comments distributed across rows
(1, 'Database migration scripts should be version controlled.', 6),
(2, 'Session management needs to be implemented securely.', 9),
(3, 'User feedback on the design has been very positive.', 5),
(4, 'Automated deployment to staging environment is working well.', 1),
(5, 'Code coverage reports are now generated automatically.', 7),
(6, 'API versioning strategy needs to be established.', 8),
(7, 'Security scan results show no critical vulnerabilities.', 3),
(8, 'Performance improvements are showing 30% faster response times.', 10),
(9, 'Responsive design testing completed on 15 different devices.', 4),
(10, 'User training session scheduled for next week.', 6),

(1, 'Consider adding database connection pooling for better performance.', 8),
(2, 'Two-factor authentication integration is in progress.', 4),
(3, 'Design system components are being documented.', 7),
(4, 'Blue-green deployment strategy has been implemented.', 2),
(5, 'Test automation framework is now fully operational.', 9),
(6, 'API rate limiting has been configured and tested.', 5),
(7, 'Security compliance checklist has been completed.', 1),
(8, 'Database indexing has improved query performance significantly.', 6),
(9, 'Progressive Web App features are being considered.', 3),
(10, 'Training documentation has been reviewed and approved.', 10),

(1, 'Schema validation rules have been added to prevent data corruption.', 5),
(2, 'Single sign-on integration is being planned for phase 2.', 7),
(3, 'Dark mode theme has been requested by several users.', 1),
(4, 'Monitoring and alerting system has been integrated with the pipeline.', 9),
(5, 'Performance testing suite has been expanded with more scenarios.', 3),
(6, 'GraphQL endpoint documentation is now available.', 8),
(7, 'Vulnerability assessment report has been submitted to management.', 4),
(8, 'Memory leak investigation has been completed successfully.', 2),
(9, 'Accessibility audit has been scheduled for next sprint.', 6),
(10, 'User onboarding flow has been simplified based on feedback.', 10),

(2, 'Password complexity requirements have been updated.', 6),
(3, 'User interface consistency has been improved across all pages.', 8),
(4, 'Rollback procedure has been tested successfully.', 3),
(5, 'Edge case testing has revealed several minor issues.', 1),
(6, 'API response time monitoring has been implemented.', 7),
(7, 'Data backup and recovery procedures have been documented.', 9),
(8, 'Code profiling has identified optimization opportunities.', 4),
(9, 'Cross-browser compatibility testing is in progress.', 5),
(10, 'Knowledge base articles have been published internally.', 2),

(1, 'Database performance monitoring dashboard has been created.', 10),
(3, 'User experience research findings have been incorporated.', 9),
(4, 'Infrastructure as Code templates have been version controlled.', 7),
(5, 'Mutation testing has been added to improve test quality.', 6),
(6, 'API deprecation policy has been established.', 4),
(7, 'Incident response procedures have been updated.', 8),
(8, 'Resource utilization metrics are now being tracked.', 1),
(9, 'Offline functionality requirements are being evaluated.', 3),
(10, 'Training effectiveness metrics are being collected.', 5)

-- Insert into Permission
INSERT INTO Permission (PermissionCode, PermissionName, PermissionIcon, PermissionDescription)
VALUES 
('OWNER', 'Can edit list', 'Owner Icon', 'Can edit, add, or remove items, columns or views'),
('CONTRIBUTOR', 'Can edit items', 'Contributor Icon', 'Can edit,  add, or remove items'),
('READER', 'Can view', 'Reader Icon', 'Can''t edit or share items or this list');

-- Insert into ListMemberPermission (50 rows)
INSERT INTO ListMemberPermission (ListId, AccountId, HighestPermissionId)
VALUES
-- List 1: Project Alpha (Creator: Alice, ID=1) - Mixed permissions
(1, 1, 1),  -- Alice (Creator) -> OWNER
(1, 2, 2),  -- Bob -> CONTRIBUTOR
(1, 3, 2),  -- Charlie -> CONTRIBUTOR
(1, 4, 3),  -- Daisy -> READER
(1, 7, 2),  -- George -> CONTRIBUTOR

-- List 2: Daily Tasks (Creator: Bob, ID=2) - Bob's personal list with some collaborators
(2, 2, 1),  -- Bob (Creator) -> OWNER
(2, 1, 2),  -- Alice -> CONTRIBUTOR
(2, 5, 3),  -- Evan -> READER

-- List 3: Backlog (Creator: Charlie, ID=3) - Team list with multiple contributors
(3, 3, 1),  -- Charlie (Creator) -> OWNER
(3, 1, 2),  -- Alice -> CONTRIBUTOR
(3, 2, 2),  -- Bob -> CONTRIBUTOR
(3, 6, 2),  -- Fiona -> CONTRIBUTOR
(3, 9, 3),  -- Ian -> READER

-- List 4: Marketing Plan (Creator: Daisy, ID=4) - Marketing team access
(4, 4, 1),  -- Daisy (Creator) -> OWNER
(4, 7, 2),  -- George -> CONTRIBUTOR
(4, 8, 2),  -- Hannah -> CONTRIBUTOR
(4, 10, 3), -- Jane -> READER

-- List 5: Sprint Board (Creator: Evan, ID=5) - Development team
(5, 5, 1),  -- Evan (Creator) -> OWNER
(5, 1, 2),  -- Alice -> CONTRIBUTOR
(5, 2, 2),  -- Bob -> CONTRIBUTOR
(5, 3, 2),  -- Charlie -> CONTRIBUTOR

-- List 6: Team Meetings (Creator: Fiona, ID=6) - Wide access for meetings
(6, 6, 1),  -- Fiona (Creator) -> OWNER
(6, 1, 2),  -- Alice -> CONTRIBUTOR
(6, 4, 2),  -- Daisy -> CONTRIBUTOR
(6, 7, 2),  -- George -> CONTRIBUTOR
(6, 9, 3),  -- Ian -> READER
(6, 10, 3), -- Jane -> READER

-- List 7: Content Ideas (Creator: George, ID=7) - Creative team
(7, 7, 1),  -- George (Creator) -> OWNER
(7, 4, 2),  -- Daisy -> CONTRIBUTOR
(7, 8, 2),  -- Hannah -> CONTRIBUTOR

-- List 8: Bug Tracking (Creator: Hannah, ID=8) - Technical team
(8, 8, 1),  -- Hannah (Creator) -> OWNER
(8, 1, 2),  -- Alice -> CONTRIBUTOR
(8, 2, 2),  -- Bob -> CONTRIBUTOR
(8, 3, 2),  -- Charlie -> CONTRIBUTOR
(8, 5, 2),  -- Evan -> CONTRIBUTOR

-- List 9: Design Tasks (Creator: Ian, ID=9) - Design team
(9, 9, 1),  -- Ian (Creator) -> OWNER
(9, 6, 2),  -- Fiona -> CONTRIBUTOR
(9, 7, 3),  -- George -> READER

-- List 10: Customer Feedback (Creator: Jane, ID=10) - Customer service team
(10, 10, 1), -- Jane (Creator) -> OWNER
(10, 4, 2),  -- Daisy -> CONTRIBUTOR
(10, 7, 2),  -- George -> CONTRIBUTOR
(10, 8, 3),  -- Hannah -> READER

-- Additional permissions for other lists (Lists 11-20)
(11, 4, 1),  -- Weekly Report -> Daisy (Creator) -> OWNER
(11, 1, 3),  -- Alice -> READER
(11, 10, 2), -- Jane -> CONTRIBUTOR

(12, 1, 1),  -- Roadmap -> Alice (Creator) -> OWNER
(12, 2, 2),  -- Bob -> CONTRIBUTOR
(12, 5, 2),  -- Evan -> CONTRIBUTOR
(12, 9, 3),  -- Ian -> READER

(15, 8, 1),  -- Financials -> Hannah (Creator) -> OWNER
(15, 4, 2),  -- Daisy -> CONTRIBUTOR
(15, 10, 3); -- Jane -> READER

-- Insert into Scope (3 rows)
INSERT INTO Scope (ScopeCode, ScopeName, ScopeIcon, ScopeDescription)
VALUES 
('PUBLIC', 'Anyone', 'Public Icon', 'Public Description'),
('AUTHORIZED', 'Only people with existing access', 'Authorized Icon', 'Authorized Description'),
('SPECIFIC', 'People you choose', 'Specific Icon', 'Specific Description');

-- Insert into ShareLink (20 rows)
INSERT INTO ShareLink (TargetUrl, ShareLinkMessage, ListId, ScopeId, PermissionId, CreatedBy)
VALUES
-- Public sharing links (ScopeId = 1 - PUBLIC)
('https://lists.company.com/share/proj-alpha-abc123', 'Check out our project progress and milestones', 1, 1, 3, 1),
('https://lists.company.com/share/marketing-plan-def456', 'Marketing campaign planning board - view only', 4, 1, 3, 4),
('https://lists.company.com/share/team-meetings-ghi789', 'Weekly team meeting agenda and notes', 6, 1, 3, 6),
('https://lists.company.com/share/customer-feedback-jkl012', 'Customer feedback collection for product improvement', 10, 1, 3, 10),
('https://lists.company.com/share/content-ideas-mno345', 'Creative content brainstorming board', 7, 1, 3, 7),

-- Authorized access links (ScopeId = 2 - AUTHORIZED)
('https://lists.company.com/share/daily-tasks-pqr678', 'Personal task management with team visibility', 2, 2, 2, 2),
('https://lists.company.com/share/bug-tracking-stu901', 'Internal bug reporting and tracking system', 8, 2, 2, 8),
('https://lists.company.com/share/sprint-board-vwx234', 'Development sprint planning and tracking', 5, 2, 2, 5),
('https://lists.company.com/share/design-tasks-yza567', 'Design workflow and task assignments', 9, 2, 2, 9),
('https://lists.company.com/share/backlog-bcd890', 'Product backlog and feature requests', 3, 2, 2, 3),

-- Specific people access links (ScopeId = 3 - SPECIFIC)
('https://lists.company.com/share/weekly-report-efg123', 'Weekly progress reports - management access', 11, 3, 1, 4),
('https://lists.company.com/share/roadmap-hij456', 'Product roadmap - stakeholder access', 12, 3, 1, 1),
('https://lists.company.com/share/financials-klm789', 'Financial tracking and budgets - finance team only', 15, 3, 1, 8),
('https://lists.company.com/share/hiring-plan-nop012', 'Recruitment pipeline - HR access', 13, 3, 2, 2),
('https://lists.company.com/share/ux-research-qrs345', 'UX research findings - design team access', 14, 3, 2, 6),

-- Additional sharing scenarios
('https://lists.company.com/share/social-media-tuv678', 'Social media content calendar - marketing team', 16, 2, 2, 5),
('https://lists.company.com/share/feature-requests-wxy901', 'Product feature requests from customers', 17, 1, 3, 3),
('https://lists.company.com/share/qa-checklist-zab234', 'Quality assurance testing checklist', 18, 2, 2, 10),
('https://lists.company.com/share/launch-plan-cde567', 'Product launch coordination - executive access', 19, 3, 1, 7),
('https://lists.company.com/share/user-interviews-fgh890', 'User research interviews and insights', 20, 3, 2, 9);


-- Insert into ShareLinkOption (4 rows)
INSERT INTO ShareLinkOption (OptionName, ValueType, OptionValue, ScopeId)
VALUES 
('Is Login Required', 'BIT', '0', 1),
('Set Expiration Date', 'DATETIME', NULL, 1),
('Set Expiration Date', 'DATETIME', NULL, 3),
('Set Password', 'NVARCHAR', NULL, 1);

-- Insert into ShareLinkOptionValue (30 rows)
INSERT INTO ShareLinkOptionValue (ShareLinkId, ShareLinkOptionId, OptionValue)
VALUES
-- Public links (ShareLinkId 1-5) - Using options for PUBLIC scope (ScopeId=1)
-- Option 1: Is Login Required (BIT)
(1, 1, '0'),  -- Project Alpha - No login required
(2, 1, '0'),  -- Marketing Plan - No login required
(3, 1, '1'),  -- Team Meetings - Login required
(4, 1, '0'),  -- Customer Feedback - No login required
(5, 1, '0'),  -- Content Ideas - No login required

-- Option 2: Set Expiration Date (DATETIME) for PUBLIC scope
(1, 2, '2025-12-31 23:59:59'),  -- Project Alpha expires end of year
(2, 2, '2025-09-30 23:59:59'),  -- Marketing Plan expires end of Q3
(3, 2, '2025-12-31 23:59:59'),  -- Team Meetings - default expiration
(4, 2, '2025-10-15 23:59:59'),  -- Customer Feedback expires mid-October
(5, 2, '2025-12-31 23:59:59'),  -- Content Ideas - default expiration

-- Option 4: Set Password (NVARCHAR) for PUBLIC scope
(1, 4, 'default123'),           -- Project Alpha - default password
(2, 4, 'marketing2025'),         -- Marketing Plan - password protected
(3, 4, 'teamaccess'),           -- Team Meetings - password protected
(4, 4, 'default123'),           -- Customer Feedback - default password
(5, 4, 'creative123'),          -- Content Ideas - password protected

-- Authorized links (ShareLinkId 6-10) - No specific options since AUTHORIZED scope has no ShareLinkOptions

-- Specific links (ShareLinkId 11-15) - Using options for SPECIFIC scope (ScopeId=3)
-- Option 3: Set Expiration Date (DATETIME) for SPECIFIC scope
(11, 3, '2025-08-31 23:59:59'), -- Weekly Report - expires end of month
(12, 3, '2025-12-31 23:59:59'), -- Roadmap - expires end of year
(13, 3, '2025-09-15 23:59:59'), -- Financials - expires mid-September
(14, 3, '2025-08-15 23:59:59'), -- Hiring Plan - expires mid-August
(15, 3, '2025-10-31 23:59:59'), -- UX Research - expires end of October

-- Additional ShareLinks (ShareLinkId 16-20) with various options
(16, 2, '2025-11-30 23:59:59'), -- Social Media - expires end of November
(16, 4, 'social2025'),          -- Social Media - password protected
(17, 1, '0'),                    -- Feature Requests - no login required
(17, 2, '2025-12-31 23:59:59'),   -- Feature Requests - default expiration
(18, 1, '1'),                    -- QA Checklist - login required
(19, 3, '2025-09-30 23:59:59'), -- Launch Plan - expires end of Q3
(20, 3, '2025-08-30 23:59:59'); -- User Interviews - expires end of August

-- Insert into ShareLinkUserAccess (25 rows)
INSERT INTO ShareLinkUserAccess (ShareLinkId, AccountId)
VALUES
-- SPECIFIC scope links (ShareLinkId 11-15) - Controlled user access
-- ShareLink 11: Weekly Report - Management access
(11, 1),  -- Alice (management)
(11, 4),  -- Daisy (creator/management)
(11, 8),  -- Hannah (finance)
(11, 10), -- Jane (admin)

-- ShareLink 12: Roadmap - Stakeholder access
(12, 1),  -- Alice (creator/product)
(12, 2),  -- Bob (development lead)
(12, 4),  -- Daisy (marketing)
(12, 5),  -- Evan (development)
(12, 9),  -- Ian (design lead)

-- ShareLink 13: Financials - Finance team only
(13, 8),  -- Hannah (finance lead)
(13, 4),  -- Daisy (budget management)
(13, 10), -- Jane (admin/accounting)

-- ShareLink 14: Hiring Plan - HR access
(14, 2),  -- Bob (creator/HR)
(14, 1),  -- Alice (management)
(14, 6),  -- Fiona (team lead)
(14, 7),  -- George (department head)

-- ShareLink 15: UX Research - Design team access
(15, 6),  -- Fiona (creator/UX)
(15, 9),  -- Ian (design)
(15, 1),  -- Alice (product management)
(15, 4),  -- Daisy (marketing insights)

-- ShareLink 19: Launch Plan - Executive access
(19, 7),  -- George (creator/exec)
(19, 1),  -- Alice (product lead)
(19, 4),  -- Daisy (marketing lead)
(19, 8),  -- Hannah (finance approval)

-- ShareLink 20: User Interviews - Research team access
(20, 9),  -- Ian (creator/research)
(20, 6),  -- Fiona (UX design)
(20, 4),  -- Daisy (marketing research)
(20, 10); -- Jane (customer service)

-- Insert into FileAttachment (20 rows)
INSERT INTO FileAttachment (NameFile, FileUrl, Size, FileStatus, ListRowId, CreateBy)
VALUES
-- Attachments for various list rows
('database_schema_v1.sql', 'https://files.company.com/attachments/db-schema-v1.sql', '45.2 KB', 'Active', 1, 1),
('requirements_document.pdf', 'https://files.company.com/attachments/requirements-doc.pdf', '2.3 MB', 'Active', 1, 2),
('authentication_spec.docx', 'https://files.company.com/attachments/auth-spec.docx', '1.8 MB', 'Active', 2, 2),
('security_checklist.xlsx', 'https://files.company.com/attachments/security-checklist.xlsx', '156 KB', 'Active', 2, 8),
('ui_mockups.fig', 'https://files.company.com/attachments/ui-mockups.fig', '12.7 MB', 'Active', 3, 9),
('wireframes.pdf', 'https://files.company.com/attachments/wireframes.pdf', '5.1 MB', 'Active', 3, 9),
('jenkins_config.yml', 'https://files.company.com/attachments/jenkins-config.yml', '3.2 KB', 'Active', 4, 7),
('deployment_guide.md', 'https://files.company.com/attachments/deployment-guide.md', '18.5 KB', 'Active', 4, 7),
('test_cases.xlsx', 'https://files.company.com/attachments/test-cases.xlsx', '892 KB', 'Active', 5, 3),
('coverage_report.html', 'https://files.company.com/attachments/coverage-report.html', '234 KB', 'Active', 5, 3),
('api_documentation.pdf', 'https://files.company.com/attachments/api-docs.pdf', '3.8 MB', 'Active', 6, 5),
('postman_collection.json', 'https://files.company.com/attachments/postman-collection.json', '67 KB', 'Active', 6, 5),
('security_audit_report.pdf', 'https://files.company.com/attachments/security-audit.pdf', '4.2 MB', 'Active', 7, 8),
('vulnerability_scan.pdf', 'https://files.company.com/attachments/vuln-scan.pdf', '1.9 MB', 'Archived', 7, 8),
('performance_metrics.xlsx', 'https://files.company.com/attachments/performance-metrics.xlsx', '445 KB', 'Active', 8, 6),
('load_test_results.pdf', 'https://files.company.com/attachments/load-test-results.pdf', '2.1 MB', 'Active', 8, 6),
('responsive_design.sketch', 'https://files.company.com/attachments/responsive-design.sketch', '8.9 MB', 'Active', 9, 9),
('device_testing.xlsx', 'https://files.company.com/attachments/device-testing.xlsx', '278 KB', 'Active', 9, 4),
('training_video.mp4', 'https://files.company.com/attachments/training-video.mp4', '156.7 MB', 'Active', 10, 1),
('user_manual.pdf', 'https://files.company.com/attachments/user-manual.pdf', '6.3 MB', 'Active', 10, 1);


-- Insert into ObjectType (3 rows)
INSERT INTO ObjectType (ObjectCode, ObjectName, ObjectIcon) VALUES
('FILE', 'File', 'file-icon'),
('LIST', 'List', 'list-icon'),
('LISTROW', 'List Row', 'list-row-icon');

-- Insert into TrashItem (100 rows)
INSERT INTO TrashItem (ObjectId, ObjectTypeId, PathItem, CreateBy, DeletedBy)
VALUES
-- Deleted Priority Column Setting Objects (ObjectTypeId = 1 for ListColumnSettingObject)
(1, 1, '/Lists/Project Alpha/Columns/Priority/Low', 3, 1),
(2, 1, '/Lists/Project Alpha/Columns/Priority/Medium', 3, 1),
(3, 1, '/Lists/Project Alpha/Columns/Priority/High', 3, 1),
(4, 1, '/Lists/Project Alpha/Columns/Priority/Critical', 3, 1),
(5, 1, '/Lists/Project Alpha/Columns/Status/Open', 2, 1),
(6, 1, '/Lists/Project Alpha/Columns/Status/In Progress', 2, 1),
(7, 1, '/Lists/Project Alpha/Columns/Status/Review', 2, 1),
(8, 1, '/Lists/Project Alpha/Columns/Status/Closed', 2, 1),

-- Deleted List Items (ObjectTypeId = 2 for LIST) - Still must use ListColumnSettingObject IDs 1-8
(1, 2, '/Lists/Old Project Beta', 2, 8),
(2, 2, '/Lists/Deprecated Tasks', 3, 8),
(3, 2, '/Lists/Archived Backlog', 1, 8),
(4, 2, '/Lists/Old Marketing Campaign', 4, 8),
(5, 2, '/Lists/Legacy Sprint Board', 5, 8),
(6, 2, '/Lists/Old Team Meetings', 6, 8),
(7, 2, '/Lists/Old Content Ideas', 7, 8),
(8, 2, '/Lists/Resolved Bug Tracking', 8, 8),
(1, 2, '/Lists/Completed Design Tasks', 9, 8),
(2, 2, '/Lists/Closed Feedback', 10, 8),

-- Deleted List Rows (ObjectTypeId = 3 for LISTROW) - Still must use ListColumnSettingObject IDs 1-8
(3, 3, '/Lists/Project Alpha/Rows/Deleted Task 1', 1, 2),
(4, 3, '/Lists/Project Alpha/Rows/Deleted Task 2', 1, 2),
(5, 3, '/Lists/Daily Tasks/Rows/Completed Personal Task', 2, 2),
(6, 3, '/Lists/Daily Tasks/Rows/Cancelled Meeting', 2, 2),
(7, 3, '/Lists/Backlog/Rows/Rejected Feature', 3, 3),
(8, 3, '/Lists/Backlog/Rows/Duplicate Bug Report', 3, 3),
(1, 3, '/Lists/Marketing Plan/Rows/Outdated Campaign', 4, 4),
(2, 3, '/Lists/Marketing Plan/Rows/Cancelled Event', 4, 4),
(3, 3, '/Lists/Sprint Board/Rows/Moved to Next Sprint', 5, 5),
(4, 3, '/Lists/Sprint Board/Rows/Blocked Task', 5, 5),

-- More deleted column setting objects (continuing with valid IDs 1-8)
(5, 1, '/Lists/Daily Tasks/Columns/Priority/Urgent', 2, 3),
(6, 1, '/Lists/Daily Tasks/Columns/Category/Personal', 2, 3),
(7, 1, '/Lists/Backlog/Columns/Epic/User Management', 3, 4),
(8, 1, '/Lists/Backlog/Columns/Sprint/Sprint 1', 3, 4),
(1, 1, '/Lists/Marketing Plan/Columns/Channel/Email', 4, 5),
(2, 1, '/Lists/Marketing Plan/Columns/Budget/Low', 4, 5),
(3, 1, '/Lists/Sprint Board/Columns/Complexity/Simple', 5, 6),
(4, 1, '/Lists/Sprint Board/Columns/Team/Frontend', 5, 6),

-- Additional deleted lists (continuing with valid ListColumnSettingObject IDs 1-8)
(5, 2, '/Lists/Q1 Planning', 1, 9),
(6, 2, '/Lists/Old Website Redesign', 9, 9),
(7, 2, '/Lists/Deprecated API Endpoints', 8, 9),
(8, 2, '/Lists/Legacy Customer Support', 10, 9),
(1, 2, '/Lists/Archived Product Features', 1, 9),
(2, 2, '/Lists/Old Training Materials', 6, 9),
(3, 2, '/Lists/Completed Hiring Pipeline', 2, 9),
(4, 2, '/Lists/Finished Research Project', 6, 9),
(5, 2, '/Lists/Closed Financial Reports', 8, 9),
(6, 2, '/Lists/Archived Social Media Posts', 5, 9),

-- More deleted list rows (continuing with valid ListColumnSettingObject IDs 1-8)
(7, 3, '/Lists/Team Meetings/Rows/Cancelled All Hands', 6, 7),
(8, 3, '/Lists/Team Meetings/Rows/Postponed Review', 6, 7),
(1, 3, '/Lists/Content Ideas/Rows/Rejected Blog Post', 7, 8),
(2, 3, '/Lists/Content Ideas/Rows/Outdated Video Idea', 7, 8),
(3, 3, '/Lists/Bug Tracking/Rows/Fixed Critical Bug', 8, 1),
(4, 3, '/Lists/Bug Tracking/Rows/Duplicate Report', 8, 1),
(5, 3, '/Lists/Design Tasks/Rows/Completed Logo Design', 9, 2),
(6, 3, '/Lists/Design Tasks/Rows/Rejected Color Scheme', 9, 2),
(7, 3, '/Lists/Customer Feedback/Rows/Resolved Complaint', 10, 3),
(8, 3, '/Lists/Customer Feedback/Rows/Duplicate Feedback', 10, 3),

-- Additional column setting objects (continuing cycle of valid IDs 1-8)
(1, 1, '/Lists/Team Meetings/Columns/Type/Standup', 6, 7),
(2, 1, '/Lists/Team Meetings/Columns/Duration/30min', 6, 7),
(3, 1, '/Lists/Content Ideas/Columns/Platform/Twitter', 7, 8),
(4, 1, '/Lists/Content Ideas/Columns/Audience/Developers', 7, 8),
(5, 1, '/Lists/Bug Tracking/Columns/Severity/Minor', 8, 1),
(6, 1, '/Lists/Bug Tracking/Columns/Browser/Chrome', 8, 1),
(7, 1, '/Lists/Design Tasks/Columns/Tool/Figma', 9, 2),
(8, 1, '/Lists/Design Tasks/Columns/Phase/Wireframe', 9, 2),

-- More deleted lists from different users (continuing cycle of valid IDs 1-8)
(1, 2, '/Lists/Old Event Planning', 4, 10),
(2, 2, '/Lists/Deprecated User Stories', 1, 10),
(3, 2, '/Lists/Archived Test Cases', 8, 10),
(4, 2, '/Lists/Completed Onboarding', 2, 10),
(5, 2, '/Lists/Old Performance Metrics', 6, 10),
(6, 2, '/Lists/Legacy Documentation', 3, 10),
(7, 2, '/Lists/Finished Code Review', 5, 10),
(8, 2, '/Lists/Closed Support Tickets', 10, 10),
(1, 2, '/Lists/Archived Meeting Notes', 7, 10),
(2, 2, '/Lists/Old Project Proposals', 4, 10),

-- Additional deleted rows across various lists (continuing cycle of valid IDs 1-8)
(3, 3, '/Lists/Weekly Report/Rows/Q4 2024 Summary', 4, 1),
(4, 3, '/Lists/Roadmap/Rows/Cancelled Feature X', 1, 2),
(5, 3, '/Lists/Hiring Plan/Rows/Rejected Candidate', 2, 3),
(6, 3, '/Lists/UX Research/Rows/Completed User Survey', 6, 4),
(7, 3, '/Lists/Financials/Rows/Old Budget Line', 8, 5),
(8, 3, '/Lists/Social Media/Rows/Expired Campaign', 5, 6),
(1, 3, '/Lists/Feature Requests/Rows/Implemented Feature', 3, 7),
(2, 3, '/Lists/QA Checklist/Rows/Obsolete Test', 10, 8),
(3, 3, '/Lists/Launch Plan/Rows/Cancelled Launch', 7, 9),
(4, 3, '/Lists/User Interviews/Rows/Completed Interview', 9, 10),

-- Final batch of diverse deleted items (cycling through valid ListColumnSettingObject IDs 1-8)
(5, 1, '/Lists/DevOps Tasks/Columns/Environment/Staging', 6, 1),
(6, 1, '/Lists/Partner Outreach/Columns/Status/Contacted', 4, 2),
(7, 1, '/Lists/Press Kit/Columns/Type/Press Release', 2, 3),
(8, 1, '/Lists/Ad Campaign/Columns/Platform/Facebook', 1, 4),
(1, 1, '/Lists/Meeting Notes/Columns/Action/Follow-up', 5, 5),
(2, 1, '/Lists/Internal Tools/Columns/Access/Admin', 7, 6),
(3, 1, '/Lists/Training Plan/Columns/Level/Beginner', 8, 7),
(4, 1, '/Lists/Customer Onboarding/Columns/Step/Welcome', 3, 8),
(5, 1, '/Lists/Team Activities/Columns/Type/Team Building', 10, 9),
(6, 1, '/Lists/Support Queue/Columns/Priority/Low', 9, 10);

