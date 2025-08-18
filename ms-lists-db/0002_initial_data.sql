USE MicrosoftLists;
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
IF EXISTS (SELECT 1 FROM ListColumnObject) BEGIN DELETE FROM ListColumnObject; DBCC CHECKIDENT ('ListColumnObject', RESEED, 0); END
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
INSERT INTO Account (FirstName, LastName, Email, AccountPassword, Avatar, Company, AccountRole, AccountStatus)
VALUES 
('Alice', 'Nguyen', 'alice.nguyen@example.com', 'pass1234', 'https://example.com/avatar1.jpg', 'TechCorp', null, 'Active'),
('Bob', 'Tran', 'bob.tran@example.com', 'pass2345', 'https://example.com/avatar2.jpg', 'InnoSoft', null, 'Active'),
('Charlie', 'Le', 'charlie.le@example.com', 'pass3456', 'https://example.com/avatar3.jpg', 'VietDev', null, 'Inactive'),
('Daisy', 'Pham', 'daisy.pham@example.com', 'pass4567', 'https://example.com/avatar4.jpg', 'FPT', null, 'Active'),
('Evan', 'Vo', 'evan.vo@example.com', 'pass5678', 'https://example.com/avatar5.jpg', 'CMC', null, 'Active'),
('Fiona', 'Bui', 'fiona.bui@example.com', 'pass6789', 'https://example.com/avatar6.jpg', 'TMA', null, 'Active'),
('George', 'Dang', 'george.dang@example.com', 'pass7890', 'https://example.com/avatar7.jpg', 'AxonActive', null, 'Active'),
('Hannah', 'Ngo', 'hannah.ngo@example.com', 'pass8901', 'https://example.com/avatar8.jpg', 'NashTech', null, 'Inactive'),
('Ian', 'Hoang', 'ian.hoang@example.com', 'pass9012', 'https://example.com/avatar9.jpg', 'GlobalSoft', null, 'Active'),
('Jane', 'Truong', 'jane.truong@example.com', 'pass0123', 'https://example.com/avatar10.jpg', 'Toshiba', null, 'Active');

-- Insert into Account (1000 rows)
INSERT INTO Account (FirstName, LastName, Email, AccountPassword, Avatar, Company, AccountRole, AccountStatus)
VALUES 
('Paula', 'Vo', 'paula.vo1@example.com', 'pass0001', 'https://example.com/avatar1z.jpg', 'CMC', NULL, 'Active'),
('Zara', 'Bui', 'zara.bui2@example.com', 'pass0002', 'https://example.com/avatar2z.jpg', 'CMC', NULL, 'Active'),
('Ximena', 'Bui', 'ximena.bui3@example.com', 'pass0003', 'https://example.com/avatar3z.jpg', 'CMC', NULL, 'Active'),
('Rachel', 'Tran', 'rachel.tran4@example.com', 'pass0004', 'https://example.com/avatar4z.jpg', 'TMA', 'Student', 'Inactive'),
('Fiona', 'Ngo', 'fiona.ngo5@example.com', 'pass0005', 'https://example.com/avatar5z.jpg', 'TMA', NULL, 'Active'),
('Yvonne', 'Truong', 'yvonne.truong6@example.com', 'pass0006', 'https://example.com/avatar6z.jpg', 'CMC', NULL, 'Active'),
('Aaron', 'Bui', 'aaron.bui7@example.com', 'pass0007', 'https://example.com/avatar7z.jpg', 'CMC', NULL, 'Active'),
('Kevin', 'Tran', 'kevin.tran8@example.com', 'pass0008', 'https://example.com/avatar8z.jpg', 'TMA', NULL, 'Active'),
('Charlie', 'Pham', 'charlie.pham9@example.com', 'pass0009', 'https://example.com/avatar9z.jpg', 'NashTech', 'Student', 'Active'),
('Hailey', 'Vo', 'hailey.vo10@example.com', 'pass0010', 'https://example.com/avatar10z.jpg', 'NashTech', 'Teacher', 'Active'),
('Jasmine', 'Le', 'jasmine.le11@example.com', 'pass0011', 'https://example.com/avatar11.jpg', 'CMC', NULL, 'Active'),
('Jane', 'Hoang', 'jane.hoang12@example.com', 'pass0012', 'https://example.com/avatar12.jpg', 'TMA', NULL, 'Inactive'),
('Yvonne', 'Nguyen', 'yvonne.nguyen13@example.com', 'pass0013', 'https://example.com/avatar13.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Nina', 'Vo', 'nina.vo14@example.com', 'pass0014', 'https://example.com/avatar14.jpg', 'GlobalSoft', 'Teacher', 'Inactive'),
('Linda', 'Le', 'linda.le15@example.com', 'pass0015', 'https://example.com/avatar15.jpg', 'VietDev', NULL, 'Inactive'),
('Yuri', 'Truong', 'yuri.truong16@example.com', 'pass0016', 'https://example.com/avatar16.jpg', 'Toshiba', 'Teacher', 'Inactive'),
('Carter', 'Bui', 'carter.bui17@example.com', 'pass0017', 'https://example.com/avatar17.jpg', 'TMA', NULL, 'Active'),
('Mason', 'Truong', 'mason.truong18@example.com', 'pass0018', 'https://example.com/avatar18.jpg', 'CMC', 'Student', 'Inactive'),
('Oliver', 'Nguyen', 'oliver.nguyen19@example.com', 'pass0019', 'https://example.com/avatar19.jpg', 'AxonActive', 'Student', 'Inactive'),
('Mason', 'Ngo', 'mason.ngo20@example.com', 'pass0020', 'https://example.com/avatar20.jpg', 'AxonActive', 'Student', 'Inactive'),
('Tina', 'Bui', 'tina.bui21@example.com', 'pass0021', 'https://example.com/avatar21.jpg', 'CMC', NULL, 'Inactive'),
('Oliver', 'Truong', 'oliver.truong22@example.com', 'pass0022', 'https://example.com/avatar22.jpg', 'TMA', 'Student', 'Active'),
('Gavin', 'Tran', 'gavin.tran23@example.com', 'pass0023', 'https://example.com/avatar23.jpg', 'CMC', 'Student', 'Active'),
('Michael', 'Truong', 'michael.truong24@example.com', 'pass0024', 'https://example.com/avatar24.jpg', 'TMA', NULL, 'Inactive'),
('Yuri', 'Truong', 'yuri.truong25@example.com', 'pass0025', 'https://example.com/avatar25.jpg', 'InnoSoft', 'Student', 'Inactive'),
('Bob', 'Tran', 'bob.tran26@example.com', 'pass0026', 'https://example.com/avatar26.jpg', 'InnoSoft', NULL, 'Active'),
('Zara', 'Ngo', 'zara.ngo27@example.com', 'pass0027', 'https://example.com/avatar27.jpg', 'FPT', 'Teacher', 'Active'),
('Nina', 'Bui', 'nina.bui28@example.com', 'pass0028', 'https://example.com/avatar28.jpg', 'TechCorp', 'Student', 'Inactive'),
('Xavier', 'Dang', 'xavier.dang29@example.com', 'pass0029', 'https://example.com/avatar29.jpg', 'Toshiba', 'Student', 'Active'),
('Thomas', 'Le', 'thomas.le30@example.com', 'pass0030', 'https://example.com/avatar30.jpg', 'FPT', NULL, 'Active'),
('Carter', 'Le', 'carter.le31@example.com', 'pass0031', 'https://example.com/avatar31.jpg', 'Toshiba', NULL, 'Active'),
('Thomas', 'Ngo', 'thomas.ngo32@example.com', 'pass0032', 'https://example.com/avatar32.jpg', 'VietDev', NULL, 'Inactive'),
('Sophia', 'Le', 'sophia.le33@example.com', 'pass0033', 'https://example.com/avatar33.jpg', 'CMC', NULL, 'Inactive'),
('George', 'Ngo', 'george.ngo34@example.com', 'pass0034', 'https://example.com/avatar34.jpg', 'Toshiba', NULL, 'Active'),
('Bella', 'Tran', 'bella.tran35@example.com', 'pass0035', 'https://example.com/avatar35.jpg', 'NashTech', NULL, 'Inactive'),
('Hailey', 'Le', 'hailey.le36@example.com', 'pass0036', 'https://example.com/avatar36.jpg', 'Toshiba', NULL, 'Inactive'),
('Daisy', 'Ngo', 'daisy.ngo37@example.com', 'pass0037', 'https://example.com/avatar37.jpg', 'VietDev', NULL, 'Inactive'),
('Bob', 'Nguyen', 'bob.nguyen38@example.com', 'pass0038', 'https://example.com/avatar38.jpg', 'TechCorp', NULL, 'Active'),
('Evan', 'Le', 'evan.le39@example.com', 'pass0039', 'https://example.com/avatar39.jpg', 'FPT', NULL, 'Active'),
('Bob', 'Bui', 'bob.bui40@example.com', 'pass0040', 'https://example.com/avatar40.jpg', 'CMC', 'Student', 'Active'),
('Alice', 'Dang', 'alice.dang41@example.com', 'pass0041', 'https://example.com/avatar41.jpg', 'Toshiba', 'Teacher', 'Inactive'),
('Linda', 'Tran', 'linda.tran42@example.com', 'pass0042', 'https://example.com/avatar42.jpg', 'TMA', NULL, 'Inactive'),
('Sophia', 'Pham', 'sophia.pham43@example.com', 'pass0043', 'https://example.com/avatar43.jpg', 'GlobalSoft', NULL, 'Active'),
('Aaron', 'Vo', 'aaron.vo44@example.com', 'pass0044', 'https://example.com/avatar44.jpg', 'TechCorp', NULL, 'Inactive'),
('Nina', 'Pham', 'nina.pham45@example.com', 'pass0045', 'https://example.com/avatar45.jpg', 'CMC', 'Student', 'Active'),
('Carter', 'Ngo', 'carter.ngo46@example.com', 'pass0046', 'https://example.com/avatar46.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Faith', 'Tran', 'faith.tran47@example.com', 'pass0047', 'https://example.com/avatar47.jpg', 'FPT', NULL, 'Inactive'),
('Hailey', 'Vo', 'hailey.vo48@example.com', 'pass0048', 'https://example.com/avatar48.jpg', 'CMC', 'Student', 'Inactive'),
('Michael', 'Truong', 'michael.truong49@example.com', 'pass0049', 'https://example.com/avatar49.jpg', 'NashTech', NULL, 'Active'),
('Fiona', 'Bui', 'fiona.bui50@example.com', 'pass0050', 'https://example.com/avatar50.jpg', 'TechCorp', NULL, 'Inactive'),
('Jane', 'Bui', 'jane.bui51@example.com', 'pass0051', 'https://example.com/avatar51.jpg', 'CMC', 'Teacher', 'Active'),
('Aaron', 'Dang', 'aaron.dang52@example.com', 'pass0052', 'https://example.com/avatar52.jpg', 'TechCorp', NULL, 'Inactive'),
('Bob', 'Dang', 'bob.dang53@example.com', 'pass0053', 'https://example.com/avatar53.jpg', 'NashTech', NULL, 'Active'),
('Donna', 'Hoang', 'donna.hoang54@example.com', 'pass0054', 'https://example.com/avatar54.jpg', 'NashTech', 'Student', 'Active'),
('Penny', 'Pham', 'penny.pham55@example.com', 'pass0055', 'https://example.com/avatar55.jpg', 'TMA', 'Teacher', 'Active'),
('Paula', 'Dang', 'paula.dang56@example.com', 'pass0056', 'https://example.com/avatar56.jpg', 'CMC', 'Student', 'Active'),
('Michael', 'Le', 'michael.le57@example.com', 'pass0057', 'https://example.com/avatar57.jpg', 'Toshiba', 'Student', 'Inactive'),
('Oscar', 'Truong', 'oscar.truong58@example.com', 'pass0058', 'https://example.com/avatar58.jpg', 'VietDev', NULL, 'Inactive'),
('Steven', 'Vo', 'steven.vo59@example.com', 'pass0059', 'https://example.com/avatar59.jpg', 'GlobalSoft', 'Teacher', 'Inactive'),
('Charlie', 'Vo', 'charlie.vo60@example.com', 'pass0060', 'https://example.com/avatar60.jpg', 'CMC', 'Teacher', 'Inactive'),
('Linda', 'Vo', 'linda.vo61@example.com', 'pass0061', 'https://example.com/avatar61.jpg', 'AxonActive', 'Teacher', 'Inactive'),
('Charlie', 'Nguyen', 'charlie.nguyen62@example.com', 'pass0062', 'https://example.com/avatar62.jpg', 'Toshiba', 'Teacher', 'Active'),
('Naomi', 'Ngo', 'naomi.ngo63@example.com', 'pass0063', 'https://example.com/avatar63.jpg', 'FPT', NULL, 'Inactive'),
('Ray', 'Ngo', 'ray.ngo64@example.com', 'pass0064', 'https://example.com/avatar64.jpg', 'CMC', 'Teacher', 'Active'),
('Xavier', 'Truong', 'xavier.truong65@example.com', 'pass0065', 'https://example.com/avatar65.jpg', 'NashTech', NULL, 'Active'),
('Kevin', 'Dang', 'kevin.dang66@example.com', 'pass0066', 'https://example.com/avatar66.jpg', 'FPT', NULL, 'Active'),
('Tina', 'Pham', 'tina.pham67@example.com', 'pass0067', 'https://example.com/avatar67.jpg', 'InnoSoft', 'Student', 'Inactive'),
('Victor', 'Le', 'victor.le68@example.com', 'pass0068', 'https://example.com/avatar68.jpg', 'AxonActive', 'Student', 'Active'),
('Zane', 'Le', 'zane.le69@example.com', 'pass0069', 'https://example.com/avatar69.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Aaron', 'Vo', 'aaron.vo70@example.com', 'pass0070', 'https://example.com/avatar70.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Daisy', 'Pham', 'daisy.pham71@example.com', 'pass0071', 'https://example.com/avatar71.jpg', 'TechCorp', 'Student', 'Inactive'),
('Yuri', 'Dang', 'yuri.dang72@example.com', 'pass0072', 'https://example.com/avatar72.jpg', 'NashTech', 'Student', 'Inactive'),
('Michael', 'Nguyen', 'michael.nguyen73@example.com', 'pass0073', 'https://example.com/avatar73.jpg', 'FPT', 'Teacher', 'Active'),
('Ximena', 'Hoang', 'ximena.hoang74@example.com', 'pass0074', 'https://example.com/avatar74.jpg', 'Toshiba', NULL, 'Active'),
('Carter', 'Vo', 'carter.vo75@example.com', 'pass0075', 'https://example.com/avatar75.jpg', 'GlobalSoft', 'Teacher', 'Inactive'),
('Oliver', 'Truong', 'oliver.truong76@example.com', 'pass0076', 'https://example.com/avatar76.jpg', 'AxonActive', NULL, 'Inactive'),
('Steven', 'Hoang', 'steven.hoang77@example.com', 'pass0077', 'https://example.com/avatar77.jpg', 'FPT', 'Teacher', 'Inactive'),
('William', 'Tran', 'william.tran78@example.com', 'pass0078', 'https://example.com/avatar78.jpg', 'AxonActive', 'Student', 'Active'),
('Tina', 'Ngo', 'tina.ngo79@example.com', 'pass0079', 'https://example.com/avatar79.jpg', 'TechCorp', 'Teacher', 'Active'),
('Bob', 'Nguyen', 'bob.nguyen80@example.com', 'pass0080', 'https://example.com/avatar80.jpg', 'AxonActive', 'Student', 'Inactive'),
('Paula', 'Nguyen', 'paula.nguyen81@example.com', 'pass0081', 'https://example.com/avatar81.jpg', 'TechCorp', NULL, 'Active'),
('Quinn', 'Dang', 'quinn.dang82@example.com', 'pass0082', 'https://example.com/avatar82.jpg', 'VietDev', NULL, 'Active'),
('Donna', 'Tran', 'donna.tran83@example.com', 'pass0083', 'https://example.com/avatar83.jpg', 'Toshiba', 'Student', 'Active'),
('Charlie', 'Hoang', 'charlie.hoang84@example.com', 'pass0084', 'https://example.com/avatar84.jpg', 'Toshiba', NULL, 'Active'),
('Tina', 'Truong', 'tina.truong85@example.com', 'pass0085', 'https://example.com/avatar85.jpg', 'TMA', 'Teacher', 'Active'),
('Hailey', 'Tran', 'hailey.tran86@example.com', 'pass0086', 'https://example.com/avatar86.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Fiona', 'Ngo', 'fiona.ngo87@example.com', 'pass0087', 'https://example.com/avatar87.jpg', 'AxonActive', NULL, 'Active'),
('Ian', 'Nguyen', 'ian.nguyen88@example.com', 'pass0088', 'https://example.com/avatar88.jpg', 'CMC', 'Student', 'Active'),
('Quinn', 'Tran', 'quinn.tran89@example.com', 'pass0089', 'https://example.com/avatar89.jpg', 'TMA', 'Student', 'Active'),
('Oliver', 'Dang', 'oliver.dang90@example.com', 'pass0090', 'https://example.com/avatar90.jpg', 'VietDev', 'Student', 'Active'),
('Rachel', 'Vo', 'rachel.vo91@example.com', 'pass0091', 'https://example.com/avatar91.jpg', 'GlobalSoft', 'Teacher', 'Inactive'),
('Linda', 'Truong', 'linda.truong92@example.com', 'pass0092', 'https://example.com/avatar92.jpg', 'AxonActive', NULL, 'Active'),
('Kyle', 'Vo', 'kyle.vo93@example.com', 'pass0093', 'https://example.com/avatar93.jpg', 'AxonActive', 'Teacher', 'Active'),
('Vera', 'Hoang', 'vera.hoang94@example.com', 'pass0094', 'https://example.com/avatar94.jpg', 'TMA', NULL, 'Active'),
('Linda', 'Hoang', 'linda.hoang95@example.com', 'pass0095', 'https://example.com/avatar95.jpg', 'TMA', 'Student', 'Active'),
('Thomas', 'Ngo', 'thomas.ngo96@example.com', 'pass0096', 'https://example.com/avatar96.jpg', 'Toshiba', NULL, 'Inactive'),
('Carter', 'Truong', 'carter.truong97@example.com', 'pass0097', 'https://example.com/avatar97.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Alice', 'Truong', 'alice.truong98@example.com', 'pass0098', 'https://example.com/avatar98.jpg', 'VietDev', NULL, 'Inactive'),
('Paula', 'Hoang', 'paula.hoang99@example.com', 'pass0099', 'https://example.com/avatar99.jpg', 'InnoSoft', NULL, 'Active'),
('Zane', 'Truong', 'zane.truong100@example.com', 'pass0100', 'https://example.com/avatar100.jpg', 'Toshiba', NULL, 'Inactive'),
('William', 'Truong', 'william.truong101@example.com', 'pass0101', 'https://example.com/avatar101.jpg', 'Toshiba', NULL, 'Active'),
('Oliver', 'Ngo', 'oliver.ngo102@example.com', 'pass0102', 'https://example.com/avatar102.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Thomas', 'Bui', 'thomas.bui103@example.com', 'pass0103', 'https://example.com/avatar103.jpg', 'CMC', 'Student', 'Inactive'),
('Fiona', 'Ngo', 'fiona.ngo104@example.com', 'pass0104', 'https://example.com/avatar104.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Hannah', 'Tran', 'hannah.tran105@example.com', 'pass0105', 'https://example.com/avatar105.jpg', 'GlobalSoft', 'Student', 'Inactive'),
('Jasmine', 'Nguyen', 'jasmine.nguyen106@example.com', 'pass0106', 'https://example.com/avatar106.jpg', 'FPT', 'Student', 'Inactive'),
('Zara', 'Pham', 'zara.pham107@example.com', 'pass0107', 'https://example.com/avatar107.jpg', 'FPT', 'Student', 'Active'),
('Zara', 'Nguyen', 'zara.nguyen108@example.com', 'pass0108', 'https://example.com/avatar108.jpg', 'TMA', 'Student', 'Inactive'),
('Paula', 'Hoang', 'paula.hoang109@example.com', 'pass0109', 'https://example.com/avatar109.jpg', 'TMA', NULL, 'Active'),
('Yvonne', 'Nguyen', 'yvonne.nguyen110@example.com', 'pass0110', 'https://example.com/avatar110.jpg', 'InnoSoft', NULL, 'Active'),
('Bella', 'Pham', 'bella.pham111@example.com', 'pass0111', 'https://example.com/avatar111.jpg', 'FPT', 'Student', 'Inactive'),
('Kevin', 'Pham', 'kevin.pham112@example.com', 'pass0112', 'https://example.com/avatar112.jpg', 'InnoSoft', 'Student', 'Active'),
('Laura', 'Pham', 'laura.pham113@example.com', 'pass0113', 'https://example.com/avatar113.jpg', 'AxonActive', NULL, 'Active'),
('Oliver', 'Pham', 'oliver.pham114@example.com', 'pass0114', 'https://example.com/avatar114.jpg', 'InnoSoft', 'Student', 'Inactive'),
('Ray', 'Dang', 'ray.dang115@example.com', 'pass0115', 'https://example.com/avatar115.jpg', 'Toshiba', 'Teacher', 'Active'),
('Oliver', 'Le', 'oliver.le116@example.com', 'pass0116', 'https://example.com/avatar116.jpg', 'VietDev', NULL, 'Active'),
('Rachel', 'Dang', 'rachel.dang117@example.com', 'pass0117', 'https://example.com/avatar117.jpg', 'CMC', NULL, 'Active'),
('Yuri', 'Ngo', 'yuri.ngo118@example.com', 'pass0118', 'https://example.com/avatar118.jpg', 'TechCorp', NULL, 'Inactive'),
('Rachel', 'Dang', 'rachel.dang119@example.com', 'pass0119', 'https://example.com/avatar119.jpg', 'TechCorp', 'Teacher', 'Active'),
('Paula', 'Le', 'paula.le120@example.com', 'pass0120', 'https://example.com/avatar120.jpg', 'TechCorp', NULL, 'Active'),
('Wendy', 'Tran', 'wendy.tran121@example.com', 'pass0121', 'https://example.com/avatar121.jpg', 'AxonActive', NULL, 'Active'),
('Quinn', 'Tran', 'quinn.tran122@example.com', 'pass0122', 'https://example.com/avatar122.jpg', 'TechCorp', NULL, 'Inactive'),
('Quinn', 'Ngo', 'quinn.ngo123@example.com', 'pass0123', 'https://example.com/avatar123.jpg', 'NashTech', NULL, 'Active'),
('Alice', 'Hoang', 'alice.hoang124@example.com', 'pass0124', 'https://example.com/avatar124.jpg', 'TMA', NULL, 'Active'),
('Faith', 'Le', 'faith.le125@example.com', 'pass0125', 'https://example.com/avatar125.jpg', 'FPT', NULL, 'Inactive'),
('Sophia', 'Pham', 'sophia.pham126@example.com', 'pass0126', 'https://example.com/avatar126.jpg', 'InnoSoft', NULL, 'Active'),
('Kevin', 'Le', 'kevin.le127@example.com', 'pass0127', 'https://example.com/avatar127.jpg', 'InnoSoft', NULL, 'Inactive'),
('Sophia', 'Pham', 'sophia.pham128@example.com', 'pass0128', 'https://example.com/avatar128.jpg', 'FPT', NULL, 'Inactive'),
('Aaron', 'Truong', 'aaron.truong129@example.com', 'pass0129', 'https://example.com/avatar129.jpg', 'AxonActive', 'Student', 'Inactive'),
('Elliot', 'Truong', 'elliot.truong130@example.com', 'pass0130', 'https://example.com/avatar130.jpg', 'GlobalSoft', 'Teacher', 'Inactive'),
('George', 'Bui', 'george.bui131@example.com', 'pass0131', 'https://example.com/avatar131.jpg', 'AxonActive', NULL, 'Inactive'),
('Nina', 'Le', 'nina.le132@example.com', 'pass0132', 'https://example.com/avatar132.jpg', 'FPT', 'Student', 'Inactive'),
('Isaac', 'Le', 'isaac.le133@example.com', 'pass0133', 'https://example.com/avatar133.jpg', 'TMA', 'Teacher', 'Active'),
('Bob', 'Hoang', 'bob.hoang134@example.com', 'pass0134', 'https://example.com/avatar134.jpg', 'NashTech', NULL, 'Inactive'),
('Paula', 'Truong', 'paula.truong135@example.com', 'pass0135', 'https://example.com/avatar135.jpg', 'TMA', NULL, 'Active'),
('Naomi', 'Ngo', 'naomi.ngo136@example.com', 'pass0136', 'https://example.com/avatar136.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Faith', 'Pham', 'faith.pham137@example.com', 'pass0137', 'https://example.com/avatar137.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Zara', 'Ngo', 'zara.ngo138@example.com', 'pass0138', 'https://example.com/avatar138.jpg', 'CMC', 'Student', 'Inactive'),
('Oscar', 'Le', 'oscar.le139@example.com', 'pass0139', 'https://example.com/avatar139.jpg', 'FPT', NULL, 'Inactive'),
('Penny', 'Vo', 'penny.vo140@example.com', 'pass0140', 'https://example.com/avatar140.jpg', 'CMC', 'Teacher', 'Inactive'),
('Yuri', 'Le', 'yuri.le141@example.com', 'pass0141', 'https://example.com/avatar141.jpg', 'TMA', 'Student', 'Inactive'),
('Uma', 'Le', 'uma.le142@example.com', 'pass0142', 'https://example.com/avatar142.jpg', 'InnoSoft', NULL, 'Inactive'),
('Fiona', 'Bui', 'fiona.bui143@example.com', 'pass0143', 'https://example.com/avatar143.jpg', 'TMA', 'Teacher', 'Inactive'),
('Vera', 'Truong', 'vera.truong144@example.com', 'pass0144', 'https://example.com/avatar144.jpg', 'FPT', NULL, 'Inactive'),
('Bob', 'Hoang', 'bob.hoang145@example.com', 'pass0145', 'https://example.com/avatar145.jpg', 'AxonActive', 'Student', 'Active'),
('Nina', 'Pham', 'nina.pham146@example.com', 'pass0146', 'https://example.com/avatar146.jpg', 'CMC', 'Teacher', 'Active'),
('Uma', 'Pham', 'uma.pham147@example.com', 'pass0147', 'https://example.com/avatar147.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Sophia', 'Bui', 'sophia.bui148@example.com', 'pass0148', 'https://example.com/avatar148.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Carter', 'Tran', 'carter.tran149@example.com', 'pass0149', 'https://example.com/avatar149.jpg', 'CMC', 'Teacher', 'Inactive'),
('George', 'Ngo', 'george.ngo150@example.com', 'pass0150', 'https://example.com/avatar150.jpg', 'NashTech', NULL, 'Inactive'),
('Oliver', 'Dang', 'oliver.dang151@example.com', 'pass0151', 'https://example.com/avatar151.jpg', 'NashTech', NULL, 'Active'),
('Thomas', 'Dang', 'thomas.dang152@example.com', 'pass0152', 'https://example.com/avatar152.jpg', 'CMC', 'Teacher', 'Inactive'),
('George', 'Dang', 'george.dang153@example.com', 'pass0153', 'https://example.com/avatar153.jpg', 'NashTech', 'Student', 'Active'),
('Alice', 'Ngo', 'alice.ngo154@example.com', 'pass0154', 'https://example.com/avatar154.jpg', 'GlobalSoft', NULL, 'Active'),
('Vera', 'Dang', 'vera.dang155@example.com', 'pass0155', 'https://example.com/avatar155.jpg', 'AxonActive', 'Teacher', 'Inactive'),
('Sophia', 'Tran', 'sophia.tran156@example.com', 'pass0156', 'https://example.com/avatar156.jpg', 'Toshiba', 'Student', 'Inactive'),
('Yuri', 'Truong', 'yuri.truong157@example.com', 'pass0157', 'https://example.com/avatar157.jpg', 'Toshiba', 'Student', 'Active'),
('Carter', 'Nguyen', 'carter.nguyen158@example.com', 'pass0158', 'https://example.com/avatar158.jpg', 'InnoSoft', NULL, 'Inactive'),
('Zara', 'Bui', 'zara.bui159@example.com', 'pass0159', 'https://example.com/avatar159.jpg', 'VietDev', NULL, 'Active'),
('Isaac', 'Le', 'isaac.le160@example.com', 'pass0160', 'https://example.com/avatar160.jpg', 'VietDev', NULL, 'Inactive'),
('Zara', 'Tran', 'zara.tran161@example.com', 'pass0161', 'https://example.com/avatar161.jpg', 'TMA', 'Teacher', 'Inactive'),
('Yuri', 'Tran', 'yuri.tran162@example.com', 'pass0162', 'https://example.com/avatar162.jpg', 'AxonActive', NULL, 'Inactive'),
('Elliot', 'Bui', 'elliot.bui163@example.com', 'pass0163', 'https://example.com/avatar163.jpg', 'TMA', NULL, 'Active'),
('Carter', 'Le', 'carter.le164@example.com', 'pass0164', 'https://example.com/avatar164.jpg', 'NashTech', 'Student', 'Active'),
('Linda', 'Ngo', 'linda.ngo165@example.com', 'pass0165', 'https://example.com/avatar165.jpg', 'NashTech', NULL, 'Inactive'),
('Mason', 'Truong', 'mason.truong166@example.com', 'pass0166', 'https://example.com/avatar166.jpg', 'TMA', NULL, 'Inactive'),
('Carter', 'Hoang', 'carter.hoang167@example.com', 'pass0167', 'https://example.com/avatar167.jpg', 'AxonActive', NULL, 'Active'),
('Uma', 'Pham', 'uma.pham168@example.com', 'pass0168', 'https://example.com/avatar168.jpg', 'TechCorp', 'Student', 'Active'),
('Paula', 'Nguyen', 'paula.nguyen169@example.com', 'pass0169', 'https://example.com/avatar169.jpg', 'Toshiba', 'Student', 'Active'),
('Linda', 'Le', 'linda.le170@example.com', 'pass0170', 'https://example.com/avatar170.jpg', 'AxonActive', 'Teacher', 'Active'),
('Jasmine', 'Vo', 'jasmine.vo171@example.com', 'pass0171', 'https://example.com/avatar171.jpg', 'TechCorp', 'Student', 'Inactive'),
('William', 'Nguyen', 'william.nguyen172@example.com', 'pass0172', 'https://example.com/avatar172.jpg', 'CMC', 'Student', 'Active'),
('Fiona', 'Le', 'fiona.le173@example.com', 'pass0173', 'https://example.com/avatar173.jpg', 'InnoSoft', NULL, 'Active'),
('Nina', 'Vo', 'nina.vo174@example.com', 'pass0174', 'https://example.com/avatar174.jpg', 'Toshiba', NULL, 'Inactive'),
('Sophia', 'Hoang', 'sophia.hoang175@example.com', 'pass0175', 'https://example.com/avatar175.jpg', 'TechCorp', NULL, 'Active'),
('Charlie', 'Bui', 'charlie.bui176@example.com', 'pass0176', 'https://example.com/avatar176.jpg', 'GlobalSoft', NULL, 'Active'),
('William', 'Le', 'william.le177@example.com', 'pass0177', 'https://example.com/avatar177.jpg', 'Toshiba', 'Teacher', 'Active'),
('Daisy', 'Ngo', 'daisy.ngo178@example.com', 'pass0178', 'https://example.com/avatar178.jpg', 'InnoSoft', 'Student', 'Active'),
('Gavin', 'Nguyen', 'gavin.nguyen179@example.com', 'pass0179', 'https://example.com/avatar179.jpg', 'VietDev', NULL, 'Inactive'),
('Zane', 'Bui', 'zane.bui180@example.com', 'pass0180', 'https://example.com/avatar180.jpg', 'GlobalSoft', NULL, 'Active'),
('Charlie', 'Tran', 'charlie.tran181@example.com', 'pass0181', 'https://example.com/avatar181.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Linda', 'Bui', 'linda.bui182@example.com', 'pass0182', 'https://example.com/avatar182.jpg', 'TMA', 'Student', 'Active'),
('Elliot', 'Ngo', 'elliot.ngo183@example.com', 'pass0183', 'https://example.com/avatar183.jpg', 'NashTech', NULL, 'Inactive'),
('Linda', 'Nguyen', 'linda.nguyen184@example.com', 'pass0184', 'https://example.com/avatar184.jpg', 'Toshiba', 'Student', 'Active'),
('Kyle', 'Bui', 'kyle.bui185@example.com', 'pass0185', 'https://example.com/avatar185.jpg', 'Toshiba', 'Teacher', 'Active'),
('Ray', 'Pham', 'ray.pham186@example.com', 'pass0186', 'https://example.com/avatar186.jpg', 'AxonActive', 'Teacher', 'Active'),
('Hailey', 'Tran', 'hailey.tran187@example.com', 'pass0187', 'https://example.com/avatar187.jpg', 'Toshiba', 'Teacher', 'Inactive'),
('Kyle', 'Tran', 'kyle.tran188@example.com', 'pass0188', 'https://example.com/avatar188.jpg', 'Toshiba', 'Student', 'Active'),
('Oscar', 'Nguyen', 'oscar.nguyen189@example.com', 'pass0189', 'https://example.com/avatar189.jpg', 'TMA', NULL, 'Inactive'),
('Oscar', 'Pham', 'oscar.pham190@example.com', 'pass0190', 'https://example.com/avatar190.jpg', 'AxonActive', NULL, 'Active'),
('Yvonne', 'Vo', 'yvonne.vo191@example.com', 'pass0191', 'https://example.com/avatar191.jpg', 'VietDev', 'Teacher', 'Active'),
('Naomi', 'Truong', 'naomi.truong192@example.com', 'pass0192', 'https://example.com/avatar192.jpg', 'VietDev', NULL, 'Active'),
('Bella', 'Pham', 'bella.pham193@example.com', 'pass0193', 'https://example.com/avatar193.jpg', 'FPT', NULL, 'Inactive'),
('Charlie', 'Ngo', 'charlie.ngo194@example.com', 'pass0194', 'https://example.com/avatar194.jpg', 'CMC', NULL, 'Inactive'),
('William', 'Ngo', 'william.ngo195@example.com', 'pass0195', 'https://example.com/avatar195.jpg', 'Toshiba', NULL, 'Inactive'),
('Jasmine', 'Dang', 'jasmine.dang196@example.com', 'pass0196', 'https://example.com/avatar196.jpg', 'TMA', 'Teacher', 'Active'),
('Linda', 'Hoang', 'linda.hoang197@example.com', 'pass0197', 'https://example.com/avatar197.jpg', 'NashTech', 'Student', 'Active'),
('Bob', 'Ngo', 'bob.ngo198@example.com', 'pass0198', 'https://example.com/avatar198.jpg', 'TMA', 'Student', 'Active'),
('Rachel', 'Hoang', 'rachel.hoang199@example.com', 'pass0199', 'https://example.com/avatar199.jpg', 'GlobalSoft', NULL, 'Active'),
('Nina', 'Nguyen', 'nina.nguyen200@example.com', 'pass0200', 'https://example.com/avatar200.jpg', 'NashTech', 'Student', 'Inactive'),
('Fiona', 'Hoang', 'fiona.hoang201@example.com', 'pass0201', 'https://example.com/avatar201.jpg', 'VietDev', NULL, 'Active'),
('Hannah', 'Tran', 'hannah.tran202@example.com', 'pass0202', 'https://example.com/avatar202.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Charlie', 'Vo', 'charlie.vo203@example.com', 'pass0203', 'https://example.com/avatar203.jpg', 'FPT', NULL, 'Inactive'),
('Kyle', 'Nguyen', 'kyle.nguyen204@example.com', 'pass0204', 'https://example.com/avatar204.jpg', 'CMC', 'Teacher', 'Active'),
('Fiona', 'Nguyen', 'fiona.nguyen205@example.com', 'pass0205', 'https://example.com/avatar205.jpg', 'FPT', 'Student', 'Inactive'),
('Ray', 'Le', 'ray.le206@example.com', 'pass0206', 'https://example.com/avatar206.jpg', 'AxonActive', 'Teacher', 'Active'),
('Kevin', 'Hoang', 'kevin.hoang207@example.com', 'pass0207', 'https://example.com/avatar207.jpg', 'NashTech', 'Student', 'Active'),
('Charlie', 'Tran', 'charlie.tran208@example.com', 'pass0208', 'https://example.com/avatar208.jpg', 'TechCorp', NULL, 'Inactive'),
('Paula', 'Nguyen', 'paula.nguyen209@example.com', 'pass0209', 'https://example.com/avatar209.jpg', 'VietDev', 'Student', 'Active'),
('Charlie', 'Vo', 'charlie.vo210@example.com', 'pass0210', 'https://example.com/avatar210.jpg', 'TechCorp', NULL, 'Active'),
('Oscar', 'Ngo', 'oscar.ngo211@example.com', 'pass0211', 'https://example.com/avatar211.jpg', 'NashTech', NULL, 'Inactive'),
('Nina', 'Hoang', 'nina.hoang212@example.com', 'pass0212', 'https://example.com/avatar212.jpg', 'VietDev', NULL, 'Inactive'),
('Ian', 'Truong', 'ian.truong213@example.com', 'pass0213', 'https://example.com/avatar213.jpg', 'CMC', NULL, 'Active'),
('Xavier', 'Truong', 'xavier.truong214@example.com', 'pass0214', 'https://example.com/avatar214.jpg', 'TMA', NULL, 'Inactive'),
('Daisy', 'Dang', 'daisy.dang215@example.com', 'pass0215', 'https://example.com/avatar215.jpg', 'AxonActive', 'Teacher', 'Active'),
('Steven', 'Hoang', 'steven.hoang216@example.com', 'pass0216', 'https://example.com/avatar216.jpg', 'TMA', 'Student', 'Inactive'),
('Elliot', 'Pham', 'elliot.pham217@example.com', 'pass0217', 'https://example.com/avatar217.jpg', 'CMC', NULL, 'Active'),
('Rachel', 'Ngo', 'rachel.ngo218@example.com', 'pass0218', 'https://example.com/avatar218.jpg', 'VietDev', 'Student', 'Inactive'),
('Xavier', 'Pham', 'xavier.pham219@example.com', 'pass0219', 'https://example.com/avatar219.jpg', 'CMC', NULL, 'Inactive'),
('Nina', 'Pham', 'nina.pham220@example.com', 'pass0220', 'https://example.com/avatar220.jpg', 'TechCorp', NULL, 'Inactive'),
('Aaron', 'Le', 'aaron.le221@example.com', 'pass0221', 'https://example.com/avatar221.jpg', 'InnoSoft', NULL, 'Active'),
('Jane', 'Bui', 'jane.bui222@example.com', 'pass0222', 'https://example.com/avatar222.jpg', 'Toshiba', NULL, 'Active'),
('Daisy', 'Ngo', 'daisy.ngo223@example.com', 'pass0223', 'https://example.com/avatar223.jpg', 'TMA', NULL, 'Inactive'),
('Evan', 'Hoang', 'evan.hoang224@example.com', 'pass0224', 'https://example.com/avatar224.jpg', 'TMA', NULL, 'Inactive'),
('Michael', 'Ngo', 'michael.ngo225@example.com', 'pass0225', 'https://example.com/avatar225.jpg', 'TMA', 'Teacher', 'Active'),
('Faith', 'Dang', 'faith.dang226@example.com', 'pass0226', 'https://example.com/avatar226.jpg', 'TMA', NULL, 'Inactive'),
('Isaac', 'Tran', 'isaac.tran227@example.com', 'pass0227', 'https://example.com/avatar227.jpg', 'GlobalSoft', NULL, 'Active'),
('Faith', 'Bui', 'faith.bui228@example.com', 'pass0228', 'https://example.com/avatar228.jpg', 'FPT', NULL, 'Active'),
('Kyle', 'Tran', 'kyle.tran229@example.com', 'pass0229', 'https://example.com/avatar229.jpg', 'NashTech', NULL, 'Inactive'),
('Charlie', 'Bui', 'charlie.bui230@example.com', 'pass0230', 'https://example.com/avatar230.jpg', 'Toshiba', NULL, 'Active'),
('Zara', 'Tran', 'zara.tran231@example.com', 'pass0231', 'https://example.com/avatar231.jpg', 'Toshiba', NULL, 'Active'),
('Laura', 'Nguyen', 'laura.nguyen232@example.com', 'pass0232', 'https://example.com/avatar232.jpg', 'Toshiba', NULL, 'Inactive'),
('Oscar', 'Le', 'oscar.le233@example.com', 'pass0233', 'https://example.com/avatar233.jpg', 'AxonActive', NULL, 'Active'),
('Fiona', 'Vo', 'fiona.vo234@example.com', 'pass0234', 'https://example.com/avatar234.jpg', 'TMA', 'Student', 'Active'),
('Rachel', 'Le', 'rachel.le235@example.com', 'pass0235', 'https://example.com/avatar235.jpg', 'FPT', NULL, 'Active'),
('Laura', 'Le', 'laura.le236@example.com', 'pass0236', 'https://example.com/avatar236.jpg', 'TechCorp', NULL, 'Active'),
('Aaron', 'Hoang', 'aaron.hoang237@example.com', 'pass0237', 'https://example.com/avatar237.jpg', 'TechCorp', NULL, 'Inactive'),
('Evan', 'Hoang', 'evan.hoang238@example.com', 'pass0238', 'https://example.com/avatar238.jpg', 'FPT', NULL, 'Active'),
('Victor', 'Vo', 'victor.vo239@example.com', 'pass0239', 'https://example.com/avatar239.jpg', 'FPT', 'Student', 'Active'),
('William', 'Truong', 'william.truong240@example.com', 'pass0240', 'https://example.com/avatar240.jpg', 'TechCorp', 'Teacher', 'Inactive'),
('Evan', 'Vo', 'evan.vo241@example.com', 'pass0241', 'https://example.com/avatar241.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Yuri', 'Vo', 'yuri.vo242@example.com', 'pass0242', 'https://example.com/avatar242.jpg', 'TMA', NULL, 'Active'),
('Hannah', 'Bui', 'hannah.bui243@example.com', 'pass0243', 'https://example.com/avatar243.jpg', 'Toshiba', 'Teacher', 'Active'),
('Tina', 'Truong', 'tina.truong244@example.com', 'pass0244', 'https://example.com/avatar244.jpg', 'CMC', 'Student', 'Inactive'),
('Aaron', 'Nguyen', 'aaron.nguyen245@example.com', 'pass0245', 'https://example.com/avatar245.jpg', 'CMC', NULL, 'Active'),
('Aaron', 'Dang', 'aaron.dang246@example.com', 'pass0246', 'https://example.com/avatar246.jpg', 'VietDev', NULL, 'Inactive'),
('Penny', 'Vo', 'penny.vo247@example.com', 'pass0247', 'https://example.com/avatar247.jpg', 'TechCorp', NULL, 'Active'),
('Ian', 'Tran', 'ian.tran248@example.com', 'pass0248', 'https://example.com/avatar248.jpg', 'TechCorp', NULL, 'Active'),
('Yvonne', 'Truong', 'yvonne.truong249@example.com', 'pass0249', 'https://example.com/avatar249.jpg', 'TMA', 'Student', 'Inactive'),
('Thomas', 'Vo', 'thomas.vo250@example.com', 'pass0250', 'https://example.com/avatar250.jpg', 'TMA', NULL, 'Active'),
('Vera', 'Bui', 'vera.bui251@example.com', 'pass0251', 'https://example.com/avatar251.jpg', 'TMA', 'Teacher', 'Active'),
('Oliver', 'Truong', 'oliver.truong252@example.com', 'pass0252', 'https://example.com/avatar252.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Hailey', 'Truong', 'hailey.truong253@example.com', 'pass0253', 'https://example.com/avatar253.jpg', 'VietDev', 'Teacher', 'Inactive'),
('William', 'Hoang', 'william.hoang254@example.com', 'pass0254', 'https://example.com/avatar254.jpg', 'InnoSoft', NULL, 'Inactive'),
('Charlie', 'Le', 'charlie.le255@example.com', 'pass0255', 'https://example.com/avatar255.jpg', 'TMA', 'Teacher', 'Inactive'),
('Laura', 'Truong', 'laura.truong256@example.com', 'pass0256', 'https://example.com/avatar256.jpg', 'CMC', 'Teacher', 'Inactive'),
('Nina', 'Vo', 'nina.vo257@example.com', 'pass0257', 'https://example.com/avatar257.jpg', 'AxonActive', NULL, 'Inactive'),
('Paula', 'Hoang', 'paula.hoang258@example.com', 'pass0258', 'https://example.com/avatar258.jpg', 'CMC', 'Teacher', 'Active'),
('Nina', 'Nguyen', 'nina.nguyen259@example.com', 'pass0259', 'https://example.com/avatar259.jpg', 'NashTech', NULL, 'Inactive'),
('Zane', 'Tran', 'zane.tran260@example.com', 'pass0260', 'https://example.com/avatar260.jpg', 'NashTech', NULL, 'Inactive'),
('Mason', 'Tran', 'mason.tran261@example.com', 'pass0261', 'https://example.com/avatar261.jpg', 'TechCorp', 'Student', 'Active'),
('Daisy', 'Hoang', 'daisy.hoang262@example.com', 'pass0262', 'https://example.com/avatar262.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Wendy', 'Le', 'wendy.le263@example.com', 'pass0263', 'https://example.com/avatar263.jpg', 'TechCorp', NULL, 'Inactive'),
('Carter', 'Tran', 'carter.tran264@example.com', 'pass0264', 'https://example.com/avatar264.jpg', 'TechCorp', 'Teacher', 'Inactive'),
('Yuri', 'Pham', 'yuri.pham265@example.com', 'pass0265', 'https://example.com/avatar265.jpg', 'FPT', 'Student', 'Active'),
('Sophia', 'Pham', 'sophia.pham266@example.com', 'pass0266', 'https://example.com/avatar266.jpg', 'InnoSoft', NULL, 'Active'),
('Fiona', 'Bui', 'fiona.bui267@example.com', 'pass0267', 'https://example.com/avatar267.jpg', 'FPT', 'Teacher', 'Active'),
('Laura', 'Tran', 'laura.tran268@example.com', 'pass0268', 'https://example.com/avatar268.jpg', 'FPT', 'Student', 'Inactive'),
('Hannah', 'Bui', 'hannah.bui269@example.com', 'pass0269', 'https://example.com/avatar269.jpg', 'CMC', 'Teacher', 'Inactive'),
('Yuri', 'Nguyen', 'yuri.nguyen270@example.com', 'pass0270', 'https://example.com/avatar270.jpg', 'Toshiba', 'Student', 'Inactive'),
('Michael', 'Ngo', 'michael.ngo271@example.com', 'pass0271', 'https://example.com/avatar271.jpg', 'Toshiba', NULL, 'Active'),
('Oliver', 'Tran', 'oliver.tran272@example.com', 'pass0272', 'https://example.com/avatar272.jpg', 'TMA', 'Teacher', 'Active'),
('Laura', 'Pham', 'laura.pham273@example.com', 'pass0273', 'https://example.com/avatar273.jpg', 'Toshiba', NULL, 'Active'),
('Yuri', 'Truong', 'yuri.truong274@example.com', 'pass0274', 'https://example.com/avatar274.jpg', 'InnoSoft', 'Student', 'Active'),
('Linda', 'Truong', 'linda.truong275@example.com', 'pass0275', 'https://example.com/avatar275.jpg', 'Toshiba', 'Teacher', 'Active'),
('Hailey', 'Le', 'hailey.le276@example.com', 'pass0276', 'https://example.com/avatar276.jpg', 'VietDev', NULL, 'Active'),
('Linda', 'Truong', 'linda.truong277@example.com', 'pass0277', 'https://example.com/avatar277.jpg', 'FPT', NULL, 'Active'),
('Wendy', 'Vo', 'wendy.vo278@example.com', 'pass0278', 'https://example.com/avatar278.jpg', 'VietDev', 'Teacher', 'Inactive'),
('William', 'Le', 'william.le279@example.com', 'pass0279', 'https://example.com/avatar279.jpg', 'NashTech', NULL, 'Inactive'),
('Evan', 'Le', 'evan.le280@example.com', 'pass0280', 'https://example.com/avatar280.jpg', 'TechCorp', 'Student', 'Inactive'),
('Oliver', 'Le', 'oliver.le281@example.com', 'pass0281', 'https://example.com/avatar281.jpg', 'TechCorp', NULL, 'Active'),
('Thomas', 'Bui', 'thomas.bui282@example.com', 'pass0282', 'https://example.com/avatar282.jpg', 'NashTech', NULL, 'Active'),
('Michael', 'Truong', 'michael.truong283@example.com', 'pass0283', 'https://example.com/avatar283.jpg', 'TMA', 'Teacher', 'Inactive'),
('Uma', 'Nguyen', 'uma.nguyen284@example.com', 'pass0284', 'https://example.com/avatar284.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Charlie', 'Vo', 'charlie.vo285@example.com', 'pass0285', 'https://example.com/avatar285.jpg', 'FPT', 'Student', 'Inactive'),
('Naomi', 'Tran', 'naomi.tran286@example.com', 'pass0286', 'https://example.com/avatar286.jpg', 'VietDev', NULL, 'Active'),
('Naomi', 'Dang', 'naomi.dang287@example.com', 'pass0287', 'https://example.com/avatar287.jpg', 'FPT', NULL, 'Inactive'),
('Oliver', 'Pham', 'oliver.pham288@example.com', 'pass0288', 'https://example.com/avatar288.jpg', 'InnoSoft', NULL, 'Inactive'),
('Sophia', 'Bui', 'sophia.bui289@example.com', 'pass0289', 'https://example.com/avatar289.jpg', 'FPT', NULL, 'Active'),
('Naomi', 'Pham', 'naomi.pham290@example.com', 'pass0290', 'https://example.com/avatar290.jpg', 'InnoSoft', NULL, 'Active'),
('Carter', 'Vo', 'carter.vo291@example.com', 'pass0291', 'https://example.com/avatar291.jpg', 'Toshiba', NULL, 'Active'),
('Kevin', 'Dang', 'kevin.dang292@example.com', 'pass0292', 'https://example.com/avatar292.jpg', 'Toshiba', 'Student', 'Inactive'),
('Nina', 'Le', 'nina.le293@example.com', 'pass0293', 'https://example.com/avatar293.jpg', 'AxonActive', NULL, 'Active'),
('Carter', 'Nguyen', 'carter.nguyen294@example.com', 'pass0294', 'https://example.com/avatar294.jpg', 'FPT', 'Teacher', 'Active'),
('Bella', 'Bui', 'bella.bui295@example.com', 'pass0295', 'https://example.com/avatar295.jpg', 'InnoSoft', 'Student', 'Active'),
('Fiona', 'Le', 'fiona.le296@example.com', 'pass0296', 'https://example.com/avatar296.jpg', 'FPT', 'Teacher', 'Active'),
('Sophia', 'Hoang', 'sophia.hoang297@example.com', 'pass0297', 'https://example.com/avatar297.jpg', 'CMC', NULL, 'Inactive'),
('Oscar', 'Truong', 'oscar.truong298@example.com', 'pass0298', 'https://example.com/avatar298.jpg', 'TechCorp', 'Student', 'Active'),
('Charlie', 'Tran', 'charlie.tran299@example.com', 'pass0299', 'https://example.com/avatar299.jpg', 'CMC', 'Teacher', 'Inactive'),
('Zane', 'Bui', 'zane.bui300@example.com', 'pass0300', 'https://example.com/avatar300.jpg', 'NashTech', NULL, 'Active'),
('Yvonne', 'Vo', 'yvonne.vo301@example.com', 'pass0301', 'https://example.com/avatar301.jpg', 'TMA', NULL, 'Active'),
('Michael', 'Hoang', 'michael.hoang302@example.com', 'pass0302', 'https://example.com/avatar302.jpg', 'VietDev', 'Student', 'Active'),
('Daisy', 'Le', 'daisy.le303@example.com', 'pass0303', 'https://example.com/avatar303.jpg', 'FPT', NULL, 'Inactive'),
('Paula', 'Le', 'paula.le304@example.com', 'pass0304', 'https://example.com/avatar304.jpg', 'TMA', NULL, 'Inactive'),
('Faith', 'Truong', 'faith.truong305@example.com', 'pass0305', 'https://example.com/avatar305.jpg', 'InnoSoft', 'Student', 'Active'),
('Uma', 'Vo', 'uma.vo306@example.com', 'pass0306', 'https://example.com/avatar306.jpg', 'VietDev', 'Student', 'Active'),
('Bella', 'Nguyen', 'bella.nguyen307@example.com', 'pass0307', 'https://example.com/avatar307.jpg', 'NashTech', 'Teacher', 'Active'),
('Steven', 'Bui', 'steven.bui308@example.com', 'pass0308', 'https://example.com/avatar308.jpg', 'Toshiba', 'Student', 'Active'),
('Uma', 'Vo', 'uma.vo309@example.com', 'pass0309', 'https://example.com/avatar309.jpg', 'TechCorp', NULL, 'Active'),
('Aaron', 'Ngo', 'aaron.ngo310@example.com', 'pass0310', 'https://example.com/avatar310.jpg', 'NashTech', NULL, 'Active'),
('Faith', 'Pham', 'faith.pham311@example.com', 'pass0311', 'https://example.com/avatar311.jpg', 'AxonActive', 'Teacher', 'Active'),
('Sophia', 'Truong', 'sophia.truong312@example.com', 'pass0312', 'https://example.com/avatar312.jpg', 'TechCorp', NULL, 'Inactive'),
('Yvonne', 'Vo', 'yvonne.vo313@example.com', 'pass0313', 'https://example.com/avatar313.jpg', 'Toshiba', 'Student', 'Active'),
('Bob', 'Hoang', 'bob.hoang314@example.com', 'pass0314', 'https://example.com/avatar314.jpg', 'TechCorp', 'Student', 'Inactive'),
('Sophia', 'Dang', 'sophia.dang315@example.com', 'pass0315', 'https://example.com/avatar315.jpg', 'TechCorp', 'Teacher', 'Inactive'),
('Paula', 'Ngo', 'paula.ngo316@example.com', 'pass0316', 'https://example.com/avatar316.jpg', 'NashTech', NULL, 'Active'),
('Mason', 'Tran', 'mason.tran317@example.com', 'pass0317', 'https://example.com/avatar317.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Hailey', 'Vo', 'hailey.vo318@example.com', 'pass0318', 'https://example.com/avatar318.jpg', 'CMC', NULL, 'Active'),
('Michael', 'Bui', 'michael.bui319@example.com', 'pass0319', 'https://example.com/avatar319.jpg', 'InnoSoft', NULL, 'Active'),
('Jane', 'Ngo', 'jane.ngo320@example.com', 'pass0320', 'https://example.com/avatar320.jpg', 'TechCorp', 'Teacher', 'Active'),
('Zane', 'Vo', 'zane.vo321@example.com', 'pass0321', 'https://example.com/avatar321.jpg', 'TechCorp', NULL, 'Active'),
('Jane', 'Ngo', 'jane.ngo322@example.com', 'pass0322', 'https://example.com/avatar322.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Vera', 'Truong', 'vera.truong323@example.com', 'pass0323', 'https://example.com/avatar323.jpg', 'Toshiba', 'Teacher', 'Active'),
('Ray', 'Hoang', 'ray.hoang324@example.com', 'pass0324', 'https://example.com/avatar324.jpg', 'TechCorp', 'Teacher', 'Inactive'),
('Penny', 'Le', 'penny.le325@example.com', 'pass0325', 'https://example.com/avatar325.jpg', 'CMC', NULL, 'Inactive'),
('Uma', 'Truong', 'uma.truong326@example.com', 'pass0326', 'https://example.com/avatar326.jpg', 'TMA', 'Student', 'Active'),
('Sophia', 'Le', 'sophia.le327@example.com', 'pass0327', 'https://example.com/avatar327.jpg', 'VietDev', NULL, 'Inactive'),
('William', 'Vo', 'william.vo328@example.com', 'pass0328', 'https://example.com/avatar328.jpg', 'CMC', 'Student', 'Inactive'),
('Fiona', 'Pham', 'fiona.pham329@example.com', 'pass0329', 'https://example.com/avatar329.jpg', 'Toshiba', NULL, 'Active'),
('Zara', 'Bui', 'zara.bui330@example.com', 'pass0330', 'https://example.com/avatar330.jpg', 'AxonActive', NULL, 'Inactive'),
('Hannah', 'Bui', 'hannah.bui331@example.com', 'pass0331', 'https://example.com/avatar331.jpg', 'Toshiba', NULL, 'Active'),
('Paula', 'Hoang', 'paula.hoang332@example.com', 'pass0332', 'https://example.com/avatar332.jpg', 'GlobalSoft', 'Student', 'Active'),
('Ian', 'Truong', 'ian.truong333@example.com', 'pass0333', 'https://example.com/avatar333.jpg', 'TMA', 'Student', 'Active'),
('William', 'Le', 'william.le334@example.com', 'pass0334', 'https://example.com/avatar334.jpg', 'FPT', 'Teacher', 'Active'),
('Ximena', 'Bui', 'ximena.bui335@example.com', 'pass0335', 'https://example.com/avatar335.jpg', 'TMA', 'Teacher', 'Inactive'),
('Ian', 'Le', 'ian.le336@example.com', 'pass0336', 'https://example.com/avatar336.jpg', 'FPT', 'Teacher', 'Inactive'),
('Zara', 'Hoang', 'zara.hoang337@example.com', 'pass0337', 'https://example.com/avatar337.jpg', 'AxonActive', 'Student', 'Inactive'),
('Michael', 'Hoang', 'michael.hoang338@example.com', 'pass0338', 'https://example.com/avatar338.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Linda', 'Dang', 'linda.dang339@example.com', 'pass0339', 'https://example.com/avatar339.jpg', 'TMA', 'Student', 'Active'),
('Linda', 'Dang', 'linda.dang340@example.com', 'pass0340', 'https://example.com/avatar340.jpg', 'CMC', NULL, 'Active'),
('Yuri', 'Bui', 'yuri.bui341@example.com', 'pass0341', 'https://example.com/avatar341.jpg', 'FPT', NULL, 'Active'),
('Victor', 'Tran', 'victor.tran342@example.com', 'pass0342', 'https://example.com/avatar342.jpg', 'AxonActive', 'Teacher', 'Inactive'),
('Steven', 'Bui', 'steven.bui343@example.com', 'pass0343', 'https://example.com/avatar343.jpg', 'CMC', 'Teacher', 'Inactive'),
('Daisy', 'Bui', 'daisy.bui344@example.com', 'pass0344', 'https://example.com/avatar344.jpg', 'GlobalSoft', NULL, 'Active'),
('Steven', 'Bui', 'steven.bui345@example.com', 'pass0345', 'https://example.com/avatar345.jpg', 'InnoSoft', 'Student', 'Active'),
('Aaron', 'Hoang', 'aaron.hoang346@example.com', 'pass0346', 'https://example.com/avatar346.jpg', 'TMA', NULL, 'Active'),
('George', 'Tran', 'george.tran347@example.com', 'pass0347', 'https://example.com/avatar347.jpg', 'CMC', 'Student', 'Active'),
('Mason', 'Pham', 'mason.pham348@example.com', 'pass0348', 'https://example.com/avatar348.jpg', 'GlobalSoft', NULL, 'Active'),
('Hailey', 'Bui', 'hailey.bui349@example.com', 'pass0349', 'https://example.com/avatar349.jpg', 'InnoSoft', NULL, 'Inactive'),
('Ian', 'Dang', 'ian.dang350@example.com', 'pass0350', 'https://example.com/avatar350.jpg', 'TechCorp', NULL, 'Inactive'),
('Vera', 'Bui', 'vera.bui351@example.com', 'pass0351', 'https://example.com/avatar351.jpg', 'NashTech', 'Student', 'Active'),
('Quinn', 'Tran', 'quinn.tran352@example.com', 'pass0352', 'https://example.com/avatar352.jpg', 'CMC', NULL, 'Active'),
('Evan', 'Tran', 'evan.tran353@example.com', 'pass0353', 'https://example.com/avatar353.jpg', 'AxonActive', NULL, 'Inactive'),
('Mason', 'Ngo', 'mason.ngo354@example.com', 'pass0354', 'https://example.com/avatar354.jpg', 'TMA', 'Student', 'Inactive'),
('Ian', 'Hoang', 'ian.hoang355@example.com', 'pass0355', 'https://example.com/avatar355.jpg', 'VietDev', NULL, 'Active'),
('Gavin', 'Nguyen', 'gavin.nguyen356@example.com', 'pass0356', 'https://example.com/avatar356.jpg', 'TechCorp', NULL, 'Inactive'),
('Michael', 'Truong', 'michael.truong357@example.com', 'pass0357', 'https://example.com/avatar357.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Laura', 'Le', 'laura.le358@example.com', 'pass0358', 'https://example.com/avatar358.jpg', 'VietDev', NULL, 'Active'),
('Fiona', 'Vo', 'fiona.vo359@example.com', 'pass0359', 'https://example.com/avatar359.jpg', 'TMA', 'Teacher', 'Inactive'),
('Alice', 'Pham', 'alice.pham360@example.com', 'pass0360', 'https://example.com/avatar360.jpg', 'CMC', NULL, 'Active'),
('Linda', 'Dang', 'linda.dang361@example.com', 'pass0361', 'https://example.com/avatar361.jpg', 'AxonActive', NULL, 'Inactive'),
('Vera', 'Ngo', 'vera.ngo362@example.com', 'pass0362', 'https://example.com/avatar362.jpg', 'NashTech', NULL, 'Inactive'),
('Penny', 'Le', 'penny.le363@example.com', 'pass0363', 'https://example.com/avatar363.jpg', 'CMC', NULL, 'Inactive'),
('George', 'Hoang', 'george.hoang364@example.com', 'pass0364', 'https://example.com/avatar364.jpg', 'FPT', NULL, 'Active'),
('Victor', 'Truong', 'victor.truong365@example.com', 'pass0365', 'https://example.com/avatar365.jpg', 'CMC', 'Teacher', 'Inactive'),
('Elliot', 'Vo', 'elliot.vo366@example.com', 'pass0366', 'https://example.com/avatar366.jpg', 'NashTech', NULL, 'Active'),
('Charlie', 'Dang', 'charlie.dang367@example.com', 'pass0367', 'https://example.com/avatar367.jpg', 'TechCorp', NULL, 'Active'),
('Paula', 'Ngo', 'paula.ngo368@example.com', 'pass0368', 'https://example.com/avatar368.jpg', 'Toshiba', 'Student', 'Inactive'),
('Aaron', 'Hoang', 'aaron.hoang369@example.com', 'pass0369', 'https://example.com/avatar369.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Paula', 'Ngo', 'paula.ngo370@example.com', 'pass0370', 'https://example.com/avatar370.jpg', 'NashTech', 'Teacher', 'Active'),
('Bob', 'Nguyen', 'bob.nguyen371@example.com', 'pass0371', 'https://example.com/avatar371.jpg', 'CMC', NULL, 'Inactive'),
('Alice', 'Vo', 'alice.vo372@example.com', 'pass0372', 'https://example.com/avatar372.jpg', 'FPT', 'Student', 'Inactive'),
('Uma', 'Nguyen', 'uma.nguyen373@example.com', 'pass0373', 'https://example.com/avatar373.jpg', 'TMA', NULL, 'Active'),
('Penny', 'Hoang', 'penny.hoang374@example.com', 'pass0374', 'https://example.com/avatar374.jpg', 'AxonActive', NULL, 'Inactive'),
('Vera', 'Le', 'vera.le375@example.com', 'pass0375', 'https://example.com/avatar375.jpg', 'Toshiba', NULL, 'Inactive'),
('Zane', 'Dang', 'zane.dang376@example.com', 'pass0376', 'https://example.com/avatar376.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Vera', 'Hoang', 'vera.hoang377@example.com', 'pass0377', 'https://example.com/avatar377.jpg', 'AxonActive', 'Teacher', 'Inactive'),
('Sophia', 'Ngo', 'sophia.ngo378@example.com', 'pass0378', 'https://example.com/avatar378.jpg', 'Toshiba', 'Student', 'Inactive'),
('Zara', 'Truong', 'zara.truong379@example.com', 'pass0379', 'https://example.com/avatar379.jpg', 'VietDev', NULL, 'Active'),
('Paula', 'Hoang', 'paula.hoang380@example.com', 'pass0380', 'https://example.com/avatar380.jpg', 'InnoSoft', NULL, 'Active'),
('Paula', 'Pham', 'paula.pham381@example.com', 'pass0381', 'https://example.com/avatar381.jpg', 'NashTech', NULL, 'Active'),
('Paula', 'Vo', 'paula.vo382@example.com', 'pass0382', 'https://example.com/avatar382.jpg', 'AxonActive', 'Student', 'Inactive'),
('George', 'Vo', 'george.vo383@example.com', 'pass0383', 'https://example.com/avatar383.jpg', 'TMA', 'Student', 'Active'),
('Kyle', 'Bui', 'kyle.bui384@example.com', 'pass0384', 'https://example.com/avatar384.jpg', 'FPT', NULL, 'Active'),
('Carter', 'Nguyen', 'carter.nguyen385@example.com', 'pass0385', 'https://example.com/avatar385.jpg', 'InnoSoft', NULL, 'Inactive'),
('Laura', 'Nguyen', 'laura.nguyen386@example.com', 'pass0386', 'https://example.com/avatar386.jpg', 'VietDev', NULL, 'Active'),
('Linda', 'Nguyen', 'linda.nguyen387@example.com', 'pass0387', 'https://example.com/avatar387.jpg', 'TechCorp', 'Student', 'Active'),
('Kevin', 'Nguyen', 'kevin.nguyen388@example.com', 'pass0388', 'https://example.com/avatar388.jpg', 'TechCorp', NULL, 'Active'),
('Fiona', 'Tran', 'fiona.tran389@example.com', 'pass0389', 'https://example.com/avatar389.jpg', 'VietDev', 'Teacher', 'Active'),
('Aaron', 'Nguyen', 'aaron.nguyen390@example.com', 'pass0390', 'https://example.com/avatar390.jpg', 'TechCorp', NULL, 'Inactive'),
('Ray', 'Pham', 'ray.pham391@example.com', 'pass0391', 'https://example.com/avatar391.jpg', 'FPT', NULL, 'Active'),
('Sophia', 'Nguyen', 'sophia.nguyen392@example.com', 'pass0392', 'https://example.com/avatar392.jpg', 'TMA', 'Student', 'Active'),
('Elliot', 'Le', 'elliot.le393@example.com', 'pass0393', 'https://example.com/avatar393.jpg', 'VietDev', 'Student', 'Active'),
('Linda', 'Tran', 'linda.tran394@example.com', 'pass0394', 'https://example.com/avatar394.jpg', 'FPT', NULL, 'Active'),
('Tina', 'Vo', 'tina.vo395@example.com', 'pass0395', 'https://example.com/avatar395.jpg', 'VietDev', NULL, 'Active'),
('Zane', 'Tran', 'zane.tran396@example.com', 'pass0396', 'https://example.com/avatar396.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Uma', 'Le', 'uma.le397@example.com', 'pass0397', 'https://example.com/avatar397.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Evan', 'Hoang', 'evan.hoang398@example.com', 'pass0398', 'https://example.com/avatar398.jpg', 'TMA', NULL, 'Active'),
('Tina', 'Hoang', 'tina.hoang399@example.com', 'pass0399', 'https://example.com/avatar399.jpg', 'GlobalSoft', NULL, 'Active'),
('Elliot', 'Bui', 'elliot.bui400@example.com', 'pass0400', 'https://example.com/avatar400.jpg', 'Toshiba', NULL, 'Inactive'),
('Zane', 'Tran', 'zane.tran401@example.com', 'pass0401', 'https://example.com/avatar401.jpg', 'TechCorp', 'Teacher', 'Inactive'),
('Sophia', 'Dang', 'sophia.dang402@example.com', 'pass0402', 'https://example.com/avatar402.jpg', 'AxonActive', NULL, 'Active'),
('Mason', 'Pham', 'mason.pham403@example.com', 'pass0403', 'https://example.com/avatar403.jpg', 'TMA', 'Teacher', 'Inactive'),
('Charlie', 'Nguyen', 'charlie.nguyen404@example.com', 'pass0404', 'https://example.com/avatar404.jpg', 'TMA', NULL, 'Active'),
('Hannah', 'Le', 'hannah.le405@example.com', 'pass0405', 'https://example.com/avatar405.jpg', 'Toshiba', NULL, 'Active'),
('Ian', 'Hoang', 'ian.hoang406@example.com', 'pass0406', 'https://example.com/avatar406.jpg', 'InnoSoft', 'Student', 'Active'),
('Jane', 'Hoang', 'jane.hoang407@example.com', 'pass0407', 'https://example.com/avatar407.jpg', 'AxonActive', NULL, 'Inactive'),
('Steven', 'Hoang', 'steven.hoang408@example.com', 'pass0408', 'https://example.com/avatar408.jpg', 'Toshiba', NULL, 'Inactive'),
('Yuri', 'Bui', 'yuri.bui409@example.com', 'pass0409', 'https://example.com/avatar409.jpg', 'InnoSoft', 'Student', 'Inactive'),
('Aaron', 'Hoang', 'aaron.hoang410@example.com', 'pass0410', 'https://example.com/avatar410.jpg', 'InnoSoft', NULL, 'Active'),
('Steven', 'Hoang', 'steven.hoang411@example.com', 'pass0411', 'https://example.com/avatar411.jpg', 'AxonActive', 'Teacher', 'Inactive'),
('Bob', 'Hoang', 'bob.hoang412@example.com', 'pass0412', 'https://example.com/avatar412.jpg', 'NashTech', NULL, 'Active'),
('Tina', 'Le', 'tina.le413@example.com', 'pass0413', 'https://example.com/avatar413.jpg', 'TechCorp', 'Student', 'Active'),
('Hannah', 'Nguyen', 'hannah.nguyen414@example.com', 'pass0414', 'https://example.com/avatar414.jpg', 'VietDev', 'Teacher', 'Active'),
('Jane', 'Tran', 'jane.tran415@example.com', 'pass0415', 'https://example.com/avatar415.jpg', 'Toshiba', 'Teacher', 'Active'),
('Gavin', 'Ngo', 'gavin.ngo416@example.com', 'pass0416', 'https://example.com/avatar416.jpg', 'InnoSoft', NULL, 'Active'),
('Yuri', 'Dang', 'yuri.dang417@example.com', 'pass0417', 'https://example.com/avatar417.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Ximena', 'Pham', 'ximena.pham418@example.com', 'pass0418', 'https://example.com/avatar418.jpg', 'VietDev', 'Student', 'Inactive'),
('Laura', 'Tran', 'laura.tran419@example.com', 'pass0419', 'https://example.com/avatar419.jpg', 'InnoSoft', NULL, 'Active'),
('Xavier', 'Hoang', 'xavier.hoang420@example.com', 'pass0420', 'https://example.com/avatar420.jpg', 'NashTech', NULL, 'Inactive'),
('Yuri', 'Ngo', 'yuri.ngo421@example.com', 'pass0421', 'https://example.com/avatar421.jpg', 'CMC', NULL, 'Inactive'),
('Linda', 'Nguyen', 'linda.nguyen422@example.com', 'pass0422', 'https://example.com/avatar422.jpg', 'NashTech', 'Teacher', 'Active'),
('Quinn', 'Dang', 'quinn.dang423@example.com', 'pass0423', 'https://example.com/avatar423.jpg', 'Toshiba', 'Teacher', 'Active'),
('Faith', 'Hoang', 'faith.hoang424@example.com', 'pass0424', 'https://example.com/avatar424.jpg', 'Toshiba', 'Student', 'Inactive'),
('Rachel', 'Pham', 'rachel.pham425@example.com', 'pass0425', 'https://example.com/avatar425.jpg', 'GlobalSoft', 'Teacher', 'Inactive'),
('Oliver', 'Pham', 'oliver.pham426@example.com', 'pass0426', 'https://example.com/avatar426.jpg', 'CMC', 'Teacher', 'Active'),
('Paula', 'Vo', 'paula.vo427@example.com', 'pass0427', 'https://example.com/avatar427.jpg', 'GlobalSoft', 'Student', 'Active'),
('Bella', 'Le', 'bella.le428@example.com', 'pass0428', 'https://example.com/avatar428.jpg', 'Toshiba', 'Teacher', 'Active'),
('Sophia', 'Tran', 'sophia.tran429@example.com', 'pass0429', 'https://example.com/avatar429.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Steven', 'Ngo', 'steven.ngo430@example.com', 'pass0430', 'https://example.com/avatar430.jpg', 'CMC', 'Student', 'Active'),
('Penny', 'Nguyen', 'penny.nguyen431@example.com', 'pass0431', 'https://example.com/avatar431.jpg', 'InnoSoft', NULL, 'Active'),
('Gavin', 'Le', 'gavin.le432@example.com', 'pass0432', 'https://example.com/avatar432.jpg', 'InnoSoft', 'Student', 'Active'),
('Zara', 'Pham', 'zara.pham433@example.com', 'pass0433', 'https://example.com/avatar433.jpg', 'Toshiba', NULL, 'Active'),
('Kevin', 'Bui', 'kevin.bui434@example.com', 'pass0434', 'https://example.com/avatar434.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Victor', 'Dang', 'victor.dang435@example.com', 'pass0435', 'https://example.com/avatar435.jpg', 'FPT', NULL, 'Active'),
('Quinn', 'Nguyen', 'quinn.nguyen436@example.com', 'pass0436', 'https://example.com/avatar436.jpg', 'GlobalSoft', 'Student', 'Active'),
('Elliot', 'Ngo', 'elliot.ngo437@example.com', 'pass0437', 'https://example.com/avatar437.jpg', 'Toshiba', 'Teacher', 'Active'),
('Laura', 'Vo', 'laura.vo438@example.com', 'pass0438', 'https://example.com/avatar438.jpg', 'VietDev', 'Teacher', 'Active'),
('Oliver', 'Dang', 'oliver.dang439@example.com', 'pass0439', 'https://example.com/avatar439.jpg', 'NashTech', 'Student', 'Inactive'),
('Paula', 'Dang', 'paula.dang440@example.com', 'pass0440', 'https://example.com/avatar440.jpg', 'TMA', 'Teacher', 'Active'),
('Thomas', 'Le', 'thomas.le441@example.com', 'pass0441', 'https://example.com/avatar441.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Yuri', 'Tran', 'yuri.tran442@example.com', 'pass0442', 'https://example.com/avatar442.jpg', 'FPT', NULL, 'Active'),
('Steven', 'Dang', 'steven.dang443@example.com', 'pass0443', 'https://example.com/avatar443.jpg', 'FPT', 'Student', 'Active'),
('Bella', 'Hoang', 'bella.hoang444@example.com', 'pass0444', 'https://example.com/avatar444.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Quinn', 'Dang', 'quinn.dang445@example.com', 'pass0445', 'https://example.com/avatar445.jpg', 'VietDev', NULL, 'Inactive'),
('Hannah', 'Dang', 'hannah.dang446@example.com', 'pass0446', 'https://example.com/avatar446.jpg', 'GlobalSoft', 'Student', 'Active'),
('Laura', 'Nguyen', 'laura.nguyen447@example.com', 'pass0447', 'https://example.com/avatar447.jpg', 'VietDev', NULL, 'Inactive'),
('Ximena', 'Nguyen', 'ximena.nguyen448@example.com', 'pass0448', 'https://example.com/avatar448.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Quinn', 'Le', 'quinn.le449@example.com', 'pass0449', 'https://example.com/avatar449.jpg', 'Toshiba', NULL, 'Active'),
('Evan', 'Dang', 'evan.dang450@example.com', 'pass0450', 'https://example.com/avatar450.jpg', 'Toshiba', 'Teacher', 'Active'),
('Paula', 'Vo', 'paula.vo451@example.com', 'pass0451', 'https://example.com/avatar451.jpg', 'GlobalSoft', 'Student', 'Active'),
('Penny', 'Vo', 'penny.vo452@example.com', 'pass0452', 'https://example.com/avatar452.jpg', 'AxonActive', 'Teacher', 'Active'),
('Hannah', 'Le', 'hannah.le453@example.com', 'pass0453', 'https://example.com/avatar453.jpg', 'FPT', 'Teacher', 'Active'),
('Victor', 'Tran', 'victor.tran454@example.com', 'pass0454', 'https://example.com/avatar454.jpg', 'Toshiba', NULL, 'Inactive'),
('Donna', 'Vo', 'donna.vo455@example.com', 'pass0455', 'https://example.com/avatar455.jpg', 'TMA', NULL, 'Active'),
('Uma', 'Tran', 'uma.tran456@example.com', 'pass0456', 'https://example.com/avatar456.jpg', 'CMC', 'Teacher', 'Active'),
('Rachel', 'Nguyen', 'rachel.nguyen457@example.com', 'pass0457', 'https://example.com/avatar457.jpg', 'CMC', NULL, 'Active'),
('Fiona', 'Nguyen', 'fiona.nguyen458@example.com', 'pass0458', 'https://example.com/avatar458.jpg', 'GlobalSoft', 'Student', 'Active'),
('Faith', 'Dang', 'faith.dang459@example.com', 'pass0459', 'https://example.com/avatar459.jpg', 'TMA', NULL, 'Inactive'),
('Tina', 'Hoang', 'tina.hoang460@example.com', 'pass0460', 'https://example.com/avatar460.jpg', 'Toshiba', NULL, 'Inactive'),
('Hailey', 'Tran', 'hailey.tran461@example.com', 'pass0461', 'https://example.com/avatar461.jpg', 'CMC', 'Teacher', 'Active'),
('Yuri', 'Dang', 'yuri.dang462@example.com', 'pass0462', 'https://example.com/avatar462.jpg', 'VietDev', NULL, 'Active'),
('Hailey', 'Vo', 'hailey.vo463@example.com', 'pass0463', 'https://example.com/avatar463.jpg', 'TechCorp', 'Student', 'Active'),
('Bob', 'Vo', 'bob.vo464@example.com', 'pass0464', 'https://example.com/avatar464.jpg', 'NashTech', NULL, 'Inactive'),
('Gavin', 'Hoang', 'gavin.hoang465@example.com', 'pass0465', 'https://example.com/avatar465.jpg', 'AxonActive', NULL, 'Inactive'),
('Penny', 'Nguyen', 'penny.nguyen466@example.com', 'pass0466', 'https://example.com/avatar466.jpg', 'FPT', NULL, 'Inactive'),
('Hannah', 'Bui', 'hannah.bui467@example.com', 'pass0467', 'https://example.com/avatar467.jpg', 'TechCorp', 'Teacher', 'Active'),
('Aaron', 'Ngo', 'aaron.ngo468@example.com', 'pass0468', 'https://example.com/avatar468.jpg', 'VietDev', NULL, 'Active'),
('Bob', 'Ngo', 'bob.ngo469@example.com', 'pass0469', 'https://example.com/avatar469.jpg', 'VietDev', NULL, 'Active'),
('Xavier', 'Ngo', 'xavier.ngo470@example.com', 'pass0470', 'https://example.com/avatar470.jpg', 'GlobalSoft', 'Student', 'Active'),
('Naomi', 'Nguyen', 'naomi.nguyen471@example.com', 'pass0471', 'https://example.com/avatar471.jpg', 'TMA', NULL, 'Active'),
('Xavier', 'Vo', 'xavier.vo472@example.com', 'pass0472', 'https://example.com/avatar472.jpg', 'TMA', 'Teacher', 'Active'),
('Bella', 'Pham', 'bella.pham473@example.com', 'pass0473', 'https://example.com/avatar473.jpg', 'TechCorp', NULL, 'Active'),
('Zane', 'Le', 'zane.le474@example.com', 'pass0474', 'https://example.com/avatar474.jpg', 'GlobalSoft', 'Student', 'Inactive'),
('Naomi', 'Ngo', 'naomi.ngo475@example.com', 'pass0475', 'https://example.com/avatar475.jpg', 'VietDev', 'Student', 'Active'),
('Daisy', 'Truong', 'daisy.truong476@example.com', 'pass0476', 'https://example.com/avatar476.jpg', 'FPT', 'Student', 'Inactive'),
('Alice', 'Nguyen', 'alice.nguyen477@example.com', 'pass0477', 'https://example.com/avatar477.jpg', 'NashTech', NULL, 'Inactive'),
('Evan', 'Pham', 'evan.pham478@example.com', 'pass0478', 'https://example.com/avatar478.jpg', 'AxonActive', NULL, 'Active'),
('Evan', 'Vo', 'evan.vo479@example.com', 'pass0479', 'https://example.com/avatar479.jpg', 'TechCorp', 'Student', 'Active'),
('Yvonne', 'Pham', 'yvonne.pham480@example.com', 'pass0480', 'https://example.com/avatar480.jpg', 'NashTech', 'Student', 'Inactive'),
('Ximena', 'Truong', 'ximena.truong481@example.com', 'pass0481', 'https://example.com/avatar481.jpg', 'VietDev', 'Teacher', 'Active'),
('Yvonne', 'Nguyen', 'yvonne.nguyen482@example.com', 'pass0482', 'https://example.com/avatar482.jpg', 'InnoSoft', NULL, 'Active'),
('Michael', 'Ngo', 'michael.ngo483@example.com', 'pass0483', 'https://example.com/avatar483.jpg', 'NashTech', NULL, 'Inactive'),
('Carter', 'Pham', 'carter.pham484@example.com', 'pass0484', 'https://example.com/avatar484.jpg', 'VietDev', NULL, 'Active'),
('Charlie', 'Truong', 'charlie.truong485@example.com', 'pass0485', 'https://example.com/avatar485.jpg', 'InnoSoft', NULL, 'Inactive'),
('Fiona', 'Pham', 'fiona.pham486@example.com', 'pass0486', 'https://example.com/avatar486.jpg', 'TMA', NULL, 'Active'),
('Rachel', 'Nguyen', 'rachel.nguyen487@example.com', 'pass0487', 'https://example.com/avatar487.jpg', 'Toshiba', NULL, 'Active'),
('Bella', 'Hoang', 'bella.hoang488@example.com', 'pass0488', 'https://example.com/avatar488.jpg', 'InnoSoft', NULL, 'Active'),
('Aaron', 'Hoang', 'aaron.hoang489@example.com', 'pass0489', 'https://example.com/avatar489.jpg', 'TechCorp', 'Teacher', 'Inactive'),
('George', 'Le', 'george.le490@example.com', 'pass0490', 'https://example.com/avatar490.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Ray', 'Truong', 'ray.truong491@example.com', 'pass0491', 'https://example.com/avatar491.jpg', 'VietDev', NULL, 'Inactive'),
('Oliver', 'Tran', 'oliver.tran492@example.com', 'pass0492', 'https://example.com/avatar492.jpg', 'Toshiba', NULL, 'Inactive'),
('Sophia', 'Ngo', 'sophia.ngo493@example.com', 'pass0493', 'https://example.com/avatar493.jpg', 'NashTech', NULL, 'Active'),
('Oliver', 'Le', 'oliver.le494@example.com', 'pass0494', 'https://example.com/avatar494.jpg', 'TechCorp', 'Teacher', 'Active'),
('Evan', 'Vo', 'evan.vo495@example.com', 'pass0495', 'https://example.com/avatar495.jpg', 'CMC', NULL, 'Active'),
('Sophia', 'Hoang', 'sophia.hoang496@example.com', 'pass0496', 'https://example.com/avatar496.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Bella', 'Ngo', 'bella.ngo497@example.com', 'pass0497', 'https://example.com/avatar497.jpg', 'TechCorp', 'Teacher', 'Inactive'),
('Penny', 'Le', 'penny.le498@example.com', 'pass0498', 'https://example.com/avatar498.jpg', 'NashTech', NULL, 'Active'),
('Gavin', 'Le', 'gavin.le499@example.com', 'pass0499', 'https://example.com/avatar499.jpg', 'TMA', NULL, 'Active'),
('Yvonne', 'Nguyen', 'yvonne.nguyen500@example.com', 'pass0500', 'https://example.com/avatar500.jpg', 'CMC', 'Student', 'Active'),
('Aaron', 'Nguyen', 'aaron.nguyen501@example.com', 'pass0501', 'https://example.com/avatar501.jpg', 'CMC', 'Teacher', 'Inactive'),
('Nina', 'Bui', 'nina.bui502@example.com', 'pass0502', 'https://example.com/avatar502.jpg', 'Toshiba', NULL, 'Inactive'),
('Penny', 'Hoang', 'penny.hoang503@example.com', 'pass0503', 'https://example.com/avatar503.jpg', 'NashTech', 'Teacher', 'Active'),
('Tina', 'Tran', 'tina.tran504@example.com', 'pass0504', 'https://example.com/avatar504.jpg', 'TMA', NULL, 'Active'),
('Nina', 'Tran', 'nina.tran505@example.com', 'pass0505', 'https://example.com/avatar505.jpg', 'TechCorp', NULL, 'Active'),
('Gavin', 'Vo', 'gavin.vo506@example.com', 'pass0506', 'https://example.com/avatar506.jpg', 'TMA', 'Teacher', 'Inactive'),
('Vera', 'Ngo', 'vera.ngo507@example.com', 'pass0507', 'https://example.com/avatar507.jpg', 'CMC', 'Student', 'Inactive'),
('William', 'Ngo', 'william.ngo508@example.com', 'pass0508', 'https://example.com/avatar508.jpg', 'TechCorp', 'Student', 'Active'),
('Charlie', 'Nguyen', 'charlie.nguyen509@example.com', 'pass0509', 'https://example.com/avatar509.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Mason', 'Hoang', 'mason.hoang510@example.com', 'pass0510', 'https://example.com/avatar510.jpg', 'CMC', NULL, 'Inactive'),
('Thomas', 'Vo', 'thomas.vo511@example.com', 'pass0511', 'https://example.com/avatar511.jpg', 'TechCorp', NULL, 'Inactive'),
('Kevin', 'Le', 'kevin.le512@example.com', 'pass0512', 'https://example.com/avatar512.jpg', 'AxonActive', 'Teacher', 'Inactive'),
('Laura', 'Dang', 'laura.dang513@example.com', 'pass0513', 'https://example.com/avatar513.jpg', 'VietDev', 'Student', 'Active'),
('Zara', 'Dang', 'zara.dang514@example.com', 'pass0514', 'https://example.com/avatar514.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Wendy', 'Hoang', 'wendy.hoang515@example.com', 'pass0515', 'https://example.com/avatar515.jpg', 'InnoSoft', 'Student', 'Inactive'),
('Kyle', 'Tran', 'kyle.tran516@example.com', 'pass0516', 'https://example.com/avatar516.jpg', 'VietDev', NULL, 'Active'),
('Hannah', 'Tran', 'hannah.tran517@example.com', 'pass0517', 'https://example.com/avatar517.jpg', 'AxonActive', NULL, 'Inactive'),
('Zara', 'Truong', 'zara.truong518@example.com', 'pass0518', 'https://example.com/avatar518.jpg', 'FPT', NULL, 'Active'),
('Ximena', 'Le', 'ximena.le519@example.com', 'pass0519', 'https://example.com/avatar519.jpg', 'VietDev', 'Student', 'Inactive'),
('Sophia', 'Tran', 'sophia.tran520@example.com', 'pass0520', 'https://example.com/avatar520.jpg', 'VietDev', NULL, 'Inactive'),
('Vera', 'Pham', 'vera.pham521@example.com', 'pass0521', 'https://example.com/avatar521.jpg', 'TechCorp', NULL, 'Active'),
('Kyle', 'Tran', 'kyle.tran522@example.com', 'pass0522', 'https://example.com/avatar522.jpg', 'FPT', NULL, 'Active'),
('Hailey', 'Tran', 'hailey.tran523@example.com', 'pass0523', 'https://example.com/avatar523.jpg', 'NashTech', NULL, 'Active'),
('Daisy', 'Vo', 'daisy.vo524@example.com', 'pass0524', 'https://example.com/avatar524.jpg', 'TechCorp', NULL, 'Inactive'),
('Thomas', 'Truong', 'thomas.truong525@example.com', 'pass0525', 'https://example.com/avatar525.jpg', 'AxonActive', NULL, 'Active'),
('Zane', 'Bui', 'zane.bui526@example.com', 'pass0526', 'https://example.com/avatar526.jpg', 'Toshiba', NULL, 'Active'),
('George', 'Vo', 'george.vo527@example.com', 'pass0527', 'https://example.com/avatar527.jpg', 'FPT', NULL, 'Active'),
('Daisy', 'Le', 'daisy.le528@example.com', 'pass0528', 'https://example.com/avatar528.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Elliot', 'Bui', 'elliot.bui529@example.com', 'pass0529', 'https://example.com/avatar529.jpg', 'CMC', NULL, 'Active'),
('Tina', 'Truong', 'tina.truong530@example.com', 'pass0530', 'https://example.com/avatar530.jpg', 'InnoSoft', 'Student', 'Active'),
('Bella', 'Tran', 'bella.tran531@example.com', 'pass0531', 'https://example.com/avatar531.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Zane', 'Nguyen', 'zane.nguyen532@example.com', 'pass0532', 'https://example.com/avatar532.jpg', 'TechCorp', NULL, 'Active'),
('Tina', 'Vo', 'tina.vo533@example.com', 'pass0533', 'https://example.com/avatar533.jpg', 'NashTech', NULL, 'Inactive'),
('Kyle', 'Bui', 'kyle.bui534@example.com', 'pass0534', 'https://example.com/avatar534.jpg', 'AxonActive', NULL, 'Active'),
('Xavier', 'Bui', 'xavier.bui535@example.com', 'pass0535', 'https://example.com/avatar535.jpg', 'AxonActive', NULL, 'Active'),
('Sophia', 'Le', 'sophia.le536@example.com', 'pass0536', 'https://example.com/avatar536.jpg', 'FPT', NULL, 'Active'),
('Bob', 'Nguyen', 'bob.nguyen537@example.com', 'pass0537', 'https://example.com/avatar537.jpg', 'Toshiba', 'Teacher', 'Active'),
('Gavin', 'Nguyen', 'gavin.nguyen538@example.com', 'pass0538', 'https://example.com/avatar538.jpg', 'GlobalSoft', NULL, 'Active'),
('Alice', 'Bui', 'alice.bui539@example.com', 'pass0539', 'https://example.com/avatar539.jpg', 'CMC', 'Student', 'Active'),
('Jasmine', 'Ngo', 'jasmine.ngo540@example.com', 'pass0540', 'https://example.com/avatar540.jpg', 'CMC', 'Student', 'Active'),
('Jasmine', 'Vo', 'jasmine.vo541@example.com', 'pass0541', 'https://example.com/avatar541.jpg', 'CMC', 'Teacher', 'Inactive'),
('Rachel', 'Nguyen', 'rachel.nguyen542@example.com', 'pass0542', 'https://example.com/avatar542.jpg', 'Toshiba', 'Teacher', 'Inactive'),
('Hailey', 'Le', 'hailey.le543@example.com', 'pass0543', 'https://example.com/avatar543.jpg', 'NashTech', 'Teacher', 'Active'),
('Victor', 'Truong', 'victor.truong544@example.com', 'pass0544', 'https://example.com/avatar544.jpg', 'VietDev', 'Teacher', 'Active'),
('Laura', 'Nguyen', 'laura.nguyen545@example.com', 'pass0545', 'https://example.com/avatar545.jpg', 'NashTech', NULL, 'Inactive'),
('Yvonne', 'Le', 'yvonne.le546@example.com', 'pass0546', 'https://example.com/avatar546.jpg', 'CMC', 'Teacher', 'Inactive'),
('Quinn', 'Nguyen', 'quinn.nguyen547@example.com', 'pass0547', 'https://example.com/avatar547.jpg', 'AxonActive', 'Teacher', 'Active'),
('Wendy', 'Nguyen', 'wendy.nguyen548@example.com', 'pass0548', 'https://example.com/avatar548.jpg', 'Toshiba', 'Teacher', 'Inactive'),
('Carter', 'Pham', 'carter.pham549@example.com', 'pass0549', 'https://example.com/avatar549.jpg', 'InnoSoft', 'Teacher', 'Active'),
('Gavin', 'Vo', 'gavin.vo550@example.com', 'pass0550', 'https://example.com/avatar550.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Charlie', 'Vo', 'charlie.vo551@example.com', 'pass0551', 'https://example.com/avatar551.jpg', 'Toshiba', NULL, 'Inactive'),
('Elliot', 'Truong', 'elliot.truong552@example.com', 'pass0552', 'https://example.com/avatar552.jpg', 'VietDev', NULL, 'Active'),
('Isaac', 'Le', 'isaac.le553@example.com', 'pass0553', 'https://example.com/avatar553.jpg', 'AxonActive', NULL, 'Active'),
('Jane', 'Pham', 'jane.pham554@example.com', 'pass0554', 'https://example.com/avatar554.jpg', 'CMC', NULL, 'Active'),
('Sophia', 'Hoang', 'sophia.hoang555@example.com', 'pass0555', 'https://example.com/avatar555.jpg', 'TMA', NULL, 'Inactive'),
('Yvonne', 'Dang', 'yvonne.dang556@example.com', 'pass0556', 'https://example.com/avatar556.jpg', 'NashTech', 'Student', 'Active'),
('Laura', 'Tran', 'laura.tran557@example.com', 'pass0557', 'https://example.com/avatar557.jpg', 'CMC', NULL, 'Inactive'),
('Paula', 'Pham', 'paula.pham558@example.com', 'pass0558', 'https://example.com/avatar558.jpg', 'CMC', 'Student', 'Active'),
('Xavier', 'Dang', 'xavier.dang559@example.com', 'pass0559', 'https://example.com/avatar559.jpg', 'CMC', 'Student', 'Inactive'),
('Quinn', 'Hoang', 'quinn.hoang560@example.com', 'pass0560', 'https://example.com/avatar560.jpg', 'VietDev', 'Student', 'Inactive'),
('Alice', 'Ngo', 'alice.ngo561@example.com', 'pass0561', 'https://example.com/avatar561.jpg', 'InnoSoft', 'Student', 'Active'),
('Jasmine', 'Vo', 'jasmine.vo562@example.com', 'pass0562', 'https://example.com/avatar562.jpg', 'TechCorp', NULL, 'Inactive'),
('Aaron', 'Tran', 'aaron.tran563@example.com', 'pass0563', 'https://example.com/avatar563.jpg', 'Toshiba', NULL, 'Inactive'),
('Daisy', 'Dang', 'daisy.dang564@example.com', 'pass0564', 'https://example.com/avatar564.jpg', 'TMA', NULL, 'Active'),
('Bob', 'Vo', 'bob.vo565@example.com', 'pass0565', 'https://example.com/avatar565.jpg', 'NashTech', NULL, 'Inactive'),
('Zane', 'Vo', 'zane.vo566@example.com', 'pass0566', 'https://example.com/avatar566.jpg', 'Toshiba', 'Student', 'Inactive'),
('Tina', 'Dang', 'tina.dang567@example.com', 'pass0567', 'https://example.com/avatar567.jpg', 'Toshiba', 'Student', 'Inactive'),
('Jane', 'Hoang', 'jane.hoang568@example.com', 'pass0568', 'https://example.com/avatar568.jpg', 'FPT', NULL, 'Active'),
('Jasmine', 'Bui', 'jasmine.bui569@example.com', 'pass0569', 'https://example.com/avatar569.jpg', 'Toshiba', 'Student', 'Inactive'),
('Paula', 'Truong', 'paula.truong570@example.com', 'pass0570', 'https://example.com/avatar570.jpg', 'AxonActive', NULL, 'Active'),
('Elliot', 'Nguyen', 'elliot.nguyen571@example.com', 'pass0571', 'https://example.com/avatar571.jpg', 'TechCorp', NULL, 'Inactive'),
('Fiona', 'Bui', 'fiona.bui572@example.com', 'pass0572', 'https://example.com/avatar572.jpg', 'CMC', 'Student', 'Inactive'),
('Jane', 'Le', 'jane.le573@example.com', 'pass0573', 'https://example.com/avatar573.jpg', 'TechCorp', 'Student', 'Active'),
('Evan', 'Ngo', 'evan.ngo574@example.com', 'pass0574', 'https://example.com/avatar574.jpg', 'GlobalSoft', NULL, 'Active'),
('Carter', 'Le', 'carter.le575@example.com', 'pass0575', 'https://example.com/avatar575.jpg', 'TechCorp', 'Student', 'Active'),
('Donna', 'Dang', 'donna.dang576@example.com', 'pass0576', 'https://example.com/avatar576.jpg', 'Toshiba', 'Teacher', 'Inactive'),
('Evan', 'Nguyen', 'evan.nguyen577@example.com', 'pass0577', 'https://example.com/avatar577.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Nina', 'Vo', 'nina.vo578@example.com', 'pass0578', 'https://example.com/avatar578.jpg', 'TechCorp', 'Student', 'Active'),
('Kyle', 'Le', 'kyle.le579@example.com', 'pass0579', 'https://example.com/avatar579.jpg', 'NashTech', NULL, 'Inactive'),
('Xavier', 'Ngo', 'xavier.ngo580@example.com', 'pass0580', 'https://example.com/avatar580.jpg', 'TMA', 'Teacher', 'Inactive'),
('Victor', 'Bui', 'victor.bui581@example.com', 'pass0581', 'https://example.com/avatar581.jpg', 'InnoSoft', NULL, 'Inactive'),
('Linda', 'Truong', 'linda.truong582@example.com', 'pass0582', 'https://example.com/avatar582.jpg', 'InnoSoft', NULL, 'Active'),
('Oliver', 'Vo', 'oliver.vo583@example.com', 'pass0583', 'https://example.com/avatar583.jpg', 'TechCorp', NULL, 'Active'),
('Steven', 'Pham', 'steven.pham584@example.com', 'pass0584', 'https://example.com/avatar584.jpg', 'TechCorp', 'Teacher', 'Active'),
('Xavier', 'Ngo', 'xavier.ngo585@example.com', 'pass0585', 'https://example.com/avatar585.jpg', 'TechCorp', 'Teacher', 'Inactive'),
('Yuri', 'Nguyen', 'yuri.nguyen586@example.com', 'pass0586', 'https://example.com/avatar586.jpg', 'NashTech', NULL, 'Active'),
('Donna', 'Tran', 'donna.tran587@example.com', 'pass0587', 'https://example.com/avatar587.jpg', 'FPT', NULL, 'Inactive'),
('Naomi', 'Dang', 'naomi.dang588@example.com', 'pass0588', 'https://example.com/avatar588.jpg', 'CMC', 'Student', 'Inactive'),
('Carter', 'Truong', 'carter.truong589@example.com', 'pass0589', 'https://example.com/avatar589.jpg', 'GlobalSoft', 'Teacher', 'Inactive'),
('Kevin', 'Pham', 'kevin.pham590@example.com', 'pass0590', 'https://example.com/avatar590.jpg', 'NashTech', 'Student', 'Inactive'),
('Linda', 'Bui', 'linda.bui591@example.com', 'pass0591', 'https://example.com/avatar591.jpg', 'Toshiba', NULL, 'Active'),
('Ray', 'Ngo', 'ray.ngo592@example.com', 'pass0592', 'https://example.com/avatar592.jpg', 'Toshiba', 'Student', 'Active'),
('Yvonne', 'Hoang', 'yvonne.hoang593@example.com', 'pass0593', 'https://example.com/avatar593.jpg', 'VietDev', NULL, 'Inactive'),
('Bob', 'Truong', 'bob.truong594@example.com', 'pass0594', 'https://example.com/avatar594.jpg', 'GlobalSoft', 'Student', 'Active'),
('Kevin', 'Truong', 'kevin.truong595@example.com', 'pass0595', 'https://example.com/avatar595.jpg', 'GlobalSoft', NULL, 'Active'),
('Kevin', 'Dang', 'kevin.dang596@example.com', 'pass0596', 'https://example.com/avatar596.jpg', 'TMA', NULL, 'Active'),
('Ximena', 'Ngo', 'ximena.ngo597@example.com', 'pass0597', 'https://example.com/avatar597.jpg', 'TMA', 'Student', 'Active'),
('Ximena', 'Vo', 'ximena.vo598@example.com', 'pass0598', 'https://example.com/avatar598.jpg', 'TMA', NULL, 'Inactive'),
('Faith', 'Pham', 'faith.pham599@example.com', 'pass0599', 'https://example.com/avatar599.jpg', 'InnoSoft', NULL, 'Inactive'),
('Isaac', 'Vo', 'isaac.vo600@example.com', 'pass0600', 'https://example.com/avatar600.jpg', 'TMA', NULL, 'Active'),
('Sophia', 'Truong', 'sophia.truong601@example.com', 'pass0601', 'https://example.com/avatar601.jpg', 'AxonActive', 'Student', 'Inactive'),
('Jane', 'Le', 'jane.le602@example.com', 'pass0602', 'https://example.com/avatar602.jpg', 'NashTech', NULL, 'Active'),
('Alice', 'Nguyen', 'alice.nguyen603@example.com', 'pass0603', 'https://example.com/avatar603.jpg', 'VietDev', NULL, 'Inactive'),
('Ian', 'Tran', 'ian.tran604@example.com', 'pass0604', 'https://example.com/avatar604.jpg', 'FPT', NULL, 'Inactive'),
('Bella', 'Le', 'bella.le605@example.com', 'pass0605', 'https://example.com/avatar605.jpg', 'TechCorp', NULL, 'Active'),
('Hannah', 'Le', 'hannah.le606@example.com', 'pass0606', 'https://example.com/avatar606.jpg', 'TechCorp', 'Student', 'Active'),
('Donna', 'Truong', 'donna.truong607@example.com', 'pass0607', 'https://example.com/avatar607.jpg', 'NashTech', NULL, 'Active'),
('Sophia', 'Ngo', 'sophia.ngo608@example.com', 'pass0608', 'https://example.com/avatar608.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Kevin', 'Dang', 'kevin.dang609@example.com', 'pass0609', 'https://example.com/avatar609.jpg', 'CMC', NULL, 'Active'),
('Carter', 'Tran', 'carter.tran610@example.com', 'pass0610', 'https://example.com/avatar610.jpg', 'InnoSoft', NULL, 'Inactive'),
('Ximena', 'Truong', 'ximena.truong611@example.com', 'pass0611', 'https://example.com/avatar611.jpg', 'TMA', 'Student', 'Active'),
('Hailey', 'Le', 'hailey.le612@example.com', 'pass0612', 'https://example.com/avatar612.jpg', 'Toshiba', NULL, 'Active'),
('Ximena', 'Dang', 'ximena.dang613@example.com', 'pass0613', 'https://example.com/avatar613.jpg', 'FPT', NULL, 'Active'),
('Isaac', 'Le', 'isaac.le614@example.com', 'pass0614', 'https://example.com/avatar614.jpg', 'NashTech', 'Student', 'Active'),
('Ian', 'Dang', 'ian.dang615@example.com', 'pass0615', 'https://example.com/avatar615.jpg', 'TMA', NULL, 'Inactive'),
('Nina', 'Ngo', 'nina.ngo616@example.com', 'pass0616', 'https://example.com/avatar616.jpg', 'TechCorp', NULL, 'Active'),
('Carter', 'Ngo', 'carter.ngo617@example.com', 'pass0617', 'https://example.com/avatar617.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Oliver', 'Nguyen', 'oliver.nguyen618@example.com', 'pass0618', 'https://example.com/avatar618.jpg', 'FPT', 'Student', 'Active'),
('Victor', 'Pham', 'victor.pham619@example.com', 'pass0619', 'https://example.com/avatar619.jpg', 'InnoSoft', 'Teacher', 'Active'),
('Jasmine', 'Nguyen', 'jasmine.nguyen620@example.com', 'pass0620', 'https://example.com/avatar620.jpg', 'NashTech', 'Teacher', 'Active'),
('Quinn', 'Vo', 'quinn.vo621@example.com', 'pass0621', 'https://example.com/avatar621.jpg', 'TechCorp', NULL, 'Inactive'),
('Fiona', 'Nguyen', 'fiona.nguyen622@example.com', 'pass0622', 'https://example.com/avatar622.jpg', 'NashTech', NULL, 'Inactive'),
('Naomi', 'Dang', 'naomi.dang623@example.com', 'pass0623', 'https://example.com/avatar623.jpg', 'VietDev', 'Student', 'Inactive'),
('Ray', 'Bui', 'ray.bui624@example.com', 'pass0624', 'https://example.com/avatar624.jpg', 'TMA', NULL, 'Active'),
('Kevin', 'Vo', 'kevin.vo625@example.com', 'pass0625', 'https://example.com/avatar625.jpg', 'FPT', NULL, 'Inactive'),
('Xavier', 'Bui', 'xavier.bui626@example.com', 'pass0626', 'https://example.com/avatar626.jpg', 'InnoSoft', 'Student', 'Inactive'),
('Zara', 'Hoang', 'zara.hoang627@example.com', 'pass0627', 'https://example.com/avatar627.jpg', 'CMC', 'Student', 'Inactive'),
('Elliot', 'Nguyen', 'elliot.nguyen628@example.com', 'pass0628', 'https://example.com/avatar628.jpg', 'VietDev', 'Student', 'Inactive'),
('Mason', 'Ngo', 'mason.ngo629@example.com', 'pass0629', 'https://example.com/avatar629.jpg', 'NashTech', NULL, 'Inactive'),
('Tina', 'Hoang', 'tina.hoang630@example.com', 'pass0630', 'https://example.com/avatar630.jpg', 'TechCorp', 'Student', 'Inactive'),
('Yvonne', 'Truong', 'yvonne.truong631@example.com', 'pass0631', 'https://example.com/avatar631.jpg', 'GlobalSoft', 'Student', 'Active'),
('Elliot', 'Dang', 'elliot.dang632@example.com', 'pass0632', 'https://example.com/avatar632.jpg', 'AxonActive', NULL, 'Inactive'),
('Hannah', 'Pham', 'hannah.pham633@example.com', 'pass0633', 'https://example.com/avatar633.jpg', 'AxonActive', 'Teacher', 'Inactive'),
('Gavin', 'Nguyen', 'gavin.nguyen634@example.com', 'pass0634', 'https://example.com/avatar634.jpg', 'CMC', NULL, 'Inactive'),
('Bella', 'Dang', 'bella.dang635@example.com', 'pass0635', 'https://example.com/avatar635.jpg', 'TMA', NULL, 'Inactive'),
('Xavier', 'Pham', 'xavier.pham636@example.com', 'pass0636', 'https://example.com/avatar636.jpg', 'NashTech', 'Student', 'Active'),
('Oliver', 'Vo', 'oliver.vo637@example.com', 'pass0637', 'https://example.com/avatar637.jpg', 'TechCorp', NULL, 'Inactive'),
('Hannah', 'Nguyen', 'hannah.nguyen638@example.com', 'pass0638', 'https://example.com/avatar638.jpg', 'FPT', 'Teacher', 'Inactive'),
('George', 'Nguyen', 'george.nguyen639@example.com', 'pass0639', 'https://example.com/avatar639.jpg', 'Toshiba', NULL, 'Inactive'),
('Faith', 'Nguyen', 'faith.nguyen640@example.com', 'pass0640', 'https://example.com/avatar640.jpg', 'NashTech', 'Student', 'Inactive'),
('Laura', 'Tran', 'laura.tran641@example.com', 'pass0641', 'https://example.com/avatar641.jpg', 'Toshiba', 'Student', 'Inactive'),
('Jasmine', 'Vo', 'jasmine.vo642@example.com', 'pass0642', 'https://example.com/avatar642.jpg', 'AxonActive', 'Student', 'Active'),
('Ray', 'Hoang', 'ray.hoang643@example.com', 'pass0643', 'https://example.com/avatar643.jpg', 'InnoSoft', NULL, 'Inactive'),
('Linda', 'Dang', 'linda.dang644@example.com', 'pass0644', 'https://example.com/avatar644.jpg', 'NashTech', 'Teacher', 'Active'),
('Rachel', 'Bui', 'rachel.bui645@example.com', 'pass0645', 'https://example.com/avatar645.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Kevin', 'Le', 'kevin.le646@example.com', 'pass0646', 'https://example.com/avatar646.jpg', 'VietDev', 'Teacher', 'Active'),
('Jane', 'Le', 'jane.le647@example.com', 'pass0647', 'https://example.com/avatar647.jpg', 'VietDev', 'Student', 'Active'),
('Victor', 'Hoang', 'victor.hoang648@example.com', 'pass0648', 'https://example.com/avatar648.jpg', 'VietDev', NULL, 'Active'),
('Jane', 'Hoang', 'jane.hoang649@example.com', 'pass0649', 'https://example.com/avatar649.jpg', 'Toshiba', 'Teacher', 'Active'),
('Xavier', 'Dang', 'xavier.dang650@example.com', 'pass0650', 'https://example.com/avatar650.jpg', 'TechCorp', 'Teacher', 'Active'),
('Evan', 'Dang', 'evan.dang651@example.com', 'pass0651', 'https://example.com/avatar651.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Michael', 'Pham', 'michael.pham652@example.com', 'pass0652', 'https://example.com/avatar652.jpg', 'TMA', 'Teacher', 'Inactive'),
('Evan', 'Pham', 'evan.pham653@example.com', 'pass0653', 'https://example.com/avatar653.jpg', 'Toshiba', 'Student', 'Active'),
('Vera', 'Ngo', 'vera.ngo654@example.com', 'pass0654', 'https://example.com/avatar654.jpg', 'Toshiba', 'Teacher', 'Active'),
('Kevin', 'Dang', 'kevin.dang655@example.com', 'pass0655', 'https://example.com/avatar655.jpg', 'Toshiba', 'Student', 'Active'),
('Quinn', 'Le', 'quinn.le656@example.com', 'pass0656', 'https://example.com/avatar656.jpg', 'AxonActive', NULL, 'Inactive'),
('Oscar', 'Pham', 'oscar.pham657@example.com', 'pass0657', 'https://example.com/avatar657.jpg', 'TechCorp', NULL, 'Active'),
('Laura', 'Dang', 'laura.dang658@example.com', 'pass0658', 'https://example.com/avatar658.jpg', 'FPT', NULL, 'Inactive'),
('Jasmine', 'Le', 'jasmine.le659@example.com', 'pass0659', 'https://example.com/avatar659.jpg', 'GlobalSoft', 'Student', 'Active'),
('Hannah', 'Bui', 'hannah.bui660@example.com', 'pass0660', 'https://example.com/avatar660.jpg', 'VietDev', NULL, 'Active'),
('Charlie', 'Le', 'charlie.le661@example.com', 'pass0661', 'https://example.com/avatar661.jpg', 'TechCorp', 'Student', 'Active'),
('Yuri', 'Le', 'yuri.le662@example.com', 'pass0662', 'https://example.com/avatar662.jpg', 'VietDev', 'Teacher', 'Active'),
('Tina', 'Nguyen', 'tina.nguyen663@example.com', 'pass0663', 'https://example.com/avatar663.jpg', 'TMA', NULL, 'Active'),
('Wendy', 'Le', 'wendy.le664@example.com', 'pass0664', 'https://example.com/avatar664.jpg', 'VietDev', 'Student', 'Active'),
('Ian', 'Le', 'ian.le665@example.com', 'pass0665', 'https://example.com/avatar665.jpg', 'CMC', 'Student', 'Active'),
('Oliver', 'Hoang', 'oliver.hoang666@example.com', 'pass0666', 'https://example.com/avatar666.jpg', 'Toshiba', 'Student', 'Active'),
('Oliver', 'Ngo', 'oliver.ngo667@example.com', 'pass0667', 'https://example.com/avatar667.jpg', 'VietDev', NULL, 'Active'),
('Tina', 'Truong', 'tina.truong668@example.com', 'pass0668', 'https://example.com/avatar668.jpg', 'TechCorp', 'Teacher', 'Inactive'),
('Vera', 'Hoang', 'vera.hoang669@example.com', 'pass0669', 'https://example.com/avatar669.jpg', 'InnoSoft', NULL, 'Inactive'),
('Ray', 'Ngo', 'ray.ngo670@example.com', 'pass0670', 'https://example.com/avatar670.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Hannah', 'Dang', 'hannah.dang671@example.com', 'pass0671', 'https://example.com/avatar671.jpg', 'AxonActive', 'Teacher', 'Active'),
('Xavier', 'Ngo', 'xavier.ngo672@example.com', 'pass0672', 'https://example.com/avatar672.jpg', 'CMC', NULL, 'Active'),
('Oliver', 'Le', 'oliver.le673@example.com', 'pass0673', 'https://example.com/avatar673.jpg', 'Toshiba', 'Student', 'Active'),
('Oliver', 'Bui', 'oliver.bui674@example.com', 'pass0674', 'https://example.com/avatar674.jpg', 'VietDev', NULL, 'Inactive'),
('Hailey', 'Hoang', 'hailey.hoang675@example.com', 'pass0675', 'https://example.com/avatar675.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Zara', 'Nguyen', 'zara.nguyen676@example.com', 'pass0676', 'https://example.com/avatar676.jpg', 'InnoSoft', NULL, 'Inactive'),
('Michael', 'Dang', 'michael.dang677@example.com', 'pass0677', 'https://example.com/avatar677.jpg', 'TMA', 'Student', 'Active'),
('Ximena', 'Hoang', 'ximena.hoang678@example.com', 'pass0678', 'https://example.com/avatar678.jpg', 'CMC', NULL, 'Active'),
('Zara', 'Nguyen', 'zara.nguyen679@example.com', 'pass0679', 'https://example.com/avatar679.jpg', 'TMA', NULL, 'Active'),
('Ray', 'Truong', 'ray.truong680@example.com', 'pass0680', 'https://example.com/avatar680.jpg', 'InnoSoft', 'Student', 'Active'),
('William', 'Vo', 'william.vo681@example.com', 'pass0681', 'https://example.com/avatar681.jpg', 'TMA', 'Teacher', 'Inactive'),
('Ian', 'Nguyen', 'ian.nguyen682@example.com', 'pass0682', 'https://example.com/avatar682.jpg', 'InnoSoft', NULL, 'Active'),
('Charlie', 'Pham', 'charlie.pham683@example.com', 'pass0683', 'https://example.com/avatar683.jpg', 'Toshiba', NULL, 'Active'),
('Hannah', 'Ngo', 'hannah.ngo684@example.com', 'pass0684', 'https://example.com/avatar684.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Zara', 'Truong', 'zara.truong685@example.com', 'pass0685', 'https://example.com/avatar685.jpg', 'Toshiba', 'Teacher', 'Inactive'),
('Faith', 'Bui', 'faith.bui686@example.com', 'pass0686', 'https://example.com/avatar686.jpg', 'TMA', NULL, 'Inactive'),
('Naomi', 'Nguyen', 'naomi.nguyen687@example.com', 'pass0687', 'https://example.com/avatar687.jpg', 'InnoSoft', NULL, 'Active'),
('Mason', 'Nguyen', 'mason.nguyen688@example.com', 'pass0688', 'https://example.com/avatar688.jpg', 'VietDev', 'Student', 'Inactive'),
('Hannah', 'Nguyen', 'hannah.nguyen689@example.com', 'pass0689', 'https://example.com/avatar689.jpg', 'AxonActive', NULL, 'Inactive'),
('Yuri', 'Le', 'yuri.le690@example.com', 'pass0690', 'https://example.com/avatar690.jpg', 'TMA', NULL, 'Active'),
('Thomas', 'Ngo', 'thomas.ngo691@example.com', 'pass0691', 'https://example.com/avatar691.jpg', 'Toshiba', NULL, 'Active'),
('Evan', 'Ngo', 'evan.ngo692@example.com', 'pass0692', 'https://example.com/avatar692.jpg', 'TechCorp', NULL, 'Active'),
('Evan', 'Nguyen', 'evan.nguyen693@example.com', 'pass0693', 'https://example.com/avatar693.jpg', 'VietDev', 'Teacher', 'Active'),
('Vera', 'Bui', 'vera.bui694@example.com', 'pass0694', 'https://example.com/avatar694.jpg', 'TechCorp', 'Student', 'Inactive'),
('Ian', 'Tran', 'ian.tran695@example.com', 'pass0695', 'https://example.com/avatar695.jpg', 'FPT', 'Student', 'Inactive'),
('William', 'Tran', 'william.tran696@example.com', 'pass0696', 'https://example.com/avatar696.jpg', 'NashTech', 'Teacher', 'Active'),
('Donna', 'Bui', 'donna.bui697@example.com', 'pass0697', 'https://example.com/avatar697.jpg', 'VietDev', 'Student', 'Inactive'),
('Xavier', 'Bui', 'xavier.bui698@example.com', 'pass0698', 'https://example.com/avatar698.jpg', 'TMA', NULL, 'Active'),
('Fiona', 'Dang', 'fiona.dang699@example.com', 'pass0699', 'https://example.com/avatar699.jpg', 'Toshiba', 'Student', 'Active'),
('Zara', 'Pham', 'zara.pham700@example.com', 'pass0700', 'https://example.com/avatar700.jpg', 'FPT', NULL, 'Active'),
('George', 'Bui', 'george.bui701@example.com', 'pass0701', 'https://example.com/avatar701.jpg', 'AxonActive', NULL, 'Inactive'),
('Fiona', 'Pham', 'fiona.pham702@example.com', 'pass0702', 'https://example.com/avatar702.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Kevin', 'Le', 'kevin.le703@example.com', 'pass0703', 'https://example.com/avatar703.jpg', 'CMC', 'Teacher', 'Active'),
('Carter', 'Bui', 'carter.bui704@example.com', 'pass0704', 'https://example.com/avatar704.jpg', 'FPT', NULL, 'Inactive'),
('Alice', 'Ngo', 'alice.ngo705@example.com', 'pass0705', 'https://example.com/avatar705.jpg', 'VietDev', NULL, 'Inactive'),
('Vera', 'Pham', 'vera.pham706@example.com', 'pass0706', 'https://example.com/avatar706.jpg', 'CMC', NULL, 'Inactive'),
('Aaron', 'Pham', 'aaron.pham707@example.com', 'pass0707', 'https://example.com/avatar707.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Fiona', 'Vo', 'fiona.vo708@example.com', 'pass0708', 'https://example.com/avatar708.jpg', 'AxonActive', 'Teacher', 'Inactive'),
('Vera', 'Pham', 'vera.pham709@example.com', 'pass0709', 'https://example.com/avatar709.jpg', 'AxonActive', 'Student', 'Inactive'),
('Hannah', 'Le', 'hannah.le710@example.com', 'pass0710', 'https://example.com/avatar710.jpg', 'InnoSoft', NULL, 'Active'),
('Isaac', 'Nguyen', 'isaac.nguyen711@example.com', 'pass0711', 'https://example.com/avatar711.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Yvonne', 'Bui', 'yvonne.bui712@example.com', 'pass0712', 'https://example.com/avatar712.jpg', 'Toshiba', 'Student', 'Inactive'),
('Jasmine', 'Nguyen', 'jasmine.nguyen713@example.com', 'pass0713', 'https://example.com/avatar713.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Xavier', 'Bui', 'xavier.bui714@example.com', 'pass0714', 'https://example.com/avatar714.jpg', 'TMA', NULL, 'Inactive'),
('Fiona', 'Tran', 'fiona.tran715@example.com', 'pass0715', 'https://example.com/avatar715.jpg', 'TMA', NULL, 'Inactive'),
('Oliver', 'Pham', 'oliver.pham716@example.com', 'pass0716', 'https://example.com/avatar716.jpg', 'FPT', NULL, 'Active'),
('Rachel', 'Bui', 'rachel.bui717@example.com', 'pass0717', 'https://example.com/avatar717.jpg', 'FPT', NULL, 'Active'),
('Rachel', 'Ngo', 'rachel.ngo718@example.com', 'pass0718', 'https://example.com/avatar718.jpg', 'InnoSoft', NULL, 'Active'),
('Laura', 'Pham', 'laura.pham719@example.com', 'pass0719', 'https://example.com/avatar719.jpg', 'CMC', 'Teacher', 'Inactive'),
('Evan', 'Tran', 'evan.tran720@example.com', 'pass0720', 'https://example.com/avatar720.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Ian', 'Dang', 'ian.dang721@example.com', 'pass0721', 'https://example.com/avatar721.jpg', 'AxonActive', NULL, 'Inactive'),
('Kyle', 'Bui', 'kyle.bui722@example.com', 'pass0722', 'https://example.com/avatar722.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Sophia', 'Ngo', 'sophia.ngo723@example.com', 'pass0723', 'https://example.com/avatar723.jpg', 'NashTech', NULL, 'Active'),
('Steven', 'Bui', 'steven.bui724@example.com', 'pass0724', 'https://example.com/avatar724.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Faith', 'Pham', 'faith.pham725@example.com', 'pass0725', 'https://example.com/avatar725.jpg', 'TMA', NULL, 'Active'),
('Thomas', 'Vo', 'thomas.vo726@example.com', 'pass0726', 'https://example.com/avatar726.jpg', 'GlobalSoft', NULL, 'Active'),
('Thomas', 'Pham', 'thomas.pham727@example.com', 'pass0727', 'https://example.com/avatar727.jpg', 'CMC', NULL, 'Inactive'),
('Gavin', 'Dang', 'gavin.dang728@example.com', 'pass0728', 'https://example.com/avatar728.jpg', 'VietDev', NULL, 'Inactive'),
('Alice', 'Hoang', 'alice.hoang729@example.com', 'pass0729', 'https://example.com/avatar729.jpg', 'VietDev', 'Teacher', 'Active'),
('Quinn', 'Bui', 'quinn.bui730@example.com', 'pass0730', 'https://example.com/avatar730.jpg', 'TMA', NULL, 'Inactive'),
('Donna', 'Le', 'donna.le731@example.com', 'pass0731', 'https://example.com/avatar731.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Xavier', 'Pham', 'xavier.pham732@example.com', 'pass0732', 'https://example.com/avatar732.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Isaac', 'Dang', 'isaac.dang733@example.com', 'pass0733', 'https://example.com/avatar733.jpg', 'TMA', NULL, 'Active'),
('Hannah', 'Pham', 'hannah.pham734@example.com', 'pass0734', 'https://example.com/avatar734.jpg', 'NashTech', 'Teacher', 'Active'),
('Gavin', 'Truong', 'gavin.truong735@example.com', 'pass0735', 'https://example.com/avatar735.jpg', 'AxonActive', NULL, 'Active'),
('Ximena', 'Le', 'ximena.le736@example.com', 'pass0736', 'https://example.com/avatar736.jpg', 'VietDev', 'Student', 'Active'),
('Aaron', 'Le', 'aaron.le737@example.com', 'pass0737', 'https://example.com/avatar737.jpg', 'AxonActive', NULL, 'Active'),
('Hailey', 'Ngo', 'hailey.ngo738@example.com', 'pass0738', 'https://example.com/avatar738.jpg', 'TMA', NULL, 'Active'),
('Aaron', 'Tran', 'aaron.tran739@example.com', 'pass0739', 'https://example.com/avatar739.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Jasmine', 'Hoang', 'jasmine.hoang740@example.com', 'pass0740', 'https://example.com/avatar740.jpg', 'FPT', NULL, 'Inactive'),
('Aaron', 'Tran', 'aaron.tran741@example.com', 'pass0741', 'https://example.com/avatar741.jpg', 'InnoSoft', NULL, 'Active'),
('Kevin', 'Truong', 'kevin.truong742@example.com', 'pass0742', 'https://example.com/avatar742.jpg', 'AxonActive', NULL, 'Active'),
('Carter', 'Tran', 'carter.tran743@example.com', 'pass0743', 'https://example.com/avatar743.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Quinn', 'Dang', 'quinn.dang744@example.com', 'pass0744', 'https://example.com/avatar744.jpg', 'AxonActive', 'Teacher', 'Active'),
('Kevin', 'Tran', 'kevin.tran745@example.com', 'pass0745', 'https://example.com/avatar745.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Ian', 'Tran', 'ian.tran746@example.com', 'pass0746', 'https://example.com/avatar746.jpg', 'VietDev', NULL, 'Inactive'),
('Sophia', 'Le', 'sophia.le747@example.com', 'pass0747', 'https://example.com/avatar747.jpg', 'TMA', 'Teacher', 'Active'),
('Rachel', 'Bui', 'rachel.bui748@example.com', 'pass0748', 'https://example.com/avatar748.jpg', 'FPT', NULL, 'Inactive'),
('Xavier', 'Le', 'xavier.le749@example.com', 'pass0749', 'https://example.com/avatar749.jpg', 'NashTech', NULL, 'Inactive'),
('Penny', 'Ngo', 'penny.ngo750@example.com', 'pass0750', 'https://example.com/avatar750.jpg', 'CMC', NULL, 'Active'),
('Linda', 'Le', 'linda.le751@example.com', 'pass0751', 'https://example.com/avatar751.jpg', 'Toshiba', 'Teacher', 'Active'),
('Ray', 'Bui', 'ray.bui752@example.com', 'pass0752', 'https://example.com/avatar752.jpg', 'InnoSoft', NULL, 'Active'),
('Alice', 'Vo', 'alice.vo753@example.com', 'pass0753', 'https://example.com/avatar753.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Ximena', 'Tran', 'ximena.tran754@example.com', 'pass0754', 'https://example.com/avatar754.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Isaac', 'Le', 'isaac.le755@example.com', 'pass0755', 'https://example.com/avatar755.jpg', 'FPT', 'Teacher', 'Active'),
('Quinn', 'Ngo', 'quinn.ngo756@example.com', 'pass0756', 'https://example.com/avatar756.jpg', 'CMC', NULL, 'Inactive'),
('Kyle', 'Dang', 'kyle.dang757@example.com', 'pass0757', 'https://example.com/avatar757.jpg', 'FPT', 'Student', 'Inactive'),
('Zara', 'Tran', 'zara.tran758@example.com', 'pass0758', 'https://example.com/avatar758.jpg', 'AxonActive', 'Teacher', 'Active'),
('Donna', 'Bui', 'donna.bui759@example.com', 'pass0759', 'https://example.com/avatar759.jpg', 'FPT', 'Teacher', 'Inactive'),
('Charlie', 'Vo', 'charlie.vo760@example.com', 'pass0760', 'https://example.com/avatar760.jpg', 'NashTech', NULL, 'Active'),
('Uma', 'Nguyen', 'uma.nguyen761@example.com', 'pass0761', 'https://example.com/avatar761.jpg', 'NashTech', 'Teacher', 'Active'),
('Kevin', 'Hoang', 'kevin.hoang762@example.com', 'pass0762', 'https://example.com/avatar762.jpg', 'FPT', 'Student', 'Inactive'),
('Yuri', 'Bui', 'yuri.bui763@example.com', 'pass0763', 'https://example.com/avatar763.jpg', 'TMA', 'Teacher', 'Active'),
('Hannah', 'Nguyen', 'hannah.nguyen764@example.com', 'pass0764', 'https://example.com/avatar764.jpg', 'FPT', NULL, 'Active'),
('Mason', 'Tran', 'mason.tran765@example.com', 'pass0765', 'https://example.com/avatar765.jpg', 'GlobalSoft', NULL, 'Active'),
('William', 'Le', 'william.le766@example.com', 'pass0766', 'https://example.com/avatar766.jpg', 'TechCorp', 'Student', 'Inactive'),
('Charlie', 'Nguyen', 'charlie.nguyen767@example.com', 'pass0767', 'https://example.com/avatar767.jpg', 'NashTech', 'Teacher', 'Active'),
('Daisy', 'Truong', 'daisy.truong768@example.com', 'pass0768', 'https://example.com/avatar768.jpg', 'GlobalSoft', 'Teacher', 'Inactive'),
('Laura', 'Truong', 'laura.truong769@example.com', 'pass0769', 'https://example.com/avatar769.jpg', 'Toshiba', NULL, 'Inactive'),
('Ximena', 'Truong', 'ximena.truong770@example.com', 'pass0770', 'https://example.com/avatar770.jpg', 'InnoSoft', NULL, 'Active'),
('Thomas', 'Le', 'thomas.le771@example.com', 'pass0771', 'https://example.com/avatar771.jpg', 'FPT', NULL, 'Active'),
('Faith', 'Bui', 'faith.bui772@example.com', 'pass0772', 'https://example.com/avatar772.jpg', 'CMC', NULL, 'Inactive'),
('Sophia', 'Pham', 'sophia.pham773@example.com', 'pass0773', 'https://example.com/avatar773.jpg', 'Toshiba', NULL, 'Inactive'),
('Oscar', 'Truong', 'oscar.truong774@example.com', 'pass0774', 'https://example.com/avatar774.jpg', 'NashTech', NULL, 'Active'),
('Faith', 'Le', 'faith.le775@example.com', 'pass0775', 'https://example.com/avatar775.jpg', 'FPT', NULL, 'Inactive'),
('Quinn', 'Nguyen', 'quinn.nguyen776@example.com', 'pass0776', 'https://example.com/avatar776.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Daisy', 'Bui', 'daisy.bui777@example.com', 'pass0777', 'https://example.com/avatar777.jpg', 'NashTech', NULL, 'Active'),
('Nina', 'Tran', 'nina.tran778@example.com', 'pass0778', 'https://example.com/avatar778.jpg', 'TechCorp', 'Student', 'Active'),
('Zane', 'Tran', 'zane.tran779@example.com', 'pass0779', 'https://example.com/avatar779.jpg', 'AxonActive', NULL, 'Inactive'),
('Yuri', 'Ngo', 'yuri.ngo780@example.com', 'pass0780', 'https://example.com/avatar780.jpg', 'NashTech', NULL, 'Inactive'),
('Thomas', 'Nguyen', 'thomas.nguyen781@example.com', 'pass0781', 'https://example.com/avatar781.jpg', 'Toshiba', 'Student', 'Active'),
('Alice', 'Tran', 'alice.tran782@example.com', 'pass0782', 'https://example.com/avatar782.jpg', 'VietDev', NULL, 'Active'),
('Ian', 'Nguyen', 'ian.nguyen783@example.com', 'pass0783', 'https://example.com/avatar783.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Jasmine', 'Vo', 'jasmine.vo784@example.com', 'pass0784', 'https://example.com/avatar784.jpg', 'CMC', NULL, 'Inactive'),
('Nina', 'Bui', 'nina.bui785@example.com', 'pass0785', 'https://example.com/avatar785.jpg', 'TechCorp', 'Teacher', 'Active'),
('Quinn', 'Ngo', 'quinn.ngo786@example.com', 'pass0786', 'https://example.com/avatar786.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Elliot', 'Ngo', 'elliot.ngo787@example.com', 'pass0787', 'https://example.com/avatar787.jpg', 'AxonActive', NULL, 'Active'),
('Penny', 'Truong', 'penny.truong788@example.com', 'pass0788', 'https://example.com/avatar788.jpg', 'TechCorp', NULL, 'Active'),
('Nina', 'Truong', 'nina.truong789@example.com', 'pass0789', 'https://example.com/avatar789.jpg', 'GlobalSoft', NULL, 'Active'),
('Victor', 'Vo', 'victor.vo790@example.com', 'pass0790', 'https://example.com/avatar790.jpg', 'TechCorp', NULL, 'Inactive'),
('Bella', 'Nguyen', 'bella.nguyen791@example.com', 'pass0791', 'https://example.com/avatar791.jpg', 'VietDev', 'Student', 'Active'),
('Jane', 'Le', 'jane.le792@example.com', 'pass0792', 'https://example.com/avatar792.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Daisy', 'Hoang', 'daisy.hoang793@example.com', 'pass0793', 'https://example.com/avatar793.jpg', 'NashTech', NULL, 'Inactive'),
('William', 'Nguyen', 'william.nguyen794@example.com', 'pass0794', 'https://example.com/avatar794.jpg', 'InnoSoft', 'Student', 'Active'),
('Ray', 'Le', 'ray.le795@example.com', 'pass0795', 'https://example.com/avatar795.jpg', 'NashTech', NULL, 'Active'),
('Hannah', 'Vo', 'hannah.vo796@example.com', 'pass0796', 'https://example.com/avatar796.jpg', 'TMA', NULL, 'Inactive'),
('Laura', 'Tran', 'laura.tran797@example.com', 'pass0797', 'https://example.com/avatar797.jpg', 'NashTech', NULL, 'Active'),
('Naomi', 'Pham', 'naomi.pham798@example.com', 'pass0798', 'https://example.com/avatar798.jpg', 'CMC', 'Student', 'Active'),
('Steven', 'Dang', 'steven.dang799@example.com', 'pass0799', 'https://example.com/avatar799.jpg', 'Toshiba', NULL, 'Inactive'),
('Oliver', 'Bui', 'oliver.bui800@example.com', 'pass0800', 'https://example.com/avatar800.jpg', 'CMC', 'Student', 'Active'),
('Sophia', 'Pham', 'sophia.pham801@example.com', 'pass0801', 'https://example.com/avatar801.jpg', 'TechCorp', 'Student', 'Inactive'),
('Carter', 'Vo', 'carter.vo802@example.com', 'pass0802', 'https://example.com/avatar802.jpg', 'VietDev', NULL, 'Active'),
('Daisy', 'Hoang', 'daisy.hoang803@example.com', 'pass0803', 'https://example.com/avatar803.jpg', 'VietDev', 'Student', 'Active'),
('Kyle', 'Pham', 'kyle.pham804@example.com', 'pass0804', 'https://example.com/avatar804.jpg', 'TechCorp', NULL, 'Active'),
('Nina', 'Nguyen', 'nina.nguyen805@example.com', 'pass0805', 'https://example.com/avatar805.jpg', 'FPT', NULL, 'Active'),
('Isaac', 'Pham', 'isaac.pham806@example.com', 'pass0806', 'https://example.com/avatar806.jpg', 'FPT', 'Teacher', 'Active'),
('Oliver', 'Dang', 'oliver.dang807@example.com', 'pass0807', 'https://example.com/avatar807.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Gavin', 'Hoang', 'gavin.hoang808@example.com', 'pass0808', 'https://example.com/avatar808.jpg', 'TechCorp', 'Teacher', 'Active'),
('Oliver', 'Nguyen', 'oliver.nguyen809@example.com', 'pass0809', 'https://example.com/avatar809.jpg', 'VietDev', NULL, 'Inactive'),
('Thomas', 'Vo', 'thomas.vo810@example.com', 'pass0810', 'https://example.com/avatar810.jpg', 'TechCorp', NULL, 'Inactive'),
('Bob', 'Nguyen', 'bob.nguyen811@example.com', 'pass0811', 'https://example.com/avatar811.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Oscar', 'Tran', 'oscar.tran812@example.com', 'pass0812', 'https://example.com/avatar812.jpg', 'InnoSoft', NULL, 'Inactive'),
('Bella', 'Vo', 'bella.vo813@example.com', 'pass0813', 'https://example.com/avatar813.jpg', 'NashTech', NULL, 'Inactive'),
('Mason', 'Vo', 'mason.vo814@example.com', 'pass0814', 'https://example.com/avatar814.jpg', 'TechCorp', NULL, 'Active'),
('Vera', 'Pham', 'vera.pham815@example.com', 'pass0815', 'https://example.com/avatar815.jpg', 'CMC', 'Teacher', 'Inactive'),
('Nina', 'Ngo', 'nina.ngo816@example.com', 'pass0816', 'https://example.com/avatar816.jpg', 'VietDev', 'Teacher', 'Active'),
('Faith', 'Truong', 'faith.truong817@example.com', 'pass0817', 'https://example.com/avatar817.jpg', 'FPT', NULL, 'Active'),
('Mason', 'Tran', 'mason.tran818@example.com', 'pass0818', 'https://example.com/avatar818.jpg', 'GlobalSoft', 'Student', 'Active'),
('Victor', 'Bui', 'victor.bui819@example.com', 'pass0819', 'https://example.com/avatar819.jpg', 'TMA', NULL, 'Active'),
('Daisy', 'Hoang', 'daisy.hoang820@example.com', 'pass0820', 'https://example.com/avatar820.jpg', 'Toshiba', 'Teacher', 'Active'),
('Bella', 'Hoang', 'bella.hoang821@example.com', 'pass0821', 'https://example.com/avatar821.jpg', 'VietDev', NULL, 'Active'),
('Donna', 'Truong', 'donna.truong822@example.com', 'pass0822', 'https://example.com/avatar822.jpg', 'CMC', 'Student', 'Inactive'),
('Yvonne', 'Truong', 'yvonne.truong823@example.com', 'pass0823', 'https://example.com/avatar823.jpg', 'NashTech', NULL, 'Inactive'),
('Hailey', 'Hoang', 'hailey.hoang824@example.com', 'pass0824', 'https://example.com/avatar824.jpg', 'InnoSoft', 'Student', 'Active'),
('Daisy', 'Ngo', 'daisy.ngo825@example.com', 'pass0825', 'https://example.com/avatar825.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Vera', 'Dang', 'vera.dang826@example.com', 'pass0826', 'https://example.com/avatar826.jpg', 'TMA', NULL, 'Inactive'),
('Zane', 'Dang', 'zane.dang827@example.com', 'pass0827', 'https://example.com/avatar827.jpg', 'CMC', NULL, 'Inactive'),
('Ray', 'Pham', 'ray.pham828@example.com', 'pass0828', 'https://example.com/avatar828.jpg', 'InnoSoft', 'Student', 'Active'),
('Isaac', 'Tran', 'isaac.tran829@example.com', 'pass0829', 'https://example.com/avatar829.jpg', 'TMA', NULL, 'Active'),
('Zara', 'Le', 'zara.le830@example.com', 'pass0830', 'https://example.com/avatar830.jpg', 'InnoSoft', 'Student', 'Inactive'),
('Vera', 'Le', 'vera.le831@example.com', 'pass0831', 'https://example.com/avatar831.jpg', 'CMC', NULL, 'Active'),
('Wendy', 'Le', 'wendy.le832@example.com', 'pass0832', 'https://example.com/avatar832.jpg', 'TechCorp', NULL, 'Active'),
('Zara', 'Nguyen', 'zara.nguyen833@example.com', 'pass0833', 'https://example.com/avatar833.jpg', 'NashTech', 'Student', 'Active'),
('Paula', 'Vo', 'paula.vo834@example.com', 'pass0834', 'https://example.com/avatar834.jpg', 'CMC', NULL, 'Inactive'),
('Ray', 'Tran', 'ray.tran835@example.com', 'pass0835', 'https://example.com/avatar835.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Nina', 'Vo', 'nina.vo836@example.com', 'pass0836', 'https://example.com/avatar836.jpg', 'VietDev', 'Student', 'Active'),
('Rachel', 'Vo', 'rachel.vo837@example.com', 'pass0837', 'https://example.com/avatar837.jpg', 'AxonActive', 'Student', 'Inactive'),
('Mason', 'Tran', 'mason.tran838@example.com', 'pass0838', 'https://example.com/avatar838.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Donna', 'Vo', 'donna.vo839@example.com', 'pass0839', 'https://example.com/avatar839.jpg', 'FPT', NULL, 'Inactive'),
('Thomas', 'Bui', 'thomas.bui840@example.com', 'pass0840', 'https://example.com/avatar840.jpg', 'VietDev', NULL, 'Inactive'),
('Mason', 'Hoang', 'mason.hoang841@example.com', 'pass0841', 'https://example.com/avatar841.jpg', 'InnoSoft', 'Student', 'Inactive'),
('Paula', 'Pham', 'paula.pham842@example.com', 'pass0842', 'https://example.com/avatar842.jpg', 'TMA', NULL, 'Inactive'),
('Zane', 'Tran', 'zane.tran843@example.com', 'pass0843', 'https://example.com/avatar843.jpg', 'AxonActive', 'Student', 'Inactive'),
('Steven', 'Dang', 'steven.dang844@example.com', 'pass0844', 'https://example.com/avatar844.jpg', 'FPT', 'Teacher', 'Inactive'),
('Aaron', 'Le', 'aaron.le845@example.com', 'pass0845', 'https://example.com/avatar845.jpg', 'InnoSoft', 'Student', 'Active'),
('Thomas', 'Ngo', 'thomas.ngo846@example.com', 'pass0846', 'https://example.com/avatar846.jpg', 'InnoSoft', 'Student', 'Active'),
('Ian', 'Hoang', 'ian.hoang847@example.com', 'pass0847', 'https://example.com/avatar847.jpg', 'TMA', NULL, 'Active'),
('Ximena', 'Hoang', 'ximena.hoang848@example.com', 'pass0848', 'https://example.com/avatar848.jpg', 'NashTech', NULL, 'Inactive'),
('Quinn', 'Vo', 'quinn.vo849@example.com', 'pass0849', 'https://example.com/avatar849.jpg', 'Toshiba', 'Student', 'Active'),
('Alice', 'Ngo', 'alice.ngo850@example.com', 'pass0850', 'https://example.com/avatar850.jpg', 'CMC', 'Student', 'Active'),
('Quinn', 'Truong', 'quinn.truong851@example.com', 'pass0851', 'https://example.com/avatar851.jpg', 'TMA', 'Teacher', 'Inactive'),
('Paula', 'Le', 'paula.le852@example.com', 'pass0852', 'https://example.com/avatar852.jpg', 'VietDev', NULL, 'Inactive'),
('Yuri', 'Le', 'yuri.le853@example.com', 'pass0853', 'https://example.com/avatar853.jpg', 'InnoSoft', 'Student', 'Active'),
('Oliver', 'Bui', 'oliver.bui854@example.com', 'pass0854', 'https://example.com/avatar854.jpg', 'InnoSoft', NULL, 'Inactive'),
('Elliot', 'Vo', 'elliot.vo855@example.com', 'pass0855', 'https://example.com/avatar855.jpg', 'InnoSoft', NULL, 'Active'),
('Ian', 'Pham', 'ian.pham856@example.com', 'pass0856', 'https://example.com/avatar856.jpg', 'TMA', 'Teacher', 'Inactive'),
('Donna', 'Ngo', 'donna.ngo857@example.com', 'pass0857', 'https://example.com/avatar857.jpg', 'FPT', NULL, 'Inactive'),
('Nina', 'Le', 'nina.le858@example.com', 'pass0858', 'https://example.com/avatar858.jpg', 'NashTech', NULL, 'Active'),
('Elliot', 'Bui', 'elliot.bui859@example.com', 'pass0859', 'https://example.com/avatar859.jpg', 'AxonActive', 'Student', 'Active'),
('Bob', 'Le', 'bob.le860@example.com', 'pass0860', 'https://example.com/avatar860.jpg', 'NashTech', NULL, 'Active'),
('Evan', 'Nguyen', 'evan.nguyen861@example.com', 'pass0861', 'https://example.com/avatar861.jpg', 'InnoSoft', NULL, 'Active'),
('Hannah', 'Pham', 'hannah.pham862@example.com', 'pass0862', 'https://example.com/avatar862.jpg', 'VietDev', NULL, 'Active'),
('Michael', 'Pham', 'michael.pham863@example.com', 'pass0863', 'https://example.com/avatar863.jpg', 'InnoSoft', NULL, 'Active'),
('Michael', 'Dang', 'michael.dang864@example.com', 'pass0864', 'https://example.com/avatar864.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Donna', 'Hoang', 'donna.hoang865@example.com', 'pass0865', 'https://example.com/avatar865.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Isaac', 'Nguyen', 'isaac.nguyen866@example.com', 'pass0866', 'https://example.com/avatar866.jpg', 'VietDev', NULL, 'Inactive'),
('Rachel', 'Vo', 'rachel.vo867@example.com', 'pass0867', 'https://example.com/avatar867.jpg', 'CMC', 'Teacher', 'Active'),
('Penny', 'Bui', 'penny.bui868@example.com', 'pass0868', 'https://example.com/avatar868.jpg', 'VietDev', 'Student', 'Inactive'),
('William', 'Tran', 'william.tran869@example.com', 'pass0869', 'https://example.com/avatar869.jpg', 'FPT', 'Student', 'Inactive'),
('Oliver', 'Pham', 'oliver.pham870@example.com', 'pass0870', 'https://example.com/avatar870.jpg', 'GlobalSoft', NULL, 'Active'),
('Quinn', 'Hoang', 'quinn.hoang871@example.com', 'pass0871', 'https://example.com/avatar871.jpg', 'AxonActive', 'Student', 'Active'),
('Oscar', 'Tran', 'oscar.tran872@example.com', 'pass0872', 'https://example.com/avatar872.jpg', 'TechCorp', NULL, 'Active'),
('William', 'Bui', 'william.bui873@example.com', 'pass0873', 'https://example.com/avatar873.jpg', 'TechCorp', 'Student', 'Active'),
('Ray', 'Bui', 'ray.bui874@example.com', 'pass0874', 'https://example.com/avatar874.jpg', 'InnoSoft', 'Teacher', 'Inactive'),
('Victor', 'Truong', 'victor.truong875@example.com', 'pass0875', 'https://example.com/avatar875.jpg', 'VietDev', 'Student', 'Active'),
('Rachel', 'Pham', 'rachel.pham876@example.com', 'pass0876', 'https://example.com/avatar876.jpg', 'AxonActive', 'Student', 'Active'),
('Oscar', 'Dang', 'oscar.dang877@example.com', 'pass0877', 'https://example.com/avatar877.jpg', 'AxonActive', NULL, 'Active'),
('Bob', 'Truong', 'bob.truong878@example.com', 'pass0878', 'https://example.com/avatar878.jpg', 'AxonActive', NULL, 'Active'),
('Bella', 'Le', 'bella.le879@example.com', 'pass0879', 'https://example.com/avatar879.jpg', 'TechCorp', NULL, 'Active'),
('Alice', 'Truong', 'alice.truong880@example.com', 'pass0880', 'https://example.com/avatar880.jpg', 'FPT', NULL, 'Inactive'),
('Yuri', 'Bui', 'yuri.bui881@example.com', 'pass0881', 'https://example.com/avatar881.jpg', 'GlobalSoft', 'Student', 'Inactive'),
('Jane', 'Dang', 'jane.dang882@example.com', 'pass0882', 'https://example.com/avatar882.jpg', 'TMA', 'Student', 'Active'),
('Victor', 'Ngo', 'victor.ngo883@example.com', 'pass0883', 'https://example.com/avatar883.jpg', 'FPT', 'Student', 'Inactive'),
('Penny', 'Nguyen', 'penny.nguyen884@example.com', 'pass0884', 'https://example.com/avatar884.jpg', 'FPT', NULL, 'Active'),
('Michael', 'Vo', 'michael.vo885@example.com', 'pass0885', 'https://example.com/avatar885.jpg', 'TMA', NULL, 'Active'),
('Carter', 'Le', 'carter.le886@example.com', 'pass0886', 'https://example.com/avatar886.jpg', 'NashTech', 'Teacher', 'Active'),
('Daisy', 'Ngo', 'daisy.ngo887@example.com', 'pass0887', 'https://example.com/avatar887.jpg', 'FPT', 'Student', 'Inactive'),
('Alice', 'Ngo', 'alice.ngo888@example.com', 'pass0888', 'https://example.com/avatar888.jpg', 'AxonActive', 'Teacher', 'Active'),
('George', 'Hoang', 'george.hoang889@example.com', 'pass0889', 'https://example.com/avatar889.jpg', 'FPT', NULL, 'Inactive'),
('William', 'Ngo', 'william.ngo890@example.com', 'pass0890', 'https://example.com/avatar890.jpg', 'NashTech', NULL, 'Inactive'),
('Bob', 'Hoang', 'bob.hoang891@example.com', 'pass0891', 'https://example.com/avatar891.jpg', 'NashTech', 'Teacher', 'Inactive'),
('Sophia', 'Truong', 'sophia.truong892@example.com', 'pass0892', 'https://example.com/avatar892.jpg', 'InnoSoft', NULL, 'Active'),
('George', 'Ngo', 'george.ngo893@example.com', 'pass0893', 'https://example.com/avatar893.jpg', 'InnoSoft', 'Teacher', 'Active'),
('Hailey', 'Le', 'hailey.le894@example.com', 'pass0894', 'https://example.com/avatar894.jpg', 'TMA', NULL, 'Inactive'),
('Alice', 'Vo', 'alice.vo895@example.com', 'pass0895', 'https://example.com/avatar895.jpg', 'NashTech', 'Student', 'Active'),
('Naomi', 'Hoang', 'naomi.hoang896@example.com', 'pass0896', 'https://example.com/avatar896.jpg', 'FPT', NULL, 'Active'),
('Kyle', 'Le', 'kyle.le897@example.com', 'pass0897', 'https://example.com/avatar897.jpg', 'AxonActive', 'Student', 'Inactive'),
('Charlie', 'Dang', 'charlie.dang898@example.com', 'pass0898', 'https://example.com/avatar898.jpg', 'InnoSoft', 'Student', 'Active'),
('Aaron', 'Truong', 'aaron.truong899@example.com', 'pass0899', 'https://example.com/avatar899.jpg', 'InnoSoft', NULL, 'Inactive'),
('Oscar', 'Truong', 'oscar.truong900@example.com', 'pass0900', 'https://example.com/avatar900.jpg', 'TechCorp', NULL, 'Inactive'),
('Aaron', 'Pham', 'aaron.pham901@example.com', 'pass0901', 'https://example.com/avatar901.jpg', 'NashTech', 'Teacher', 'Active'),
('Bella', 'Vo', 'bella.vo902@example.com', 'pass0902', 'https://example.com/avatar902.jpg', 'TechCorp', 'Teacher', 'Active'),
('Yuri', 'Ngo', 'yuri.ngo903@example.com', 'pass0903', 'https://example.com/avatar903.jpg', 'FPT', 'Student', 'Inactive'),
('William', 'Truong', 'william.truong904@example.com', 'pass0904', 'https://example.com/avatar904.jpg', 'AxonActive', 'Student', 'Inactive'),
('Zane', 'Ngo', 'zane.ngo905@example.com', 'pass0905', 'https://example.com/avatar905.jpg', 'NashTech', NULL, 'Active'),
('Charlie', 'Truong', 'charlie.truong906@example.com', 'pass0906', 'https://example.com/avatar906.jpg', 'AxonActive', NULL, 'Active'),
('Alice', 'Pham', 'alice.pham907@example.com', 'pass0907', 'https://example.com/avatar907.jpg', 'TMA', 'Teacher', 'Active'),
('Bella', 'Truong', 'bella.truong908@example.com', 'pass0908', 'https://example.com/avatar908.jpg', 'CMC', NULL, 'Active'),
('Sophia', 'Vo', 'sophia.vo909@example.com', 'pass0909', 'https://example.com/avatar909.jpg', 'Toshiba', NULL, 'Active'),
('Oliver', 'Hoang', 'oliver.hoang910@example.com', 'pass0910', 'https://example.com/avatar910.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Victor', 'Tran', 'victor.tran911@example.com', 'pass0911', 'https://example.com/avatar911.jpg', 'NashTech', NULL, 'Inactive'),
('Ray', 'Ngo', 'ray.ngo912@example.com', 'pass0912', 'https://example.com/avatar912.jpg', 'GlobalSoft', 'Teacher', 'Inactive'),
('Yuri', 'Ngo', 'yuri.ngo913@example.com', 'pass0913', 'https://example.com/avatar913.jpg', 'CMC', 'Teacher', 'Inactive'),
('Elliot', 'Dang', 'elliot.dang914@example.com', 'pass0914', 'https://example.com/avatar914.jpg', 'GlobalSoft', NULL, 'Active'),
('Paula', 'Ngo', 'paula.ngo915@example.com', 'pass0915', 'https://example.com/avatar915.jpg', 'TechCorp', NULL, 'Active'),
('Elliot', 'Hoang', 'elliot.hoang916@example.com', 'pass0916', 'https://example.com/avatar916.jpg', 'TechCorp', NULL, 'Active'),
('Evan', 'Tran', 'evan.tran917@example.com', 'pass0917', 'https://example.com/avatar917.jpg', 'GlobalSoft', NULL, 'Active'),
('Oliver', 'Bui', 'oliver.bui918@example.com', 'pass0918', 'https://example.com/avatar918.jpg', 'TMA', NULL, 'Inactive'),
('Alice', 'Ngo', 'alice.ngo919@example.com', 'pass0919', 'https://example.com/avatar919.jpg', 'TMA', NULL, 'Inactive'),
('Donna', 'Hoang', 'donna.hoang920@example.com', 'pass0920', 'https://example.com/avatar920.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Zara', 'Ngo', 'zara.ngo921@example.com', 'pass0921', 'https://example.com/avatar921.jpg', 'VietDev', NULL, 'Active'),
('Wendy', 'Vo', 'wendy.vo922@example.com', 'pass0922', 'https://example.com/avatar922.jpg', 'CMC', 'Teacher', 'Inactive'),
('Evan', 'Ngo', 'evan.ngo923@example.com', 'pass0923', 'https://example.com/avatar923.jpg', 'VietDev', 'Student', 'Active'),
('Kyle', 'Le', 'kyle.le924@example.com', 'pass0924', 'https://example.com/avatar924.jpg', 'InnoSoft', NULL, 'Active'),
('Laura', 'Hoang', 'laura.hoang925@example.com', 'pass0925', 'https://example.com/avatar925.jpg', 'Toshiba', 'Teacher', 'Inactive'),
('Mason', 'Bui', 'mason.bui926@example.com', 'pass0926', 'https://example.com/avatar926.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Zane', 'Dang', 'zane.dang927@example.com', 'pass0927', 'https://example.com/avatar927.jpg', 'InnoSoft', 'Student', 'Inactive'),
('Daisy', 'Nguyen', 'daisy.nguyen928@example.com', 'pass0928', 'https://example.com/avatar928.jpg', 'TMA', NULL, 'Inactive'),
('Fiona', 'Hoang', 'fiona.hoang929@example.com', 'pass0929', 'https://example.com/avatar929.jpg', 'NashTech', 'Student', 'Active'),
('Donna', 'Hoang', 'donna.hoang930@example.com', 'pass0930', 'https://example.com/avatar930.jpg', 'GlobalSoft', 'Student', 'Active'),
('Wendy', 'Ngo', 'wendy.ngo931@example.com', 'pass0931', 'https://example.com/avatar931.jpg', 'FPT', 'Student', 'Active'),
('William', 'Dang', 'william.dang932@example.com', 'pass0932', 'https://example.com/avatar932.jpg', 'AxonActive', NULL, 'Inactive'),
('William', 'Le', 'william.le933@example.com', 'pass0933', 'https://example.com/avatar933.jpg', 'FPT', NULL, 'Inactive'),
('Paula', 'Le', 'paula.le934@example.com', 'pass0934', 'https://example.com/avatar934.jpg', 'TechCorp', 'Teacher', 'Active'),
('Faith', 'Truong', 'faith.truong935@example.com', 'pass0935', 'https://example.com/avatar935.jpg', 'GlobalSoft', 'Student', 'Inactive'),
('Kevin', 'Dang', 'kevin.dang936@example.com', 'pass0936', 'https://example.com/avatar936.jpg', 'TechCorp', NULL, 'Inactive'),
('Elliot', 'Vo', 'elliot.vo937@example.com', 'pass0937', 'https://example.com/avatar937.jpg', 'VietDev', 'Student', 'Inactive'),
('Daisy', 'Truong', 'daisy.truong938@example.com', 'pass0938', 'https://example.com/avatar938.jpg', 'Toshiba', NULL, 'Inactive'),
('Paula', 'Bui', 'paula.bui939@example.com', 'pass0939', 'https://example.com/avatar939.jpg', 'FPT', NULL, 'Inactive'),
('Wendy', 'Dang', 'wendy.dang940@example.com', 'pass0940', 'https://example.com/avatar940.jpg', 'InnoSoft', 'Teacher', 'Active'),
('Alice', 'Le', 'alice.le941@example.com', 'pass0941', 'https://example.com/avatar941.jpg', 'AxonActive', NULL, 'Active'),
('Quinn', 'Truong', 'quinn.truong942@example.com', 'pass0942', 'https://example.com/avatar942.jpg', 'FPT', NULL, 'Active'),
('Nina', 'Le', 'nina.le943@example.com', 'pass0943', 'https://example.com/avatar943.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Oscar', 'Nguyen', 'oscar.nguyen944@example.com', 'pass0944', 'https://example.com/avatar944.jpg', 'CMC', 'Teacher', 'Active'),
('Yvonne', 'Vo', 'yvonne.vo945@example.com', 'pass0945', 'https://example.com/avatar945.jpg', 'VietDev', NULL, 'Inactive'),
('Steven', 'Tran', 'steven.tran946@example.com', 'pass0946', 'https://example.com/avatar946.jpg', 'VietDev', NULL, 'Inactive'),
('Evan', 'Tran', 'evan.tran947@example.com', 'pass0947', 'https://example.com/avatar947.jpg', 'TMA', 'Student', 'Inactive'),
('Wendy', 'Bui', 'wendy.bui948@example.com', 'pass0948', 'https://example.com/avatar948.jpg', 'TechCorp', 'Teacher', 'Active'),
('Wendy', 'Tran', 'wendy.tran949@example.com', 'pass0949', 'https://example.com/avatar949.jpg', 'GlobalSoft', NULL, 'Inactive'),
('Thomas', 'Truong', 'thomas.truong950@example.com', 'pass0950', 'https://example.com/avatar950.jpg', 'GlobalSoft', 'Teacher', 'Inactive'),
('Bella', 'Ngo', 'bella.ngo951@example.com', 'pass0951', 'https://example.com/avatar951.jpg', 'NashTech', NULL, 'Active'),
('Rachel', 'Le', 'rachel.le952@example.com', 'pass0952', 'https://example.com/avatar952.jpg', 'GlobalSoft', NULL, 'Active'),
('Paula', 'Truong', 'paula.truong953@example.com', 'pass0953', 'https://example.com/avatar953.jpg', 'FPT', 'Teacher', 'Active'),
('Kyle', 'Ngo', 'kyle.ngo954@example.com', 'pass0954', 'https://example.com/avatar954.jpg', 'TechCorp', NULL, 'Inactive'),
('Zane', 'Vo', 'zane.vo955@example.com', 'pass0955', 'https://example.com/avatar955.jpg', 'TMA', 'Student', 'Active'),
('Nina', 'Vo', 'nina.vo956@example.com', 'pass0956', 'https://example.com/avatar956.jpg', 'TMA', NULL, 'Active'),
('Charlie', 'Ngo', 'charlie.ngo957@example.com', 'pass0957', 'https://example.com/avatar957.jpg', 'Toshiba', NULL, 'Active'),
('Vera', 'Tran', 'vera.tran958@example.com', 'pass0958', 'https://example.com/avatar958.jpg', 'TMA', NULL, 'Active'),
('Jasmine', 'Bui', 'jasmine.bui959@example.com', 'pass0959', 'https://example.com/avatar959.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Wendy', 'Dang', 'wendy.dang960@example.com', 'pass0960', 'https://example.com/avatar960.jpg', 'InnoSoft', 'Student', 'Inactive'),
('Nina', 'Hoang', 'nina.hoang961@example.com', 'pass0961', 'https://example.com/avatar961.jpg', 'CMC', NULL, 'Active'),
('Xavier', 'Hoang', 'xavier.hoang962@example.com', 'pass0962', 'https://example.com/avatar962.jpg', 'FPT', NULL, 'Inactive'),
('Yuri', 'Vo', 'yuri.vo963@example.com', 'pass0963', 'https://example.com/avatar963.jpg', 'VietDev', 'Teacher', 'Inactive'),
('Penny', 'Vo', 'penny.vo964@example.com', 'pass0964', 'https://example.com/avatar964.jpg', 'FPT', NULL, 'Active'),
('Hailey', 'Dang', 'hailey.dang965@example.com', 'pass0965', 'https://example.com/avatar965.jpg', 'TMA', NULL, 'Active'),
('Gavin', 'Hoang', 'gavin.hoang966@example.com', 'pass0966', 'https://example.com/avatar966.jpg', 'CMC', 'Teacher', 'Inactive'),
('Tina', 'Pham', 'tina.pham967@example.com', 'pass0967', 'https://example.com/avatar967.jpg', 'CMC', 'Student', 'Active'),
('Victor', 'Le', 'victor.le968@example.com', 'pass0968', 'https://example.com/avatar968.jpg', 'CMC', NULL, 'Active'),
('Penny', 'Le', 'penny.le969@example.com', 'pass0969', 'https://example.com/avatar969.jpg', 'TechCorp', 'Student', 'Active'),
('Rachel', 'Le', 'rachel.le970@example.com', 'pass0970', 'https://example.com/avatar970.jpg', 'FPT', 'Teacher', 'Active'),
('Charlie', 'Bui', 'charlie.bui971@example.com', 'pass0971', 'https://example.com/avatar971.jpg', 'VietDev', 'Student', 'Active'),
('Fiona', 'Le', 'fiona.le972@example.com', 'pass0972', 'https://example.com/avatar972.jpg', 'VietDev', 'Student', 'Active'),
('Sophia', 'Pham', 'sophia.pham973@example.com', 'pass0973', 'https://example.com/avatar973.jpg', 'CMC', NULL, 'Active'),
('Sophia', 'Truong', 'sophia.truong974@example.com', 'pass0974', 'https://example.com/avatar974.jpg', 'VietDev', 'Student', 'Inactive'),
('Xavier', 'Pham', 'xavier.pham975@example.com', 'pass0975', 'https://example.com/avatar975.jpg', 'InnoSoft', NULL, 'Inactive'),
('Hannah', 'Pham', 'hannah.pham976@example.com', 'pass0976', 'https://example.com/avatar976.jpg', 'GlobalSoft', 'Teacher', 'Active'),
('Aaron', 'Pham', 'aaron.pham977@example.com', 'pass0977', 'https://example.com/avatar977.jpg', 'TechCorp', 'Teacher', 'Inactive'),
('Quinn', 'Pham', 'quinn.pham978@example.com', 'pass0978', 'https://example.com/avatar978.jpg', 'TechCorp', 'Student', 'Inactive'),
('Jane', 'Le', 'jane.le979@example.com', 'pass0979', 'https://example.com/avatar979.jpg', 'NashTech', NULL, 'Active'),
('Zara', 'Dang', 'zara.dang980@example.com', 'pass0980', 'https://example.com/avatar980.jpg', 'CMC', 'Student', 'Inactive'),
('Hannah', 'Tran', 'hannah.tran981@example.com', 'pass0981', 'https://example.com/avatar981.jpg', 'FPT', 'Student', 'Inactive'),
('Yvonne', 'Nguyen', 'yvonne.nguyen982@example.com', 'pass0982', 'https://example.com/avatar982.jpg', 'AxonActive', NULL, 'Inactive'),
('Bob', 'Truong', 'bob.truong983@example.com', 'pass0983', 'https://example.com/avatar983.jpg', 'InnoSoft', NULL, 'Inactive'),
('Charlie', 'Le', 'charlie.le984@example.com', 'pass0984', 'https://example.com/avatar984.jpg', 'FPT', 'Student', 'Active'),
('Elliot', 'Le', 'elliot.le985@example.com', 'pass0985', 'https://example.com/avatar985.jpg', 'AxonActive', 'Student', 'Active'),
('Steven', 'Truong', 'steven.truong986@example.com', 'pass0986', 'https://example.com/avatar986.jpg', 'GlobalSoft', 'Student', 'Active'),
('Nina', 'Pham', 'nina.pham987@example.com', 'pass0987', 'https://example.com/avatar987.jpg', 'CMC', 'Student', 'Inactive'),
('Daisy', 'Tran', 'daisy.tran988@example.com', 'pass0988', 'https://example.com/avatar988.jpg', 'GlobalSoft', 'Student', 'Inactive'),
('Quinn', 'Truong', 'quinn.truong989@example.com', 'pass0989', 'https://example.com/avatar989.jpg', 'NashTech', 'Student', 'Inactive'),
('Sophia', 'Le', 'sophia.le990@example.com', 'pass0990', 'https://example.com/avatar990.jpg', 'InnoSoft', NULL, 'Inactive'),
('Oliver', 'Hoang', 'oliver.hoang991@example.com', 'pass0991', 'https://example.com/avatar991.jpg', 'NashTech', NULL, 'Inactive'),
('Aaron', 'Bui', 'aaron.bui992@example.com', 'pass0992', 'https://example.com/avatar992.jpg', 'TMA', NULL, 'Active'),
('Gavin', 'Dang', 'gavin.dang993@example.com', 'pass0993', 'https://example.com/avatar993.jpg', 'TechCorp', NULL, 'Inactive'),
('Isaac', 'Ngo', 'isaac.ngo994@example.com', 'pass0994', 'https://example.com/avatar994.jpg', 'TechCorp', 'Teacher', 'Active'),
('Uma', 'Vo', 'uma.vo995@example.com', 'pass0995', 'https://example.com/avatar995.jpg', 'TMA', NULL, 'Inactive'),
('Zara', 'Dang', 'zara.dang996@example.com', 'pass0996', 'https://example.com/avatar996.jpg', 'Toshiba', NULL, 'Inactive'),
('Fiona', 'Ngo', 'fiona.ngo997@example.com', 'pass0997', 'https://example.com/avatar997.jpg', 'VietDev', 'Teacher', 'Active'),
('Oscar', 'Dang', 'oscar.dang998@example.com', 'pass0998', 'https://example.com/avatar998.jpg', 'InnoSoft', NULL, 'Inactive'),
('George', 'Tran', 'george.tran999@example.com', 'pass0999', 'https://example.com/avatar999.jpg', 'FPT', NULL, 'Inactive'),
('Ximena', 'Pham', 'ximena.pham1000@example.com', 'pass1000', 'https://example.com/avatar1000.jpg', 'TMA', 'Student', 'Inactive');
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

-- Insert into List (1000 rows)
INSERT INTO List (ListName, Icon, Color, ListTypeId, WorkspaceId, CreatedBy)
VALUES 
('Team Activities', 'ticket', '#2980B9', 3, 1, 402),
('Marketing Collateral', 'doc', '#FF5733', 4, 1, 905),
('Product Demo', 'game', '#27AE60', 1, 1, 570),
('Support Queue', 'box', '#E67E22', 4, 1, 346),
('Press Kit', 'search', '#2980B9', 3, 1, 990),
('Partnerships', 'file', '#00BCD4', 2, 1, 55),
('Customer Gifts', 'doc', '#27AE60', 3, 1, 176),
('Customer Surveys', 'social', '#C0392B', 3, 1, 882),
('API Documentation', 'mic', '#27AE60', 3, 1, 990),
('Product Testing', 'game', '#E67E22', 2, 1, 908),
('Design Review', 'gear', '#C0392B', 3, 1, 428),
('Holiday Schedule', 'calendar', '#9B59B6', 2, 1, 770),
('Workshop Plan', 'search', '#D35400', 5, 1, 235),
('Feature Requests', 'idea', '#3357FF', 3, 1, 372),
('Data Migration', 'run', '#D35400', 5, 1, 305),
('Ad Campaign', 'run', '#3498DB', 5, 1, 77),
('Marketing Collateral', 'bug', '#27AE60', 1, 1, 956),
('Product Metrics', 'comment', '#E67E22', 3, 1, 761),
('Performance Review', 'run', '#9B59B6', 2, 1, 801),
('Launch Plan', 'social', '#2ECC71', 1, 1, 61),
('Quarterly Review', 'rocket', '#33FF57', 1, 1, 631),
('Release Planning', 'checklist', '#3357FF', 4, 1, 100),
('Innovation Sprint', 'social', '#F1C40F', 3, 1, 225),
('Infrastructure Plan', 'media', '#7F8C8D', 3, 1, 122),
('Risk Assessment', 'book', '#E67E22', 2, 1, 205),
('Meeting Agenda', 'star', '#8E44AD', 3, 1, 102),
('UX Improvements', 'star', '#3357FF', 5, 1, 75),
('Legal Review', 'file', '#34495E', 4, 1, 511),
('Social Campaign', 'box', '#16A085', 2, 1, 826),
('Operational Review', 'star', '#8E44AD', 2, 1, 37),
('Meeting Agenda', 'welcome', '#8E44AD', 1, 1, 988),
('Engineering Tasks', 'map', '#00BCD4', 2, 1, 316),
('Internal Tools', 'comment', '#FF5733', 2, 1, 180),
('Product Backlog', 'chart', '#7F8C8D', 5, 1, 388),
('Internal Newsletter', 'chart', '#2980B9', 4, 1, 152),
('Team Standup', 'calendar', '#27AE60', 2, 1, 425),
('Business Plan', 'ticket', '#16A085', 1, 1, 424),
('API Documentation', 'checklist', '#8E44AD', 2, 1, 472),
('Operational Review', 'mic', '#7F8C8D', 4, 1, 289),
('Marketing Collateral', 'ads', '#3357FF', 3, 1, 528),
('Weekly Report', 'bug', '#7F8C8D', 1, 1, 896),
('Infrastructure Plan', 'calendar', '#F39C12', 1, 1, 255),
('Customer Retention', 'idea', '#34495E', 4, 1, 48),
('Workshop Plan', 'ticket', '#34495E', 2, 1, 315),
('Sales Report', 'social', '#33FF57', 5, 1, 886),
('Operational Review', 'idea', '#D35400', 4, 1, 580),
('Market Expansion', 'game', '#E67E22', 3, 1, 496),
('Campaign Ideas', 'file', '#33FF57', 4, 1, 954),
('Sales Report', 'bug', '#E74C3C', 2, 1, 792),
('Event Planning', 'search', '#F39C12', 4, 1, 149),
('Team Retreat', 'star', '#FF6F61', 3, 1, 579),
('Hiring Drive', 'welcome', '#33FF57', 2, 1, 839),
('Social Campaign', 'chart', '#FF6F61', 3, 1, 47),
('Performance Metrics', 'search', '#2ECC71', 4, 1, 93),
('Sales Targets', 'checklist', '#33FF57', 1, 1, 522),
('Quarterly Review', 'game', '#7F8C8D', 2, 1, 391),
('Hiring Plan', 'welcome', '#E74C3C', 2, 1, 696),
('Social Campaign', 'search', '#27AE60', 4, 1, 108),
('Design Review', 'paint', '#F39C12', 1, 1, 437),
('Investor Report', 'ticket', '#F1C40F', 2, 1, 773),
('Financial Report', 'paint', '#FF5733', 1, 1, 600),
('Market Research', 'ads', '#3357FF', 3, 1, 487),
('Infrastructure Plan', 'calendar', '#34495E', 2, 1, 777),
('Sales Report', 'chart', '#E74C3C', 5, 1, 971),
('App Store Launch', 'comment', '#2980B9', 4, 1, 906),
('Brand Guidelines', 'calendar', '#E67E22', 1, 1, 931),
('Campaign Ideas', 'idea', '#27AE60', 1, 1, 297),
('Release Notes', 'search', '#34495E', 3, 1, 155),
('Product Maintenance', 'book', '#27AE60', 5, 1, 156),
('Customer Loyalty', 'money', '#BDC3C7', 1, 1, 350),
('Hiring Drive', 'gear', '#2980B9', 3, 1, 390),
('Ad Campaign', 'chart', '#3498DB', 5, 1, 900),
('Budget Planning', 'doc', '#D35400', 5, 1, 11),
('Training Plan', 'gear', '#16A085', 4, 1, 695),
('Tech Debt Cleanup', 'paint', '#F1C40F', 1, 1, 676),
('Innovation Sprint', 'bug', '#00BCD4', 4, 1, 405),
('Content Calendar', 'run', '#3357FF', 5, 1, 882),
('Security Audit', 'paint', '#3357FF', 3, 1, 342),
('Tech Debt Cleanup', 'box', '#3498DB', 4, 1, 168),
('Release Notes', 'checklist', '#33FF57', 2, 1, 666),
('Growth Strategy', 'mic', '#34495E', 3, 1, 912),
('Legal Review', 'checklist', '#BDC3C7', 2, 1, 411),
('Support Escalations', 'users', '#34495E', 1, 1, 160),
('Bug Prioritization', 'check', '#9B59B6', 5, 1, 217),
('Customer Onboarding', 'ads', '#E67E22', 5, 1, 60),
('Sprint Retrospective', 'users', '#BDC3C7', 5, 1, 327),
('Feature Requests', 'bug', '#3498DB', 3, 1, 313),
('Operational Review', 'rocket', '#FF6F61', 5, 1, 910),
('API Documentation', 'calendar', '#2ECC71', 5, 1, 28),
('Product Roadshow', 'chart', '#BDC3C7', 3, 1, 761),
('Design Sprint', 'check', '#1ABC9C', 1, 1, 706),
('Launch Plan', 'chart', '#27AE60', 4, 1, 728),
('Support Escalations', 'idea', '#9B59B6', 5, 1, 595),
('Bug Fixes', 'search', '#D35400', 1, 1, 560),
('Knowledge Base', 'checklist', '#2ECC71', 3, 1, 134),
('Internal Alignment', 'users', '#FF6F61', 4, 1, 765),
('Performance Review', 'rocket', '#8E44AD', 3, 1, 925),
('Investor Report', 'users', '#2980B9', 4, 1, 494),
('Hiring Drive', 'ticket', '#27AE60', 1, 1, 742),
('Product Demo', 'chart', '#2ECC71', 3, 1, 614),
('Hiring Drive', 'ticket', '#9B59B6', 2, 1, 509),
('Ad Campaign', 'gear', '#E67E22', 3, 1, 491),
('Hiring Drive', 'ads', '#2ECC71', 2, 1, 874),
('SEO Plan', 'search', '#27AE60', 3, 1, 103),
('Bug Fixes', 'doc', '#F1C40F', 2, 1, 642),
('Board Meeting', 'box', '#BDC3C7', 5, 1, 182),
('Product Launch', 'file', '#34495E', 2, 1, 908),
('Market Expansion', 'welcome', '#1ABC9C', 4, 1, 730),
('Team Goals', 'file', '#9B59B6', 5, 1, 559),
('Stakeholder Meeting', 'run', '#2ECC71', 2, 1, 254),
('Product Launch', 'rocket', '#1ABC9C', 1, 1, 27),
('Innovation Sprint', 'box', '#C0392B', 5, 1, 32),
('Board Meeting', 'rocket', '#34495E', 3, 1, 167),
('Product Maintenance', 'check', '#BDC3C7', 2, 1, 634),
('Creative Brief', 'box', '#FF6F61', 2, 1, 211),
('Customer Calls', 'mic', '#FF6F61', 4, 1, 734),
('Internal Alignment', 'search', '#3498DB', 2, 1, 528),
('Security Audit', 'media', '#16A085', 2, 1, 963),
('Operational Review', 'run', '#1ABC9C', 5, 1, 546),
('Conference Plan', 'money', '#9B59B6', 2, 1, 979),
('Creative Brief', 'chart', '#2980B9', 3, 1, 127),
('Partnerships', 'chart', '#2980B9', 5, 1, 364),
('Team Standup', 'money', '#9B59B6', 1, 1, 221),
('Inventory Management', 'ads', '#7F8C8D', 4, 1, 555),
('Support Queue', 'checklist', '#7F8C8D', 5, 1, 687),
('Product Launch', 'book', '#C0392B', 1, 1, 488),
('Sprint Retrospective', 'folder', '#3498DB', 2, 1, 769),
('Customer Surveys', 'paint', '#7F8C8D', 2, 1, 850),
('Feature Launch', 'users', '#F39C12', 3, 1, 168),
('Product Updates', 'chart', '#9B59B6', 3, 1, 349),
('Inventory Audit', 'ads', '#16A085', 4, 1, 651),
('Staff Training', 'chart', '#2980B9', 1, 1, 62),
('Training Plan', 'folder', '#F1C40F', 5, 1, 602),
('Market Expansion', 'file', '#2ECC71', 2, 1, 598),
('Quarterly Review', 'rocket', '#2980B9', 1, 1, 377),
('Feature Launch', 'paint', '#2ECC71', 2, 1, 271),
('Holiday Schedule', 'ticket', '#FF5733', 1, 1, 119),
('Financial Report', 'bug', '#00BCD4', 1, 1, 491),
('Support Escalations', 'run', '#BDC3C7', 1, 1, 182),
('Media Outreach', 'box', '#E74C3C', 4, 1, 54),
('Performance Review', 'tools', '#FF5733', 5, 1, 182),
('Sales Report', 'welcome', '#2980B9', 4, 1, 665),
('Team Feedback', 'ads', '#1ABC9C', 3, 1, 413),
('DevOps Tasks', 'doc', '#33FF57', 5, 1, 927),
('Engineering Tasks', 'tools', '#F39C12', 1, 1, 820),
('Risk Assessment', 'users', '#BDC3C7', 5, 1, 164),
('Partner Outreach', 'paint', '#2ECC71', 5, 1, 797),
('Customer Loyalty', 'users', '#7F8C8D', 2, 1, 131),
('Meeting Notes', 'paint', '#27AE60', 3, 1, 657),
('Quarterly Review', 'idea', '#00BCD4', 4, 1, 717),
('Market Expansion', 'idea', '#E67E22', 5, 1, 391),
('Sales Report', 'media', '#7F8C8D', 5, 1, 374),
('Bug Fixes', 'ticket', '#8E44AD', 3, 1, 968),
('Growth Strategy', 'box', '#27AE60', 1, 1, 675),
('Customer Onboarding', 'bug', '#BDC3C7', 1, 1, 807),
('API Documentation', 'welcome', '#1ABC9C', 5, 1, 680),
('Customer Onboarding', 'media', '#33FF57', 2, 1, 849),
('UX Research', 'map', '#3357FF', 2, 1, 241),
('Product Maintenance', 'game', '#F1C40F', 2, 1, 230),
('Board Meeting', 'star', '#FF6F61', 1, 1, 897),
('Tech Debt Cleanup', 'chart', '#FF6F61', 5, 1, 34),
('Roadmap', 'comment', '#F39C12', 3, 1, 678),
('Inventory Audit', 'book', '#2980B9', 2, 1, 697),
('Partner Outreach', 'gear', '#C0392B', 4, 1, 319),
('Team Activities', 'doc', '#2980B9', 4, 1, 645),
('Campaign Ideas', 'media', '#7F8C8D', 1, 1, 731),
('Social Campaign', 'ticket', '#9B59B6', 1, 1, 53),
('Inventory Management', 'search', '#9B59B6', 1, 1, 715),
('Weekly Report', 'check', '#FF5733', 2, 1, 997),
('Release Planning', 'rocket', '#8E44AD', 1, 1, 270),
('Product Updates', 'paint', '#00BCD4', 3, 1, 549),
('Meeting Notes', 'ads', '#C0392B', 2, 1, 463),
('Sprint Retrospective', 'bug', '#16A085', 1, 1, 46),
('Website Redesign', 'idea', '#2ECC71', 5, 1, 177),
('Market Research', 'media', '#E67E22', 4, 1, 113),
('Product Launch', 'gear', '#27AE60', 4, 1, 595),
('Team Feedback', 'comment', '#E74C3C', 4, 1, 537),
('Client Updates', 'rocket', '#E67E22', 3, 1, 28),
('Campaign Ideas', 'idea', '#8E44AD', 4, 1, 240),
('Conference Plan', 'mic', '#F1C40F', 1, 1, 796),
('Growth Strategy', 'run', '#FF6F61', 5, 1, 587),
('App Store Launch', 'folder', '#E74C3C', 5, 1, 846),
('Workshop Plan', 'check', '#33FF57', 3, 1, 263),
('Internal Tools', 'file', '#E74C3C', 1, 1, 680),
('Infrastructure Plan', 'welcome', '#F1C40F', 5, 1, 980),
('Customer Retention', 'file', '#1ABC9C', 4, 1, 636),
('Workshop Plan', 'run', '#FF6F61', 3, 1, 51),
('Budget Planning', 'social', '#27AE60', 5, 1, 979),
('Vendor Management', 'star', '#16A085', 3, 1, 221),
('Product Updates', 'star', '#D35400', 5, 1, 338),
('Ad Campaign', 'mic', '#F39C12', 3, 1, 264),
('Investor Report', 'bug', '#2ECC71', 3, 1, 777),
('Sales Report', 'doc', '#33FF57', 1, 1, 745),
('Business Plan', 'comment', '#E74C3C', 4, 1, 444),
('Tech Debt Cleanup', 'checklist', '#00BCD4', 1, 1, 731),
('Data Migration', 'calendar', '#1ABC9C', 5, 1, 755),
('Customer Loyalty', 'connect', '#3357FF', 1, 1, 590),
('Customer Retention', 'bug', '#9B59B6', 3, 1, 791),
('Meeting Notes', 'box', '#BDC3C7', 1, 1, 783),
('Marketing Strategy', 'map', '#D35400', 2, 1, 617),
('Market Research', 'file', '#E74C3C', 1, 1, 213),
('Workflow Automation', 'ads', '#16A085', 5, 1, 49),
('Product Updates', 'search', '#BDC3C7', 2, 1, 324),
('Engineering Tasks', 'rocket', '#E67E22', 5, 1, 516),
('Testing Schedule', 'check', '#27AE60', 3, 1, 746),
('Marketing Strategy', 'comment', '#F39C12', 4, 1, 524),
('Growth Strategy', 'game', '#8E44AD', 1, 1, 158),
('Customer Surveys', 'gear', '#8E44AD', 4, 1, 967),
('Legal Review', 'idea', '#FF5733', 4, 1, 597),
('Internal Tools', 'search', '#00BCD4', 1, 1, 819),
('Meeting Notes', 'checklist', '#F1C40F', 5, 1, 558),
('Operational Review', 'chart', '#33FF57', 2, 1, 786),
('Media Outreach', 'paint', '#2ECC71', 1, 1, 322),
('Market Expansion', 'social', '#8E44AD', 4, 1, 748),
('Social Media', 'star', '#1ABC9C', 1, 1, 207),
('Release Notes', 'chart', '#E74C3C', 3, 1, 267),
('Bug Prioritization', 'calendar', '#F39C12', 1, 1, 543),
('Recruitment Drive', 'check', '#16A085', 1, 1, 657),
('Financial Report', 'file', '#3357FF', 1, 1, 104),
('Product Backlog', 'mic', '#7F8C8D', 4, 1, 92),
('Growth Hacking', 'media', '#FF5733', 2, 1, 130),
('Weekly Report', 'map', '#FF5733', 4, 1, 784),
('User Interviews', 'social', '#F39C12', 5, 1, 231),
('Business Plan', 'social', '#FF6F61', 4, 1, 927),
('API Documentation', 'search', '#33FF57', 4, 1, 808),
('UX Improvements', 'ads', '#9B59B6', 2, 1, 197),
('Market Research', 'check', '#F1C40F', 4, 1, 341),
('Team Goals', 'star', '#2980B9', 5, 1, 993),
('Meeting Agenda', 'ticket', '#E67E22', 3, 1, 598),
('Board Meeting', 'doc', '#9B59B6', 5, 1, 174),
('Product Launch', 'ads', '#3357FF', 5, 1, 221),
('Client Outreach', 'idea', '#F39C12', 3, 1, 690),
('Data Migration', 'rocket', '#3498DB', 5, 1, 425),
('Training Plan', 'rocket', '#E67E22', 1, 1, 978),
('Product Launch', 'chart', '#FF6F61', 1, 1, 102),
('Event Planning', 'search', '#D35400', 5, 1, 501),
('Financial Report', 'checklist', '#F39C12', 4, 1, 348),
('Innovation Sprint', 'mic', '#33FF57', 4, 1, 13),
('API Documentation', 'users', '#FF5733', 1, 1, 851),
('Design Sprint', 'ticket', '#27AE60', 5, 1, 239),
('Feature Launch', 'checklist', '#BDC3C7', 4, 1, 525),
('Budget Planning', 'chart', '#E74C3C', 4, 1, 954),
('Testing Schedule', 'doc', '#34495E', 1, 1, 504),
('Website Redesign', 'folder', '#8E44AD', 3, 1, 778),
('Partnerships', 'ticket', '#BDC3C7', 1, 1, 178),
('Inventory Management', 'connect', '#2980B9', 2, 1, 873),
('User Interviews', 'gear', '#D35400', 3, 1, 350),
('Market Expansion', 'gear', '#D35400', 5, 1, 369),
('Support Queue', 'run', '#3498DB', 3, 1, 876),
('Team Activities', 'mic', '#3357FF', 4, 1, 281),
('Performance Review', 'media', '#FF6F61', 4, 1, 308),
('UX Improvements', 'paint', '#BDC3C7', 3, 1, 809),
('Performance Review', 'mic', '#2980B9', 3, 1, 373),
('Sales Report', 'star', '#3498DB', 1, 1, 49),
('Marketing Collateral', 'book', '#33FF57', 3, 1, 857),
('Media Outreach', 'gear', '#1ABC9C', 3, 1, 859),
('Recruitment Drive', 'social', '#33FF57', 4, 1, 733),
('Market Expansion', 'checklist', '#E67E22', 1, 1, 116),
('Customer Onboarding', 'check', '#00BCD4', 1, 1, 74),
('Internal Tools', 'connect', '#3357FF', 3, 1, 630),
('Campaign Ideas', 'idea', '#27AE60', 3, 1, 659),
('Team Feedback', 'ticket', '#3498DB', 5, 1, 684),
('App Store Launch', 'users', '#34495E', 3, 1, 668),
('Product Updates', 'media', '#F1C40F', 2, 1, 453),
('Holiday Schedule', 'box', '#34495E', 5, 1, 739),
('Partner Outreach', 'doc', '#E67E22', 2, 1, 1000),
('Inventory Audit', 'search', '#F39C12', 3, 1, 164),
('Annual Report', 'gear', '#F39C12', 2, 1, 471),
('Client Updates', 'idea', '#7F8C8D', 2, 1, 753),
('Media Outreach', 'checklist', '#2ECC71', 4, 1, 288),
('Hiring Drive', 'search', '#BDC3C7', 5, 1, 317),
('Data Migration', 'map', '#FF5733', 4, 1, 589),
('Workshop Plan', 'media', '#3498DB', 4, 1, 428),
('Performance Review', 'tools', '#1ABC9C', 3, 1, 33),
('Knowledge Base', 'star', '#E74C3C', 2, 1, 815),
('Training Plan', 'folder', '#8E44AD', 3, 1, 186),
('Product Maintenance', 'comment', '#16A085', 3, 1, 451),
('Roadmap', 'connect', '#D35400', 5, 1, 130),
('Training Plan', 'social', '#C0392B', 1, 1, 211),
('Product Demo', 'gear', '#00BCD4', 5, 1, 876),
('Product Demo', 'gear', '#FF5733', 3, 1, 546),
('Partnerships', 'run', '#FF6F61', 5, 1, 344),
('App Store Launch', 'idea', '#16A085', 1, 1, 950),
('Brand Guidelines', 'ticket', '#3498DB', 4, 1, 185),
('Budget Planning', 'map', '#FF5733', 3, 1, 789),
('Internal Tools', 'welcome', '#16A085', 4, 1, 285),
('Product Updates', 'mic', '#2980B9', 1, 1, 620),
('Creative Brief', 'doc', '#3498DB', 4, 1, 223),
('Knowledge Base', 'rocket', '#3357FF', 4, 1, 793),
('Press Kit', 'check', '#7F8C8D', 1, 1, 199),
('Internal Alignment', 'checklist', '#FF5733', 2, 1, 85),
('Inventory Audit', 'search', '#E67E22', 1, 1, 945),
('Growth Hacking', 'checklist', '#1ABC9C', 4, 1, 158),
('Team Standup', 'money', '#8E44AD', 4, 1, 333),
('Board Meeting', 'media', '#33FF57', 3, 1, 989),
('Press Kit', 'money', '#BDC3C7', 3, 1, 159),
('Feature Requests', 'check', '#E67E22', 2, 1, 564),
('Training Plan', 'book', '#2ECC71', 2, 1, 26),
('Client Updates', 'calendar', '#E67E22', 1, 1, 685),
('Staff Training', 'doc', '#3498DB', 5, 1, 586),
('Hiring Plan', 'tools', '#3498DB', 2, 1, 399),
('Product Maintenance', 'map', '#2ECC71', 4, 1, 22),
('Feature Launch', 'chart', '#34495E', 3, 1, 873),
('Inventory Audit', 'file', '#E74C3C', 3, 1, 434),
('Client Outreach', 'mic', '#BDC3C7', 4, 1, 312),
('SEO Plan', 'check', '#C0392B', 3, 1, 908),
('Customer Gifts', 'connect', '#00BCD4', 5, 1, 617),
('Customer Calls', 'ticket', '#27AE60', 4, 1, 544),
('Staff Training', 'search', '#33FF57', 1, 1, 716),
('Testing Schedule', 'box', '#F1C40F', 4, 1, 758),
('Testing Schedule', 'comment', '#27AE60', 3, 1, 170),
('Feature Requests', 'connect', '#2980B9', 4, 1, 180),
('Sales Report', 'book', '#34495E', 2, 1, 517),
('Partner Outreach', 'connect', '#7F8C8D', 2, 1, 110),
('Team Feedback', 'checklist', '#D35400', 5, 1, 726),
('Release Notes', 'check', '#2ECC71', 5, 1, 990),
('Design Review', 'users', '#16A085', 5, 1, 949),
('Internal Tools', 'checklist', '#16A085', 5, 1, 857),
('Hiring Plan', 'run', '#34495E', 1, 1, 595),
('Annual Report', 'paint', '#C0392B', 4, 1, 59),
('Partner Outreach', 'chart', '#34495E', 5, 1, 728),
('Engineering Tasks', 'comment', '#F1C40F', 3, 1, 741),
('Customer Calls', 'paint', '#1ABC9C', 1, 1, 641),
('Client Outreach', 'search', '#2ECC71', 5, 1, 191),
('Financials', 'run', '#3357FF', 4, 1, 87),
('Partnerships', 'search', '#16A085', 2, 1, 638),
('Product Backlog', 'rocket', '#33FF57', 1, 1, 894),
('Team Goals', 'ticket', '#F39C12', 2, 1, 431),
('Knowledge Base', 'calendar', '#2ECC71', 5, 1, 737),
('Hiring Plan', 'checklist', '#F1C40F', 5, 1, 358),
('Partnerships', 'paint', '#3498DB', 4, 1, 731),
('Product Backlog', 'game', '#27AE60', 3, 1, 260),
('Content Calendar', 'calendar', '#C0392B', 5, 1, 56),
('Press Kit', 'chart', '#E67E22', 3, 1, 381),
('Weekly Report', 'box', '#8E44AD', 1, 1, 974),
('Operational Review', 'box', '#F39C12', 1, 1, 373),
('Bug Prioritization', 'comment', '#8E44AD', 1, 1, 382),
('Design Sprint', 'map', '#C0392B', 4, 1, 560),
('Product Roadshow', 'rocket', '#F1C40F', 1, 1, 486),
('Hiring Plan', 'tools', '#2ECC71', 5, 1, 326),
('Design Sprint', 'game', '#FF6F61', 2, 1, 505),
('Sales Report', 'tools', '#C0392B', 4, 1, 464),
('Testing Schedule', 'connect', '#3498DB', 3, 1, 692),
('Product Launch', 'comment', '#2ECC71', 4, 1, 832),
('Customer Loyalty', 'social', '#2980B9', 4, 1, 251),
('Internal Tools', 'folder', '#2ECC71', 1, 1, 629),
('Hiring Drive', 'search', '#E74C3C', 4, 1, 208),
('API Documentation', 'chart', '#2980B9', 2, 1, 254),
('Social Media', 'file', '#7F8C8D', 1, 1, 538),
('Market Research', 'run', '#BDC3C7', 3, 1, 106),
('Partner Outreach', 'run', '#FF6F61', 1, 1, 845),
('Internal Tools', 'welcome', '#00BCD4', 3, 1, 409),
('Product Backlog', 'gear', '#8E44AD', 1, 1, 495),
('Social Media', 'map', '#FF5733', 2, 1, 801),
('Performance Metrics', 'checklist', '#00BCD4', 1, 1, 564),
('Engineering Tasks', 'paint', '#8E44AD', 3, 1, 733),
('Marketing Collateral', 'folder', '#D35400', 4, 1, 875),
('DevOps Tasks', 'calendar', '#3498DB', 3, 1, 504),
('Performance Metrics', 'users', '#1ABC9C', 3, 1, 372),
('Product Roadshow', 'run', '#D35400', 4, 1, 948),
('Client Outreach', 'search', '#E67E22', 1, 1, 557),
('Infrastructure Plan', 'ads', '#33FF57', 2, 1, 23),
('Website Redesign', 'search', '#27AE60', 2, 1, 170),
('Legal Review', 'folder', '#8E44AD', 2, 1, 840),
('Growth Strategy', 'rocket', '#27AE60', 2, 1, 325),
('Meeting Notes', 'calendar', '#FF6F61', 4, 1, 363),
('Design Sprint', 'box', '#27AE60', 1, 1, 918),
('Product Updates', 'book', '#E67E22', 3, 1, 189),
('Customer Onboarding', 'paint', '#2ECC71', 2, 1, 372),
('Inventory Audit', 'media', '#3498DB', 2, 1, 162),
('App Store Launch', 'star', '#27AE60', 3, 1, 65),
('Hiring Drive', 'chart', '#D35400', 3, 1, 977),
('Client Updates', 'checklist', '#7F8C8D', 1, 1, 242),
('Social Campaign', 'box', '#34495E', 2, 1, 991),
('Creative Brief', 'book', '#00BCD4', 3, 1, 354),
('API Documentation', 'search', '#E67E22', 1, 1, 641),
('Partner Outreach', 'social', '#7F8C8D', 4, 1, 274),
('Product Testing', 'social', '#34495E', 4, 1, 977),
('Performance Review', 'ads', '#3498DB', 5, 1, 148),
('Inventory Management', 'media', '#E74C3C', 5, 1, 390),
('User Manual', 'comment', '#33FF57', 3, 1, 230),
('Social Campaign', 'check', '#7F8C8D', 4, 1, 499),
('Team Feedback', 'file', '#E67E22', 1, 1, 640),
('Meeting Agenda', 'welcome', '#E74C3C', 3, 1, 530),
('User Interviews', 'gear', '#BDC3C7', 5, 1, 982),
('Support Escalations', 'map', '#34495E', 3, 1, 284),
('Feature Launch', 'checklist', '#D35400', 5, 1, 618),
('DevOps Tasks', 'search', '#E74C3C', 1, 1, 858),
('Feature Requests', 'social', '#3498DB', 3, 1, 178),
('Meeting Agenda', 'paint', '#BDC3C7', 5, 1, 464),
('Stakeholder Meeting', 'search', '#00BCD4', 4, 1, 929),
('Marketing Collateral', 'ticket', '#3357FF', 5, 1, 555),
('Growth Hacking', 'ticket', '#1ABC9C', 4, 1, 755),
('Testing Schedule', 'rocket', '#16A085', 4, 1, 310),
('Market Research', 'mic', '#7F8C8D', 2, 1, 351),
('Conference Plan', 'tools', '#9B59B6', 1, 1, 854),
('Board Meeting', 'box', '#FF5733', 4, 1, 629),
('Press Kit', 'checklist', '#27AE60', 5, 1, 880),
('User Manual', 'rocket', '#FF6F61', 2, 1, 496),
('Legal Review', 'social', '#C0392B', 3, 1, 275),
('Sales Report', 'money', '#9B59B6', 1, 1, 635),
('Internal Newsletter', 'ticket', '#27AE60', 5, 1, 539),
('Client Outreach', 'ads', '#16A085', 1, 1, 95),
('Brand Campaign', 'users', '#3498DB', 4, 1, 303),
('Design Sprint', 'box', '#2980B9', 2, 1, 392),
('Quarterly Review', 'file', '#00BCD4', 4, 1, 104),
('Business Plan', 'bug', '#C0392B', 4, 1, 606),
('Meeting Notes', 'connect', '#2ECC71', 4, 1, 74),
('QA Checklist', 'comment', '#2980B9', 3, 1, 355),
('Customer Surveys', 'checklist', '#2980B9', 5, 1, 400),
('UX Research', 'ticket', '#3498DB', 5, 1, 139),
('Sales Targets', 'file', '#9B59B6', 2, 1, 143),
('Customer Gifts', 'check', '#1ABC9C', 2, 1, 596),
('Feature Launch', 'ticket', '#2980B9', 1, 1, 716),
('Design Sprint', 'check', '#33FF57', 2, 1, 964),
('Product Maintenance', 'users', '#3498DB', 2, 1, 599),
('Team Activities', 'money', '#2980B9', 4, 1, 810),
('Customer Gifts', 'social', '#F39C12', 4, 1, 960),
('Performance Review', 'folder', '#F39C12', 4, 1, 104),
('Holiday Schedule', 'book', '#7F8C8D', 1, 1, 357),
('Security Audit', 'mic', '#FF5733', 3, 1, 359),
('Customer Loyalty', 'run', '#C0392B', 1, 1, 794),
('Innovation Sprint', 'calendar', '#16A085', 4, 1, 187),
('Feature Launch', 'file', '#34495E', 3, 1, 42),
('DevOps Tasks', 'run', '#FF6F61', 4, 1, 534),
('Support Escalations', 'box', '#7F8C8D', 5, 1, 986),
('App Store Launch', 'map', '#9B59B6', 1, 1, 839),
('UX Improvements', 'search', '#9B59B6', 5, 1, 723),
('Bug Prioritization', 'bug', '#7F8C8D', 5, 1, 451),
('Product Metrics', 'chart', '#FF6F61', 3, 1, 930),
('Product Updates', 'ads', '#1ABC9C', 3, 1, 208),
('Release Planning', 'rocket', '#FF6F61', 2, 1, 228),
('Ad Campaign', 'media', '#F1C40F', 2, 1, 167),
('Design Review', 'file', '#16A085', 3, 1, 424),
('API Documentation', 'ticket', '#FF6F61', 3, 1, 837),
('Business Plan', 'connect', '#7F8C8D', 3, 1, 848),
('Testing Schedule', 'idea', '#FF6F61', 2, 1, 849),
('User Manual', 'money', '#34495E', 1, 1, 857),
('Training Plan', 'folder', '#BDC3C7', 3, 1, 105),
('Partner Outreach', 'money', '#F39C12', 1, 1, 232),
('Workflow Automation', 'social', '#C0392B', 1, 1, 923),
('Product Updates', 'chart', '#E67E22', 2, 1, 906),
('Financials', 'check', '#1ABC9C', 3, 1, 373),
('Product Demo', 'idea', '#F39C12', 2, 1, 488),
('Customer Surveys', 'book', '#F1C40F', 3, 1, 374),
('Customer Retention', 'gear', '#FF5733', 2, 1, 415),
('Content Calendar', 'run', '#2ECC71', 4, 1, 579),
('Client Outreach', 'game', '#34495E', 1, 1, 236),
('Training Plan', 'money', '#16A085', 4, 1, 888),
('Internal Tools', 'file', '#8E44AD', 2, 1, 902),
('Customer Gifts', 'rocket', '#D35400', 2, 1, 885),
('Team Activities', 'file', '#E74C3C', 5, 1, 629),
('Bug Prioritization', 'calendar', '#1ABC9C', 5, 1, 562),
('User Manual', 'run', '#16A085', 2, 1, 30),
('Budget Planning', 'doc', '#34495E', 5, 1, 551),
('UX Improvements', 'map', '#D35400', 3, 1, 805),
('Hiring Plan', 'tools', '#E74C3C', 4, 1, 665),
('Inventory Management', 'bug', '#2ECC71', 1, 1, 731),
('Team Feedback', 'search', '#16A085', 2, 1, 111),
('Roadmap', 'gear', '#00BCD4', 4, 1, 253),
('Support Queue', 'run', '#BDC3C7', 4, 1, 906),
('Internal Alignment', 'media', '#7F8C8D', 1, 1, 701),
('Social Media', 'money', '#7F8C8D', 5, 1, 781),
('User Interviews', 'check', '#FF5733', 1, 1, 823),
('Internal Newsletter', 'welcome', '#16A085', 1, 1, 477),
('Ad Campaign', 'paint', '#FF6F61', 1, 1, 643),
('Training Plan', 'game', '#34495E', 5, 1, 139),
('Ad Campaign', 'ads', '#00BCD4', 3, 1, 955),
('Partnerships', 'search', '#D35400', 4, 1, 424),
('Conference Plan', 'ads', '#FF5733', 4, 1, 588),
('Marketing Collateral', 'money', '#34495E', 4, 1, 386),
('Team Feedback', 'tools', '#E67E22', 2, 1, 876),
('Tech Debt Cleanup', 'doc', '#E74C3C', 4, 1, 797),
('Roadmap', 'paint', '#FF5733', 1, 1, 98),
('Inventory Management', 'money', '#1ABC9C', 5, 1, 573),
('Team Retreat', 'checklist', '#2ECC71', 1, 1, 987),
('Investor Report', 'folder', '#F1C40F', 3, 1, 356),
('Media Outreach', 'chart', '#9B59B6', 2, 1, 112),
('Infrastructure Plan', 'bug', '#33FF57', 4, 1, 813),
('Social Media', 'social', '#3357FF', 4, 1, 513),
('Roadmap', 'bug', '#FF5733', 4, 1, 808),
('Meeting Agenda', 'paint', '#7F8C8D', 2, 1, 88),
('Annual Report', 'file', '#8E44AD', 4, 1, 162),
('Team Feedback', 'bug', '#FF6F61', 3, 1, 827),
('Support Queue', 'game', '#16A085', 1, 1, 580),
('API Documentation', 'checklist', '#F1C40F', 2, 1, 498),
('Team Goals', 'book', '#BDC3C7', 1, 1, 800),
('Product Demo', 'file', '#BDC3C7', 3, 1, 936),
('Legal Review', 'box', '#BDC3C7', 2, 1, 412),
('Campaign Ideas', 'run', '#BDC3C7', 2, 1, 965),
('Inventory Management', 'money', '#1ABC9C', 5, 1, 128),
('QA Checklist', 'connect', '#E74C3C', 5, 1, 634),
('Design Review', 'rocket', '#D35400', 3, 1, 730),
('Bug Fixes', 'search', '#F1C40F', 3, 1, 838),
('Training Plan', 'idea', '#C0392B', 4, 1, 988),
('Workshop Plan', 'users', '#00BCD4', 5, 1, 151),
('Performance Review', 'check', '#F1C40F', 4, 1, 372),
('UX Improvements', 'tools', '#00BCD4', 2, 1, 513),
('Customer Onboarding', 'checklist', '#E74C3C', 2, 1, 153),
('Marketing Collateral', 'box', '#3357FF', 4, 1, 718),
('Growth Hacking', 'calendar', '#27AE60', 4, 1, 921),
('Campaign Ideas', 'search', '#3498DB', 3, 1, 443),
('Product Demo', 'rocket', '#BDC3C7', 3, 1, 382),
('Customer Gifts', 'paint', '#34495E', 5, 1, 506),
('QA Checklist', 'game', '#27AE60', 4, 1, 682),
('Design Review', 'checklist', '#7F8C8D', 3, 1, 667),
('Vendor Management', 'bug', '#9B59B6', 1, 1, 500),
('Investor Report', 'check', '#FF5733', 3, 1, 435),
('QA Checklist', 'mic', '#3498DB', 1, 1, 597),
('Staff Training', 'run', '#E74C3C', 3, 1, 214),
('Brand Campaign', 'media', '#2980B9', 1, 1, 404),
('Growth Strategy', 'chart', '#16A085', 5, 1, 198),
('Social Campaign', 'checklist', '#F1C40F', 5, 1, 846),
('Market Expansion', 'chart', '#2ECC71', 5, 1, 199),
('Quarterly Review', 'file', '#2ECC71', 4, 1, 68),
('Bug Prioritization', 'box', '#1ABC9C', 4, 1, 546),
('Inventory Audit', 'gear', '#F1C40F', 2, 1, 342),
('Team Activities', 'ticket', '#8E44AD', 3, 1, 497),
('Bug Fixes', 'social', '#8E44AD', 4, 1, 374),
('Investor Report', 'ads', '#FF6F61', 5, 1, 663),
('Hiring Drive', 'file', '#2980B9', 5, 1, 143),
('Customer Retention', 'ticket', '#2980B9', 4, 1, 544),
('Hiring Drive', 'calendar', '#E74C3C', 3, 1, 67),
('Recruitment Drive', 'book', '#16A085', 3, 1, 63),
('Brand Guidelines', 'folder', '#34495E', 1, 1, 338),
('Customer Gifts', 'game', '#33FF57', 5, 1, 323),
('Sales Targets', 'box', '#FF5733', 3, 1, 332),
('Legal Review', 'social', '#34495E', 3, 1, 164),
('Market Research', 'comment', '#D35400', 3, 1, 820),
('User Manual', 'map', '#3357FF', 5, 1, 591),
('Customer Surveys', 'folder', '#E67E22', 2, 1, 108),
('Campaign Ideas', 'comment', '#3357FF', 2, 1, 334),
('Business Plan', 'gear', '#E74C3C', 5, 1, 174),
('Infrastructure Plan', 'star', '#E74C3C', 1, 1, 697),
('Design Sprint', 'run', '#BDC3C7', 5, 1, 626),
('Design Review', 'file', '#3498DB', 4, 1, 446),
('Product Demo', 'idea', '#2ECC71', 4, 1, 176),
('Marketing Collateral', 'mic', '#E67E22', 3, 1, 706),
('UX Improvements', 'folder', '#2ECC71', 3, 1, 483),
('Engineering Tasks', 'idea', '#00BCD4', 3, 1, 92),
('Design Review', 'chart', '#34495E', 4, 1, 121),
('Team Retreat', 'social', '#27AE60', 1, 1, 164),
('Market Research', 'chart', '#2980B9', 3, 1, 756),
('Financial Report', 'ticket', '#E74C3C', 1, 1, 261),
('Hiring Drive', 'box', '#27AE60', 1, 1, 181),
('Marketing Strategy', 'bug', '#E67E22', 1, 1, 998),
('Bug Prioritization', 'paint', '#7F8C8D', 4, 1, 509),
('Growth Strategy', 'rocket', '#16A085', 1, 1, 850),
('Customer Retention', 'rocket', '#27AE60', 5, 1, 487),
('Customer Loyalty', 'connect', '#D35400', 5, 1, 54),
('Legal Review', 'welcome', '#16A085', 3, 1, 800),
('Innovation Sprint', 'tools', '#F1C40F', 1, 1, 127),
('Quarterly Review', 'social', '#1ABC9C', 1, 1, 231),
('Product Roadshow', 'file', '#9B59B6', 5, 1, 408),
('Innovation Sprint', 'ticket', '#1ABC9C', 4, 1, 674),
('Client Updates', 'calendar', '#33FF57', 3, 1, 552),
('Inventory Audit', 'calendar', '#C0392B', 2, 1, 713),
('Inventory Audit', 'idea', '#D35400', 3, 1, 703),
('Board Meeting', 'doc', '#F1C40F', 2, 1, 662),
('Marketing Collateral', 'ads', '#34495E', 3, 1, 828),
('Recruitment Drive', 'media', '#3357FF', 2, 1, 736),
('Product Metrics', 'paint', '#2980B9', 4, 1, 901),
('Team Retreat', 'book', '#BDC3C7', 5, 1, 226),
('Hiring Drive', 'media', '#BDC3C7', 3, 1, 196),
('DevOps Tasks', 'file', '#1ABC9C', 4, 1, 957),
('Hiring Plan', 'connect', '#F1C40F', 2, 1, 822),
('Design Sprint', 'rocket', '#3498DB', 4, 1, 200),
('Product Roadshow', 'search', '#9B59B6', 2, 1, 691),
('Security Audit', 'book', '#3498DB', 3, 1, 401),
('Engineering Tasks', 'book', '#16A085', 2, 1, 658),
('Client Updates', 'calendar', '#9B59B6', 3, 1, 986),
('User Manual', 'ticket', '#BDC3C7', 1, 1, 362),
('Operational Review', 'map', '#F1C40F', 2, 1, 609),
('Customer Loyalty', 'bug', '#27AE60', 2, 1, 650),
('Design Sprint', 'idea', '#9B59B6', 4, 1, 527),
('Stakeholder Meeting', 'search', '#2980B9', 2, 1, 189),
('Support Queue', 'check', '#7F8C8D', 5, 1, 298),
('Data Migration', 'file', '#BDC3C7', 4, 1, 110),
('Sales Targets', 'checklist', '#FF6F61', 2, 1, 428),
('Client Outreach', 'book', '#E67E22', 3, 1, 357),
('Tech Debt Cleanup', 'money', '#1ABC9C', 3, 1, 464),
('Financial Report', 'users', '#BDC3C7', 5, 1, 864),
('Conference Plan', 'file', '#3357FF', 2, 1, 870),
('Risk Assessment', 'paint', '#E74C3C', 1, 1, 239),
('Financials', 'bug', '#33FF57', 5, 1, 975),
('Growth Hacking', 'users', '#D35400', 1, 1, 459),
('Innovation Sprint', 'folder', '#1ABC9C', 4, 1, 274),
('Business Plan', 'paint', '#8E44AD', 1, 1, 918),
('Internal Alignment', 'users', '#F39C12', 3, 1, 225),
('Customer Calls', 'gear', '#2ECC71', 2, 1, 371),
('Budget Planning', 'idea', '#2ECC71', 3, 1, 66),
('Security Audit', 'checklist', '#34495E', 1, 1, 892),
('Engineering Tasks', 'bug', '#27AE60', 3, 1, 972),
('App Store Launch', 'ticket', '#F39C12', 4, 1, 864),
('Team Activities', 'comment', '#D35400', 3, 1, 104),
('Workshop Plan', 'ads', '#8E44AD', 4, 1, 893),
('Internal Tools', 'users', '#8E44AD', 5, 1, 804),
('Internal Tools', 'media', '#34495E', 4, 1, 560),
('Tech Debt Cleanup', 'comment', '#C0392B', 3, 1, 423),
('Budget Planning', 'folder', '#1ABC9C', 4, 1, 903),
('Growth Strategy', 'box', '#F1C40F', 4, 1, 41),
('Product Testing', 'welcome', '#27AE60', 4, 1, 797),
('Design Sprint', 'check', '#BDC3C7', 4, 1, 971),
('Team Retreat', 'checklist', '#F39C12', 5, 1, 100),
('Social Campaign', 'social', '#C0392B', 1, 1, 91),
('Product Backlog', 'idea', '#16A085', 5, 1, 55),
('Internal Tools', 'map', '#16A085', 1, 1, 507),
('Annual Report', 'chart', '#1ABC9C', 5, 1, 323),
('Launch Plan', 'ads', '#1ABC9C', 2, 1, 288),
('Team Standup', 'ticket', '#33FF57', 3, 1, 980),
('Bug Fixes', 'tools', '#16A085', 1, 1, 98),
('Media Outreach', 'ads', '#FF5733', 1, 1, 626),
('Stakeholder Meeting', 'folder', '#7F8C8D', 3, 1, 673),
('QA Checklist', 'box', '#2ECC71', 2, 1, 950),
('Partnerships', 'users', '#33FF57', 4, 1, 831),
('Investor Report', 'welcome', '#2ECC71', 4, 1, 571),
('Conference Plan', 'welcome', '#E74C3C', 2, 1, 508),
('Media Outreach', 'checklist', '#8E44AD', 5, 1, 288),
('SEO Plan', 'paint', '#C0392B', 3, 1, 403),
('Design Review', 'chart', '#F39C12', 2, 1, 227),
('Growth Strategy', 'comment', '#33FF57', 2, 1, 450),
('Product Metrics', 'social', '#7F8C8D', 2, 1, 565),
('Support Queue', 'connect', '#F1C40F', 3, 1, 109),
('Engineering Tasks', 'idea', '#9B59B6', 2, 1, 918),
('Legal Review', 'star', '#FF5733', 2, 1, 57),
('Internal Newsletter', 'social', '#9B59B6', 2, 1, 196),
('Press Kit', 'folder', '#E67E22', 3, 1, 809),
('Bug Prioritization', 'rocket', '#BDC3C7', 1, 1, 911),
('Engineering Tasks', 'chart', '#16A085', 5, 1, 710),
('Partner Outreach', 'star', '#1ABC9C', 2, 1, 117),
('Sprint Retrospective', 'chart', '#33FF57', 4, 1, 110),
('Sales Report', 'idea', '#FF5733', 2, 1, 587),
('Infrastructure Plan', 'rocket', '#9B59B6', 3, 1, 96),
('Stakeholder Meeting', 'chart', '#3498DB', 2, 1, 215),
('Product Updates', 'folder', '#1ABC9C', 1, 1, 742),
('Launch Plan', 'connect', '#E67E22', 5, 1, 148),
('Market Expansion', 'social', '#00BCD4', 1, 1, 132),
('Hiring Drive', 'tools', '#BDC3C7', 4, 1, 282),
('Support Queue', 'ads', '#F39C12', 1, 1, 886),
('Board Meeting', 'book', '#34495E', 2, 1, 962),
('Bug Fixes', 'mic', '#3498DB', 2, 1, 343),
('Market Research', 'tools', '#33FF57', 5, 1, 130),
('Performance Review', 'run', '#F1C40F', 4, 1, 642),
('Campaign Ideas', 'doc', '#C0392B', 4, 1, 783),
('Customer Onboarding', 'rocket', '#3357FF', 5, 1, 887),
('Bug Fixes', 'money', '#27AE60', 1, 1, 793),
('Bug Prioritization', 'paint', '#27AE60', 4, 1, 664),
('Feature Launch', 'gear', '#8E44AD', 3, 1, 550),
('Market Expansion', 'bug', '#00BCD4', 5, 1, 93),
('Release Planning', 'file', '#E67E22', 3, 1, 284),
('User Manual', 'rocket', '#1ABC9C', 5, 1, 897),
('Partner Outreach', 'calendar', '#E67E22', 1, 1, 445),
('Release Notes', 'calendar', '#E67E22', 5, 1, 911),
('Event Planning', 'social', '#D35400', 3, 1, 382),
('Conference Plan', 'money', '#7F8C8D', 4, 1, 117),
('Brand Campaign', 'comment', '#E74C3C', 1, 1, 312),
('Business Plan', 'ticket', '#27AE60', 1, 1, 842),
('Brand Guidelines', 'search', '#8E44AD', 4, 1, 367),
('Inventory Audit', 'file', '#D35400', 3, 1, 401),
('Sales Report', 'chart', '#F39C12', 2, 1, 630),
('Client Updates', 'chart', '#FF5733', 3, 1, 392),
('Board Meeting', 'tools', '#F39C12', 2, 1, 324),
('Social Campaign', 'ads', '#9B59B6', 2, 1, 28),
('QA Checklist', 'checklist', '#D35400', 2, 1, 313),
('Client Updates', 'game', '#1ABC9C', 4, 1, 138),
('Team Feedback', 'file', '#16A085', 5, 1, 105),
('Vendor Management', 'check', '#3498DB', 5, 1, 983),
('Financial Report', 'book', '#C0392B', 5, 1, 762),
('Quarterly Review', 'doc', '#2ECC71', 2, 1, 492),
('Training Plan', 'star', '#33FF57', 2, 1, 600),
('User Manual', 'map', '#BDC3C7', 4, 1, 766),
('Infrastructure Plan', 'bug', '#BDC3C7', 2, 1, 685),
('Partner Outreach', 'mic', '#FF5733', 2, 1, 594),
('Market Research', 'comment', '#7F8C8D', 4, 1, 732),
('Customer Gifts', 'check', '#3498DB', 3, 1, 321),
('API Documentation', 'money', '#F1C40F', 5, 1, 747),
('Testing Schedule', 'star', '#7F8C8D', 2, 1, 196),
('Social Media', 'chart', '#16A085', 1, 1, 406),
('API Documentation', 'bug', '#16A085', 2, 1, 390),
('App Store Launch', 'money', '#FF6F61', 1, 1, 869),
('Support Escalations', 'check', '#F1C40F', 2, 1, 342),
('Product Roadshow', 'ads', '#C0392B', 1, 1, 83),
('Product Launch', 'gear', '#F39C12', 4, 1, 403),
('Bug Prioritization', 'comment', '#F39C12', 2, 1, 513),
('Creative Brief', 'paint', '#33FF57', 5, 1, 321),
('Staff Training', 'rocket', '#C0392B', 1, 1, 212),
('Product Backlog', 'search', '#9B59B6', 1, 1, 544),
('QA Checklist', 'file', '#FF5733', 1, 1, 957),
('Marketing Strategy', 'social', '#D35400', 5, 1, 488),
('Customer Retention', 'connect', '#27AE60', 5, 1, 352),
('Product Backlog', 'calendar', '#33FF57', 2, 1, 563),
('Brand Guidelines', 'map', '#7F8C8D', 5, 1, 372),
('Growth Hacking', 'users', '#3498DB', 3, 1, 900),
('Brand Guidelines', 'paint', '#E74C3C', 1, 1, 602),
('Team Retreat', 'paint', '#FF6F61', 3, 1, 22),
('Security Audit', 'run', '#00BCD4', 1, 1, 324),
('Performance Review', 'social', '#2ECC71', 2, 1, 371),
('QA Checklist', 'media', '#00BCD4', 3, 1, 348),
('Sprint Retrospective', 'game', '#C0392B', 1, 1, 333),
('Marketing Strategy', 'idea', '#3357FF', 5, 1, 541),
('User Manual', 'chart', '#C0392B', 2, 1, 778),
('Data Migration', 'rocket', '#FF5733', 5, 1, 115),
('Financial Report', 'folder', '#33FF57', 2, 1, 299),
('Team Feedback', 'checklist', '#C0392B', 2, 1, 243),
('Tech Debt Cleanup', 'rocket', '#00BCD4', 5, 1, 300),
('Financial Report', 'file', '#8E44AD', 4, 1, 197),
('Press Kit', 'connect', '#F39C12', 3, 1, 632),
('UX Research', 'search', '#BDC3C7', 5, 1, 977),
('Hiring Drive', 'bug', '#F39C12', 2, 1, 516),
('Business Plan', 'folder', '#F39C12', 3, 1, 150),
('Budget Planning', 'comment', '#E67E22', 4, 1, 470),
('Event Planning', 'social', '#2ECC71', 4, 1, 152),
('UX Research', 'comment', '#E67E22', 2, 1, 784),
('Client Outreach', 'star', '#F39C12', 3, 1, 37),
('Support Queue', 'users', '#2ECC71', 3, 1, 867),
('Design Sprint', 'media', '#2980B9', 3, 1, 131),
('Customer Retention', 'media', '#34495E', 2, 1, 757),
('Hiring Drive', 'media', '#F1C40F', 3, 1, 970),
('Media Outreach', 'connect', '#8E44AD', 2, 1, 91),
('Product Metrics', 'rocket', '#BDC3C7', 2, 1, 327),
('Internal Newsletter', 'money', '#00BCD4', 4, 1, 685),
('Feature Requests', 'book', '#8E44AD', 5, 1, 991),
('Hiring Plan', 'chart', '#E74C3C', 1, 1, 392),
('Product Updates', 'star', '#16A085', 1, 1, 343),
('Budget Planning', 'paint', '#F1C40F', 5, 1, 783),
('Creative Brief', 'gear', '#00BCD4', 1, 1, 850),
('Performance Review', 'box', '#8E44AD', 1, 1, 825),
('Customer Surveys', 'chart', '#8E44AD', 2, 1, 903),
('Market Research', 'ticket', '#F1C40F', 2, 1, 196),
('User Interviews', 'ticket', '#D35400', 5, 1, 816),
('UX Research', 'game', '#D35400', 4, 1, 371),
('Design Review', 'chart', '#34495E', 1, 1, 65),
('Bug Prioritization', 'idea', '#00BCD4', 1, 1, 625),
('Customer Surveys', 'rocket', '#33FF57', 1, 1, 496),
('Data Migration', 'book', '#E67E22', 3, 1, 647),
('Internal Newsletter', 'social', '#C0392B', 3, 1, 949),
('Weekly Report', 'book', '#9B59B6', 2, 1, 11),
('Innovation Sprint', 'book', '#1ABC9C', 5, 1, 399),
('Workflow Automation', 'check', '#7F8C8D', 1, 1, 811),
('Stakeholder Meeting', 'gear', '#FF5733', 5, 1, 407),
('Product Roadshow', 'map', '#BDC3C7', 5, 1, 619),
('Release Notes', 'comment', '#BDC3C7', 4, 1, 348),
('Engineering Tasks', 'game', '#34495E', 3, 1, 135),
('Vendor Management', 'run', '#34495E', 1, 1, 155),
('Customer Calls', 'check', '#33FF57', 3, 1, 182),
('Bug Fixes', 'mic', '#34495E', 5, 1, 967),
('Marketing Strategy', 'media', '#34495E', 1, 1, 976),
('Social Media', 'mic', '#33FF57', 4, 1, 203),
('Stakeholder Meeting', 'checklist', '#BDC3C7', 1, 1, 425),
('Customer Retention', 'gear', '#3498DB', 2, 1, 930),
('Knowledge Base', 'comment', '#E74C3C', 5, 1, 751),
('Performance Review', 'ticket', '#C0392B', 3, 1, 160),
('Engineering Tasks', 'check', '#8E44AD', 4, 1, 323),
('Event Planning', 'ads', '#8E44AD', 1, 1, 237),
('Customer Calls', 'checklist', '#00BCD4', 1, 1, 624),
('Social Campaign', 'game', '#2ECC71', 1, 1, 955),
('Marketing Collateral', 'bug', '#FF5733', 5, 1, 647),
('Media Outreach', 'game', '#E67E22', 3, 1, 901),
('Business Plan', 'connect', '#1ABC9C', 1, 1, 236),
('Customer Gifts', 'checklist', '#FF6F61', 2, 1, 718),
('Vendor Management', 'paint', '#C0392B', 2, 1, 528),
('Press Kit', 'ads', '#7F8C8D', 1, 1, 770),
('Client Updates', 'game', '#BDC3C7', 3, 1, 431),
('App Store Launch', 'connect', '#2980B9', 3, 1, 815),
('Customer Surveys', 'idea', '#C0392B', 2, 1, 976),
('Brand Guidelines', 'checklist', '#2980B9', 5, 1, 421),
('Performance Review', 'money', '#7F8C8D', 2, 1, 523),
('Product Metrics', 'box', '#F39C12', 5, 1, 131),
('Design Sprint', 'check', '#8E44AD', 5, 1, 982),
('Data Migration', 'search', '#FF6F61', 1, 1, 980),
('Release Notes', 'mic', '#3498DB', 4, 1, 452),
('Product Launch', 'chart', '#D35400', 3, 1, 990),
('Press Kit', 'calendar', '#2ECC71', 1, 1, 107),
('Social Campaign', 'tools', '#7F8C8D', 4, 1, 895),
('Sprint Retrospective', 'chart', '#33FF57', 2, 1, 622),
('Hiring Plan', 'book', '#D35400', 4, 1, 738),
('Growth Strategy', 'doc', '#BDC3C7', 2, 1, 133),
('Engineering Tasks', 'welcome', '#9B59B6', 5, 1, 987),
('Customer Onboarding', 'tools', '#D35400', 2, 1, 668),
('Annual Report', 'money', '#00BCD4', 3, 1, 594),
('Social Campaign', 'paint', '#1ABC9C', 4, 1, 788),
('SEO Plan', 'rocket', '#3498DB', 5, 1, 474),
('Performance Review', 'game', '#2ECC71', 3, 1, 679),
('Financials', 'connect', '#9B59B6', 3, 1, 268),
('Feature Requests', 'comment', '#00BCD4', 4, 1, 162),
('Data Migration', 'game', '#FF6F61', 1, 1, 134),
('Feature Requests', 'rocket', '#BDC3C7', 3, 1, 511),
('Creative Brief', 'book', '#2980B9', 5, 1, 131),
('Internal Alignment', 'file', '#2ECC71', 3, 1, 37),
('Partner Outreach', 'money', '#2980B9', 5, 1, 966),
('Product Demo', 'social', '#E74C3C', 5, 1, 219),
('Release Planning', 'money', '#00BCD4', 1, 1, 765),
('Quarterly Review', 'social', '#D35400', 3, 1, 839),
('User Interviews', 'welcome', '#C0392B', 1, 1, 126),
('Bug Fixes', 'gear', '#F1C40F', 5, 1, 789),
('Support Queue', 'mic', '#FF6F61', 1, 1, 485),
('Feature Requests', 'ads', '#8E44AD', 5, 1, 997),
('Market Expansion', 'map', '#8E44AD', 2, 1, 555),
('Workflow Automation', 'ticket', '#E74C3C', 2, 1, 746),
('Customer Surveys', 'idea', '#3498DB', 1, 1, 12),
('Growth Strategy', 'rocket', '#9B59B6', 4, 1, 862),
('Product Maintenance', 'calendar', '#7F8C8D', 5, 1, 635),
('Release Planning', 'social', '#1ABC9C', 2, 1, 294),
('API Documentation', 'comment', '#C0392B', 5, 1, 824),
('Product Demo', 'money', '#E67E22', 5, 1, 104),
('Staff Training', 'connect', '#33FF57', 1, 1, 89),
('UX Improvements', 'box', '#8E44AD', 1, 1, 268),
('Hiring Plan', 'tools', '#F39C12', 1, 1, 909),
('Infrastructure Plan', 'connect', '#00BCD4', 3, 1, 672),
('Bug Prioritization', 'paint', '#FF5733', 4, 1, 892),
('Roadmap', 'rocket', '#E74C3C', 1, 1, 830),
('Business Plan', 'file', '#9B59B6', 1, 1, 758),
('Partnerships', 'calendar', '#F1C40F', 4, 1, 595),
('Operational Review', 'calendar', '#C0392B', 3, 1, 87),
('Feature Requests', 'ads', '#BDC3C7', 5, 1, 243),
('Testing Schedule', 'run', '#00BCD4', 2, 1, 432),
('Internal Alignment', 'welcome', '#34495E', 1, 1, 872),
('Product Backlog', 'users', '#E67E22', 4, 1, 395),
('UX Research', 'folder', '#2980B9', 5, 1, 626),
('Event Planning', 'doc', '#C0392B', 1, 1, 875),
('Operational Review', 'idea', '#2980B9', 1, 1, 18),
('Team Retreat', 'book', '#E74C3C', 3, 1, 836),
('Vendor Management', 'connect', '#1ABC9C', 2, 1, 929),
('Customer Loyalty', 'run', '#1ABC9C', 3, 1, 609),
('Market Expansion', 'social', '#16A085', 1, 1, 177),
('Performance Review', 'connect', '#FF5733', 1, 1, 95),
('Release Planning', 'bug', '#8E44AD', 4, 1, 954),
('Security Audit', 'book', '#BDC3C7', 1, 1, 743),
('Vendor Management', 'comment', '#E74C3C', 1, 1, 446),
('Marketing Collateral', 'paint', '#D35400', 2, 1, 249),
('Security Audit', 'run', '#16A085', 4, 1, 600),
('Product Launch', 'rocket', '#7F8C8D', 5, 1, 518),
('Tech Debt Cleanup', 'game', '#C0392B', 5, 1, 186),
('Annual Report', 'bug', '#E67E22', 1, 1, 802),
('Meeting Notes', 'star', '#BDC3C7', 5, 1, 658),
('Product Demo', 'star', '#8E44AD', 5, 1, 975),
('Holiday Schedule', 'box', '#9B59B6', 2, 1, 572),
('Performance Metrics', 'media', '#FF6F61', 1, 1, 424),
('Release Notes', 'mic', '#34495E', 2, 1, 484),
('Workflow Automation', 'connect', '#3357FF', 1, 1, 356),
('Infrastructure Plan', 'money', '#33FF57', 3, 1, 207),
('Design Sprint', 'idea', '#2980B9', 2, 1, 707),
('Roadmap', 'users', '#3498DB', 5, 1, 996),
('Ad Campaign', 'users', '#2ECC71', 4, 1, 701),
('Workshop Plan', 'run', '#7F8C8D', 1, 1, 997),
('Bug Prioritization', 'ads', '#FF6F61', 5, 1, 650),
('QA Checklist', 'money', '#9B59B6', 3, 1, 953),
('Financials', 'media', '#C0392B', 4, 1, 645),
('Inventory Audit', 'check', '#1ABC9C', 2, 1, 115),
('Inventory Audit', 'comment', '#33FF57', 4, 1, 474),
('Inventory Audit', 'idea', '#7F8C8D', 5, 1, 403),
('Client Outreach', 'doc', '#FF5733', 3, 1, 372),
('Operational Review', 'run', '#FF5733', 1, 1, 508),
('Client Outreach', 'check', '#C0392B', 3, 1, 159),
('API Documentation', 'map', '#C0392B', 3, 1, 626),
('Inventory Audit', 'rocket', '#3498DB', 1, 1, 196),
('Sprint Retrospective', 'run', '#C0392B', 2, 1, 349),
('Social Media', 'file', '#34495E', 1, 1, 962),
('Security Audit', 'checklist', '#33FF57', 4, 1, 171),
('Bug Fixes', 'star', '#E74C3C', 2, 1, 122),
('Business Plan', 'idea', '#FF5733', 3, 1, 613),
('Stakeholder Meeting', 'bug', '#00BCD4', 1, 1, 28),
('Customer Calls', 'connect', '#F1C40F', 3, 1, 974),
('Marketing Strategy', 'ads', '#00BCD4', 5, 1, 916),
('UX Research', 'bug', '#2980B9', 5, 1, 376),
('Client Outreach', 'mic', '#FF5733', 3, 1, 748),
('Stakeholder Meeting', 'calendar', '#27AE60', 5, 1, 142),
('Performance Metrics', 'folder', '#2980B9', 3, 1, 433),
('Internal Newsletter', 'star', '#FF6F61', 1, 1, 339),
('Data Migration', 'welcome', '#34495E', 4, 1, 37),
('Media Outreach', 'ads', '#E67E22', 5, 1, 687),
('QA Checklist', 'mic', '#3357FF', 2, 1, 540),
('Social Campaign', 'connect', '#3357FF', 1, 1, 602),
('Quarterly Review', 'map', '#BDC3C7', 3, 1, 292),
('Team Activities', 'social', '#D35400', 1, 1, 496),
('Support Escalations', 'checklist', '#F39C12', 4, 1, 579),
('Operational Review', 'game', '#33FF57', 4, 1, 448),
('Design Sprint', 'media', '#9B59B6', 3, 1, 104),
('Client Outreach', 'chart', '#C0392B', 1, 1, 782),
('Market Research', 'bug', '#1ABC9C', 2, 1, 265),
('Feature Requests', 'gear', '#2ECC71', 1, 1, 971),
('Customer Calls', 'welcome', '#8E44AD', 1, 1, 282),
('Marketing Collateral', 'gear', '#FF6F61', 3, 1, 589),
('QA Checklist', 'star', '#16A085', 3, 1, 209),
('Vendor Management', 'gear', '#3498DB', 5, 1, 16),
('Product Maintenance', 'game', '#E74C3C', 3, 1, 450),
('QA Checklist', 'check', '#3498DB', 3, 1, 764),
('Client Outreach', 'box', '#1ABC9C', 4, 1, 364),
('Bug Prioritization', 'checklist', '#E67E22', 2, 1, 95),
('Security Audit', 'connect', '#F39C12', 5, 1, 581),
('Website Redesign', 'rocket', '#2980B9', 3, 1, 444),
('Ad Campaign', 'ticket', '#BDC3C7', 5, 1, 633),
('Product Launch', 'gear', '#FF5733', 5, 1, 432),
('Product Launch', 'social', '#16A085', 4, 1, 713),
('Quarterly Review', 'calendar', '#27AE60', 2, 1, 174),
('Data Migration', 'doc', '#16A085', 2, 1, 85),
('Support Escalations', 'doc', '#1ABC9C', 1, 1, 925),
('Feature Requests', 'welcome', '#2ECC71', 4, 1, 750),
('Inventory Management', 'ticket', '#3498DB', 5, 1, 141),
('Product Maintenance', 'bug', '#7F8C8D', 4, 1, 602),
('Bug Prioritization', 'tools', '#BDC3C7', 5, 1, 113),
('DevOps Tasks', 'tools', '#2980B9', 4, 1, 606),
('Financials', 'idea', '#D35400', 5, 1, 191),
('Release Planning', 'calendar', '#16A085', 3, 1, 398),
('Hiring Drive', 'game', '#9B59B6', 3, 1, 829),
('Bug Fixes', 'map', '#00BCD4', 4, 1, 392),
('Weekly Report', 'star', '#33FF57', 5, 1, 180),
('Client Updates', 'social', '#3357FF', 4, 1, 92),
('Client Updates', 'map', '#9B59B6', 1, 1, 160),
('Recruitment Drive', 'star', '#33FF57', 5, 1, 772),
('Tech Debt Cleanup', 'search', '#27AE60', 1, 1, 390),
('Internal Alignment', 'paint', '#F39C12', 1, 1, 738),
('Website Redesign', 'connect', '#C0392B', 4, 1, 605),
('Operational Review', 'ticket', '#BDC3C7', 4, 1, 113),
('Vendor Management', 'check', '#00BCD4', 5, 1, 772),
('Growth Hacking', 'chart', '#FF5733', 4, 1, 917),
('Internal Tools', 'run', '#1ABC9C', 5, 1, 394),
('Design Review', 'connect', '#8E44AD', 1, 1, 329),
('Ad Campaign', 'search', '#00BCD4', 2, 1, 525),
('Meeting Agenda', 'social', '#3498DB', 4, 1, 827),
('Market Research', 'social', '#E67E22', 4, 1, 503),
('Press Kit', 'mic', '#FF6F61', 2, 1, 912),
('Customer Retention', 'paint', '#7F8C8D', 2, 1, 205),
('Conference Plan', 'mic', '#BDC3C7', 2, 1, 244),
('Release Notes', 'money', '#E67E22', 2, 1, 77),
('Website Redesign', 'map', '#33FF57', 2, 1, 713),
('Release Planning', 'game', '#E74C3C', 2, 1, 297),
('User Interviews', 'ticket', '#34495E', 5, 1, 962),
('API Documentation', 'file', '#F1C40F', 1, 1, 525),
('Training Plan', 'connect', '#9B59B6', 4, 1, 184),
('UX Research', 'paint', '#27AE60', 3, 1, 495),
('Sales Targets', 'tools', '#2ECC71', 2, 1, 479),
('Feature Requests', 'search', '#2980B9', 5, 1, 189),
('Customer Gifts', 'map', '#1ABC9C', 1, 1, 978),
('Release Notes', 'box', '#3357FF', 1, 1, 727),
('Roadmap', 'mic', '#E67E22', 3, 1, 18),
('Product Backlog', 'box', '#9B59B6', 1, 1, 963),
('Customer Calls', 'bug', '#3357FF', 5, 1, 256),
('Conference Plan', 'ticket', '#00BCD4', 1, 1, 823),
('Team Activities', 'media', '#2ECC71', 5, 1, 425),
('DevOps Tasks', 'ticket', '#E74C3C', 1, 1, 577),
('Design Review', 'comment', '#1ABC9C', 5, 1, 618),
('Internal Tools', 'doc', '#7F8C8D', 2, 1, 899),
('User Interviews', 'comment', '#27AE60', 4, 1, 654),
('Team Activities', 'run', '#E67E22', 3, 1, 426),
('Internal Alignment', 'search', '#E74C3C', 2, 1, 98),
('Customer Calls', 'folder', '#7F8C8D', 3, 1, 785),
('Annual Report', 'users', '#E67E22', 3, 1, 691),
('Partner Outreach', 'run', '#F1C40F', 1, 1, 896),
('QA Checklist', 'idea', '#D35400', 2, 1, 194),
('Inventory Management', 'connect', '#E67E22', 1, 1, 847),
('Release Planning', 'welcome', '#7F8C8D', 1, 1, 132),
('Business Plan', 'idea', '#00BCD4', 3, 1, 762),
('Support Escalations', 'users', '#FF5733', 5, 1, 789),
('Campaign Ideas', 'run', '#BDC3C7', 1, 1, 711),
('Growth Hacking', 'folder', '#34495E', 3, 1, 568),
('Hiring Plan', 'bug', '#8E44AD', 3, 1, 174),
('Design Review', 'tools', '#BDC3C7', 1, 1, 862),
('Training Plan', 'paint', '#C0392B', 1, 1, 331),
('Bug Prioritization', 'tools', '#7F8C8D', 1, 1, 810),
('Client Outreach', 'map', '#33FF57', 1, 1, 990),
('Customer Onboarding', 'media', '#00BCD4', 3, 1, 48),
('Release Notes', 'game', '#FF6F61', 3, 1, 330),
('Launch Plan', 'bug', '#3357FF', 2, 1, 581),
('Launch Plan', 'social', '#D35400', 1, 1, 590),
('Risk Assessment', 'search', '#FF6F61', 1, 1, 961),
('Security Audit', 'calendar', '#34495E', 5, 1, 824),
('Client Outreach', 'check', '#E67E22', 4, 1, 803),
('Inventory Management', 'social', '#2980B9', 3, 1, 261),
('Social Media', 'bug', '#34495E', 3, 1, 822),
('Workflow Automation', 'chart', '#16A085', 4, 1, 434),
('User Manual', 'game', '#27AE60', 4, 1, 509),
('Sales Targets', 'tools', '#27AE60', 2, 1, 940),
('Partnerships', 'users', '#3357FF', 1, 1, 945),
('Stakeholder Meeting', 'money', '#34495E', 4, 1, 730),
('Sales Report', 'map', '#E67E22', 5, 1, 550),
('Team Activities', 'search', '#F1C40F', 5, 1, 476),
('Customer Surveys', 'gear', '#E67E22', 3, 1, 914),
('Press Kit', 'book', '#FF5733', 1, 1, 838),
('Hiring Drive', 'tools', '#8E44AD', 2, 1, 361),
('Product Demo', 'paint', '#2980B9', 3, 1, 838),
('DevOps Tasks', 'welcome', '#7F8C8D', 2, 1, 754),
('User Manual', 'bug', '#FF6F61', 3, 1, 928),
('Social Media', 'money', '#00BCD4', 1, 1, 679),
('Customer Calls', 'chart', '#F1C40F', 4, 1, 685),
('Quarterly Review', 'star', '#9B59B6', 2, 1, 989),
('Tech Debt Cleanup', 'tools', '#27AE60', 2, 1, 294),
('Product Testing', 'doc', '#D35400', 1, 1, 128),
('Performance Metrics', 'folder', '#E67E22', 5, 1, 860),
('Conference Plan', 'box', '#E67E22', 2, 1, 452),
('Performance Metrics', 'money', '#2ECC71', 4, 1, 827),
('Knowledge Base', 'media', '#2980B9', 3, 1, 422),
('UX Improvements', 'rocket', '#9B59B6', 4, 1, 549),
('Sprint Retrospective', 'social', '#3498DB', 2, 1, 399),
('Innovation Sprint', 'gear', '#8E44AD', 3, 1, 481),
('Roadmap', 'tools', '#33FF57', 5, 1, 846),
('Product Maintenance', 'search', '#1ABC9C', 5, 1, 863),
('Product Updates', 'gear', '#2980B9', 3, 1, 92),
('Bug Prioritization', 'game', '#2ECC71', 1, 1, 816),
('Team Goals', 'star', '#FF6F61', 5, 1, 987);

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

-- Insert into ListColumnObject (12 rows)
INSERT INTO ListColumnObject (ListDynamicColumnId, DisplayName, DisplayColor, DisplayOrder)
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

