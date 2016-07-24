
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/23/2016 19:56:32
-- Generated from EDMX file: D:\Skydrive\FCMS\FCMS.EntityManagement\FCMSEntity.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [FCMS];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UserUserUserRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserUserRoles] DROP CONSTRAINT [FK_UserUserUserRole];
GO
IF OBJECT_ID(N'[dbo].[FK_UserRoleUserUserRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserUserRoles] DROP CONSTRAINT [FK_UserRoleUserUserRole];
GO
IF OBJECT_ID(N'[dbo].[FK_StateBank]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Banks] DROP CONSTRAINT [FK_StateBank];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerCustomerCustomInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CustomerCustomInfoes] DROP CONSTRAINT [FK_CustomerCustomerCustomInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerContract]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contracts] DROP CONSTRAINT [FK_CustomerContract];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerGuarantor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Guarantors] DROP CONSTRAINT [FK_CustomerGuarantor];
GO
IF OBJECT_ID(N'[dbo].[FK_ContractGuarantor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Guarantors] DROP CONSTRAINT [FK_ContractGuarantor];
GO
IF OBJECT_ID(N'[dbo].[FK_ContractContractCustomInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContractCustomInfoes] DROP CONSTRAINT [FK_ContractContractCustomInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_BranchContract]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contracts] DROP CONSTRAINT [FK_BranchContract];
GO
IF OBJECT_ID(N'[dbo].[FK_DeviceDeviceBlock]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DeviceBlocks] DROP CONSTRAINT [FK_DeviceDeviceBlock];
GO
IF OBJECT_ID(N'[dbo].[FK_BranchDevice]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Devices] DROP CONSTRAINT [FK_BranchDevice];
GO
IF OBJECT_ID(N'[dbo].[FK_DeviceDeviceEvent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DeviceEvents] DROP CONSTRAINT [FK_DeviceDeviceEvent];
GO
IF OBJECT_ID(N'[dbo].[FK_UserDevice]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Devices] DROP CONSTRAINT [FK_UserDevice];
GO
IF OBJECT_ID(N'[dbo].[FK_ReceiptReceiptCancel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReceiptCancels] DROP CONSTRAINT [FK_ReceiptReceiptCancel];
GO
IF OBJECT_ID(N'[dbo].[FK_ReceiptReceiptsRepresentation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReceiptsRepresentations] DROP CONSTRAINT [FK_ReceiptReceiptsRepresentation];
GO
IF OBJECT_ID(N'[dbo].[FK_ReceiptReceiptDetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReceiptDetails] DROP CONSTRAINT [FK_ReceiptReceiptDetail];
GO
IF OBJECT_ID(N'[dbo].[FK_ReceiptReceiptReprint]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReceiptReprints] DROP CONSTRAINT [FK_ReceiptReceiptReprint];
GO
IF OBJECT_ID(N'[dbo].[FK_ReceiptReceiptDenomination]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReceiptDenominations] DROP CONSTRAINT [FK_ReceiptReceiptDenomination];
GO
IF OBJECT_ID(N'[dbo].[FK_ReceiptDCRReceipt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DCRReceipts] DROP CONSTRAINT [FK_ReceiptDCRReceipt];
GO
IF OBJECT_ID(N'[dbo].[FK_DCRMasterDCRReceipt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DCRReceipts] DROP CONSTRAINT [FK_DCRMasterDCRReceipt];
GO
IF OBJECT_ID(N'[dbo].[FK_DCSMasterDCSDCR]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DCSDCRs] DROP CONSTRAINT [FK_DCSMasterDCSDCR];
GO
IF OBJECT_ID(N'[dbo].[FK_DCRMasterDCSDCR]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DCSDCRs] DROP CONSTRAINT [FK_DCRMasterDCSDCR];
GO
IF OBJECT_ID(N'[dbo].[FK_DeviceDeviceLocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DeviceLocations] DROP CONSTRAINT [FK_DeviceDeviceLocation];
GO
IF OBJECT_ID(N'[dbo].[FK_UserUserAttribute]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserAttributes] DROP CONSTRAINT [FK_UserUserAttribute];
GO
IF OBJECT_ID(N'[dbo].[FK_BranchUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_BranchUser];
GO
IF OBJECT_ID(N'[dbo].[FK_StateBranch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Branches] DROP CONSTRAINT [FK_StateBranch];
GO
IF OBJECT_ID(N'[dbo].[FK_UserUserThreshold]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserThresholds] DROP CONSTRAINT [FK_UserUserThreshold];
GO
IF OBJECT_ID(N'[dbo].[FK_ContractContractReceiptMessage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContractReceiptMessages] DROP CONSTRAINT [FK_ContractContractReceiptMessage];
GO
IF OBJECT_ID(N'[dbo].[FK_UserUserNotification]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserNotifications] DROP CONSTRAINT [FK_UserUserNotification];
GO
IF OBJECT_ID(N'[dbo].[FK_UpdateReasonUpdate]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Updates] DROP CONSTRAINT [FK_UpdateReasonUpdate];
GO
IF OBJECT_ID(N'[dbo].[FK_DeviceUpdate]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Updates] DROP CONSTRAINT [FK_DeviceUpdate];
GO
IF OBJECT_ID(N'[dbo].[FK_ReceiptReceiptImage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReceiptImages] DROP CONSTRAINT [FK_ReceiptReceiptImage];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryGroupCategoryItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CategoryItems] DROP CONSTRAINT [FK_CategoryGroupCategoryItem];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[UserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserRoles];
GO
IF OBJECT_ID(N'[dbo].[UserUserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserUserRoles];
GO
IF OBJECT_ID(N'[dbo].[States]', 'U') IS NOT NULL
    DROP TABLE [dbo].[States];
GO
IF OBJECT_ID(N'[dbo].[Banks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Banks];
GO
IF OBJECT_ID(N'[dbo].[Branches]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Branches];
GO
IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[CustomerCustomInfoes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CustomerCustomInfoes];
GO
IF OBJECT_ID(N'[dbo].[Contracts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contracts];
GO
IF OBJECT_ID(N'[dbo].[Guarantors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Guarantors];
GO
IF OBJECT_ID(N'[dbo].[ContractCustomInfoes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ContractCustomInfoes];
GO
IF OBJECT_ID(N'[dbo].[Devices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Devices];
GO
IF OBJECT_ID(N'[dbo].[DeviceBlocks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DeviceBlocks];
GO
IF OBJECT_ID(N'[dbo].[DeviceEvents]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DeviceEvents];
GO
IF OBJECT_ID(N'[dbo].[Receipts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Receipts];
GO
IF OBJECT_ID(N'[dbo].[ReceiptCancels]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReceiptCancels];
GO
IF OBJECT_ID(N'[dbo].[ReceiptsRepresentations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReceiptsRepresentations];
GO
IF OBJECT_ID(N'[dbo].[ReceiptDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReceiptDetails];
GO
IF OBJECT_ID(N'[dbo].[ReceiptReprints]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReceiptReprints];
GO
IF OBJECT_ID(N'[dbo].[ReceiptDenominations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReceiptDenominations];
GO
IF OBJECT_ID(N'[dbo].[DCRMasters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DCRMasters];
GO
IF OBJECT_ID(N'[dbo].[DCRReceipts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DCRReceipts];
GO
IF OBJECT_ID(N'[dbo].[DCSMasters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DCSMasters];
GO
IF OBJECT_ID(N'[dbo].[DCSDCRs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DCSDCRs];
GO
IF OBJECT_ID(N'[dbo].[DeviceLocations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DeviceLocations];
GO
IF OBJECT_ID(N'[dbo].[UserAttributes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserAttributes];
GO
IF OBJECT_ID(N'[dbo].[UserThresholds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserThresholds];
GO
IF OBJECT_ID(N'[dbo].[ContractReceiptMessages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ContractReceiptMessages];
GO
IF OBJECT_ID(N'[dbo].[UserNotifications]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserNotifications];
GO
IF OBJECT_ID(N'[dbo].[TradeAdvanceMasters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TradeAdvanceMasters];
GO
IF OBJECT_ID(N'[dbo].[UpdateReasons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UpdateReasons];
GO
IF OBJECT_ID(N'[dbo].[Updates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Updates];
GO
IF OBJECT_ID(N'[dbo].[ReceiptImages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReceiptImages];
GO
IF OBJECT_ID(N'[dbo].[CategoryGroups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CategoryGroups];
GO
IF OBJECT_ID(N'[dbo].[CategoryItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CategoryItems];
GO
IF OBJECT_ID(N'[dbo].[TravelDebits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TravelDebits];
GO
IF OBJECT_ID(N'[dbo].[TravelDebitDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TravelDebitDetails];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserId] int IDENTITY(1,1) NOT NULL,
    [EmployeeCode] nvarchar(max)  NOT NULL,
    [DeviceId] int  NULL,
    [PassWordHash] nvarchar(max)  NOT NULL,
    [BranchId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Locked] decimal(18,0)  NOT NULL,
    [Blocked] bit  NOT NULL
);
GO

-- Creating table 'UserRoles'
CREATE TABLE [dbo].[UserRoles] (
    [UserRoleId] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UserUserRoles'
CREATE TABLE [dbo].[UserUserRoles] (
    [UserUserRoleId] int IDENTITY(1,1) NOT NULL,
    [UserId] int  NOT NULL,
    [UserRoleId] int  NOT NULL
);
GO

-- Creating table 'States'
CREATE TABLE [dbo].[States] (
    [StateId] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Country] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Banks'
CREATE TABLE [dbo].[Banks] (
    [BankId] int IDENTITY(1,1) NOT NULL,
    [StateId] int  NOT NULL,
    [Code] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [IFCSCode] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Branches'
CREATE TABLE [dbo].[Branches] (
    [BranchId] int IDENTITY(1,1) NOT NULL,
    [StateId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Address1] nvarchar(max)  NOT NULL,
    [Address2] nvarchar(max)  NOT NULL,
    [Address3] nvarchar(max)  NOT NULL,
    [Address4] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [PinCode] nvarchar(max)  NOT NULL,
    [PhoneCode] nvarchar(max)  NOT NULL,
    [PhoneNo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [CustomerId] int  NOT NULL,
    [CustomerCode] nvarchar(max)  NOT NULL,
    [Salutation] varchar(5)  NULL,
    [CustomerName] varchar(60)  NULL,
    [Address1] varchar(50)  NULL,
    [Address2] varchar(50)  NULL,
    [Address3] varchar(50)  NULL,
    [Address4] varchar(50)  NULL,
    [City] varchar(50)  NULL,
    [State] varchar(50)  NULL,
    [PinCode] varchar(6)  NULL,
    [PhoneCode] varchar(10)  NULL,
    [PhoneNo] varchar(15)  NULL,
    [MobileNo] varchar(11)  NULL,
    [PanNo] varchar(10)  NULL,
    [ContractCount] int  NULL,
    [BranchCode] varchar(4)  NULL,
    [GPSLatitude] decimal(18,0)  NULL,
    [GPSLongitude] decimal(18,0)  NULL
);
GO

-- Creating table 'CustomerCustomInfoes'
CREATE TABLE [dbo].[CustomerCustomInfoes] (
    [CustomerCustomInfoId] int IDENTITY(1,1) NOT NULL,
    [CustomerId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Value] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Contracts'
CREATE TABLE [dbo].[Contracts] (
    [ContractId] int  NOT NULL,
    [ContractNo] nvarchar(max)  NOT NULL,
    [BranchId] int  NOT NULL,
    [CustomerId] int  NOT NULL,
    [ContractDt] varchar(10)  NULL,
    [InvoiceDt] varchar(10)  NULL,
    [InvoiceAmt] decimal(19,4)  NULL,
    [FinAmt] decimal(19,4)  NULL,
    [FinCharges] decimal(19,4)  NULL,
    [Rate] decimal(19,4)  NULL,
    [LastDueDt] varchar(10)  NULL,
    [Product] varchar(10)  NULL,
    [Bus_Done_By] varchar(6)  NULL,
    [Model] varchar(10)  NULL,
    [Brand] varchar(10)  NULL,
    [Division] varchar(3)  NULL
);
GO

-- Creating table 'Guarantors'
CREATE TABLE [dbo].[Guarantors] (
    [GuarantorId] int IDENTITY(1,1) NOT NULL,
    [ContractId] int  NOT NULL,
    [CustomerId] int  NOT NULL
);
GO

-- Creating table 'ContractCustomInfoes'
CREATE TABLE [dbo].[ContractCustomInfoes] (
    [ContractCustomInfoId] int IDENTITY(1,1) NOT NULL,
    [ContractId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [DataType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Devices'
CREATE TABLE [dbo].[Devices] (
    [DeviceId] int IDENTITY(1,1) NOT NULL,
    [DeviceTypeName] nvarchar(max)  NOT NULL,
    [BranchId] int  NOT NULL,
    [SerialNo] nvarchar(max)  NOT NULL,
    [IMEI] nvarchar(max)  NOT NULL,
    [IsLocked] nvarchar(max)  NOT NULL,
    [IsBlocked] nvarchar(max)  NOT NULL,
    [IsDeleted] nvarchar(max)  NOT NULL,
    [LastConnectedLatitude] decimal(18,0)  NULL,
    [LastConnectedLongitude] decimal(18,0)  NULL,
    [LastConnectedTime] datetime  NULL,
    [PrinterMACId] nvarchar(max)  NULL
);
GO

-- Creating table 'DeviceBlocks'
CREATE TABLE [dbo].[DeviceBlocks] (
    [DeviceBlockId] int IDENTITY(1,1) NOT NULL,
    [DeviceId] int  NOT NULL,
    [ReasonForBlocking] nvarchar(max)  NOT NULL,
    [BlockedByUserId] int  NOT NULL,
    [BlockedForUserId] int  NOT NULL
);
GO

-- Creating table 'DeviceEvents'
CREATE TABLE [dbo].[DeviceEvents] (
    [DeviceEventId] int IDENTITY(1,1) NOT NULL,
    [DeviceId] int  NOT NULL,
    [EventName] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [EventDateTime] datetime  NOT NULL,
    [EventSource] nvarchar(max)  NOT NULL,
    [AssignedUserId] int  NULL
);
GO

-- Creating table 'Receipts'
CREATE TABLE [dbo].[Receipts] (
    [ReceiptId] int  NOT NULL,
    [ReceiptNo] nvarchar(max)  NOT NULL,
    [ReceiptDt] varchar(10)  NULL,
    [ReceiptAmt] decimal(19,4)  NULL,
    [Mode] varchar(1)  NULL,
    [InstrumentAmt] decimal(19,4)  NULL,
    [InstrumentNo] decimal(10,0)  NULL,
    [InstrumentDt] varchar(10)  NULL,
    [BankID] decimal(5,0)  NULL,
    [BranchName] varchar(50)  NULL,
    [MICR] decimal(9,0)  NULL,
    [Pay_Clear_location] varchar(25)  NULL,
    [Remitted_By] decimal(2,0)  NULL,
    [Remitter_Name] varchar(50)  NULL,
    [Remitter_Relationship] decimal(2,0)  NULL,
    [PanNo] varchar(10)  NULL,
    [Rec_Category] decimal(2,0)  NULL,
    [BranchCode] varchar(4)  NULL,
    [MachineID] decimal(5,0)  NULL,
    [GPSLocation] varchar(14)  NULL,
    [CollectorUserId] int  NULL,
    [Gen_Datetime] datetime  NULL,
    [CustomerType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ReceiptCancels'
CREATE TABLE [dbo].[ReceiptCancels] (
    [ReceiptNo] int  NOT NULL,
    [ReceiptId] int  NOT NULL,
    [CancelledOn] varchar(10)  NULL,
    [Reason] decimal(2,0)  NULL,
    [UserID] decimal(5,0)  NULL,
    [Gen_Datetime] varchar(10)  NULL,
    [Tower_Name] varchar(14)  NULL,
    [Auth_UserID] decimal(5,0)  NULL,
    [Auth_On] varchar(10)  NULL
);
GO

-- Creating table 'ReceiptsRepresentations'
CREATE TABLE [dbo].[ReceiptsRepresentations] (
    [ReceiptsRepresentationId] int  NOT NULL,
    [ReceiptNo] nvarchar(max)  NOT NULL,
    [ReceiptId] int  NOT NULL,
    [New_ReceiptNo] varchar(14)  NULL,
    [Represented_On] varchar(10)  NULL,
    [UserID] decimal(5,0)  NULL,
    [Gen_Datetime] varchar(10)  NULL,
    [GPSLocation] varchar(14)  NULL
);
GO

-- Creating table 'ReceiptDetails'
CREATE TABLE [dbo].[ReceiptDetails] (
    [ReceiptDetailId] int  NOT NULL,
    [ReceiptNo] nvarchar(max)  NOT NULL,
    [Amount] decimal(19,4)  NULL,
    [ContractNo] varchar(max)  NULL,
    [ReceiptId] int  NOT NULL
);
GO

-- Creating table 'ReceiptReprints'
CREATE TABLE [dbo].[ReceiptReprints] (
    [ReceiptReprintId] int  NOT NULL,
    [ReceiptId] int  NOT NULL,
    [ReceiptNo] nvarchar(max)  NOT NULL,
    [Reprinted_On] varchar(10)  NULL,
    [Reason] decimal(2,0)  NULL,
    [UserID] int  NULL,
    [Gen_Datetime] varchar(10)  NULL,
    [GPSLocation] varchar(14)  NULL
);
GO

-- Creating table 'ReceiptDenominations'
CREATE TABLE [dbo].[ReceiptDenominations] (
    [ReceiptDenominationId] int  NOT NULL,
    [ReceiptNo] nvarchar(max)  NOT NULL,
    [Denomination] varchar(5)  NULL,
    [Count] decimal(4,0)  NULL,
    [ReceiptId] int  NOT NULL
);
GO

-- Creating table 'DCRMasters'
CREATE TABLE [dbo].[DCRMasters] (
    [DCRMasterId] int  NOT NULL,
    [DCRNumber] nvarchar(max)  NOT NULL,
    [Mode] varchar(1)  NULL,
    [Amount] decimal(19,4)  NULL,
    [UserId] decimal(5,0)  NULL,
    [Gen_Datetime] datetime  NULL,
    [GPSLocation] varchar(14)  NULL,
    [Auth_UserID] decimal(5,0)  NULL,
    [Auth_On] varchar(10)  NULL,
    [Status] varchar(1)  NULL
);
GO

-- Creating table 'DCRReceipts'
CREATE TABLE [dbo].[DCRReceipts] (
    [DCRReceiptId] int IDENTITY(1,1) NOT NULL,
    [DCRMasterId] int  NOT NULL,
    [ReceiptId] int  NOT NULL
);
GO

-- Creating table 'DCSMasters'
CREATE TABLE [dbo].[DCSMasters] (
    [DCSMasterId] int  NOT NULL,
    [DCSNumber] nvarchar(max)  NOT NULL,
    [BankCode] varchar(4)  NULL,
    [Mode] varchar(2)  NULL,
    [SlipNo] varchar(15)  NULL,
    [Amount] decimal(19,4)  NULL,
    [UserId] decimal(5,0)  NULL,
    [Gen_Datetime] varchar(10)  NULL,
    [GPSLocation] varchar(14)  NULL
);
GO

-- Creating table 'DCSDCRs'
CREATE TABLE [dbo].[DCSDCRs] (
    [DCSDCRId] int IDENTITY(1,1) NOT NULL,
    [DCSMasterId] int  NOT NULL,
    [DCRMasterId] int  NOT NULL
);
GO

-- Creating table 'DeviceLocations'
CREATE TABLE [dbo].[DeviceLocations] (
    [DeviceLocationId] int IDENTITY(1,1) NOT NULL,
    [DeviceId] int  NOT NULL,
    [Latitude] decimal(18,0)  NOT NULL,
    [Longitude] decimal(18,0)  NOT NULL,
    [Altitude] decimal(18,0)  NOT NULL,
    [GPSDateTime] datetime  NOT NULL,
    [ReceivedDateTime] datetime  NOT NULL
);
GO

-- Creating table 'UserAttributes'
CREATE TABLE [dbo].[UserAttributes] (
    [UserAttributeId] int IDENTITY(1,1) NOT NULL,
    [UserId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Value] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UserThresholds'
CREATE TABLE [dbo].[UserThresholds] (
    [UserThresholdId] int IDENTITY(1,1) NOT NULL,
    [UserId] int  NOT NULL,
    [Base] decimal(18,0)  NOT NULL,
    [Next] decimal(18,0)  NOT NULL,
    [Far] decimal(18,0)  NOT NULL,
    [NextPin] int  NOT NULL,
    [NextPinUsed] bit  NOT NULL,
    [FarPin] nvarchar(max)  NOT NULL,
    [FarPinUsed] bit  NOT NULL
);
GO

-- Creating table 'ContractReceiptMessages'
CREATE TABLE [dbo].[ContractReceiptMessages] (
    [ContractReceiptMessageId] int IDENTITY(1,1) NOT NULL,
    [ContractId] int  NOT NULL,
    [Message] nvarchar(max)  NOT NULL,
    [ValidFrom] datetime  NOT NULL,
    [ValidTo] datetime  NOT NULL
);
GO

-- Creating table 'UserNotifications'
CREATE TABLE [dbo].[UserNotifications] (
    [UserNotificationId] int IDENTITY(1,1) NOT NULL,
    [UserId] int  NOT NULL,
    [NoticationType] nvarchar(max)  NOT NULL,
    [Message] nvarchar(max)  NOT NULL,
    [IsCommunicated] bit  NOT NULL,
    [ValidFrom] datetime  NOT NULL,
    [ValidTill] datetime  NOT NULL
);
GO

-- Creating table 'TradeAdvanceMasters'
CREATE TABLE [dbo].[TradeAdvanceMasters] (
    [TA_Link_No] varchar(15)  NOT NULL,
    [Beneficiary_Name] varchar(50)  NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL,
    [Status] varchar(1)  NULL
);
GO

-- Creating table 'UpdateReasons'
CREATE TABLE [dbo].[UpdateReasons] (
    [UpdateReasonId] int IDENTITY(1,1) NOT NULL,
    [ReasonGroup] nvarchar(max)  NOT NULL,
    [ReasonType] nvarchar(max)  NOT NULL,
    [Noterequired] bit  NOT NULL,
    [PhotoRequired] bit  NOT NULL,
    [SignatureRequired] bit  NOT NULL
);
GO

-- Creating table 'Updates'
CREATE TABLE [dbo].[Updates] (
    [UpdateId] int IDENTITY(1,1) NOT NULL,
    [UpdateReasonId] int  NOT NULL,
    [UpdateValue] nvarchar(max)  NOT NULL,
    [DeviceId] int  NOT NULL
);
GO

-- Creating table 'ReceiptImages'
CREATE TABLE [dbo].[ReceiptImages] (
    [ReceiptImageId] int IDENTITY(1,1) NOT NULL,
    [ReceiptId] int  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [ImageData] varbinary(max)  NOT NULL,
    [ImageDateTime] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CategoryGroups'
CREATE TABLE [dbo].[CategoryGroups] (
    [CategoryGroupId] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CategoryItems'
CREATE TABLE [dbo].[CategoryItems] (
    [CategoryItemId] int IDENTITY(1,1) NOT NULL,
    [CategoryGroupId] int  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Code] nvarchar(max)  NULL
);
GO

-- Creating table 'TravelDebits'
CREATE TABLE [dbo].[TravelDebits] (
    [TravelDebitId] int  NOT NULL,
    [VoucherNo] nvarchar(max)  NOT NULL,
    [Feedback] decimal(2,0)  NULL,
    [Amount] decimal(19,4)  NULL,
    [Date] varchar(15)  NULL,
    [CheckedWith] varchar(50)  NULL,
    [RelationShip] decimal(2,0)  NULL,
    [ReceiptNo] varchar(15)  NULL,
    [UserID] decimal(5,0)  NULL,
    [Gen_Datetime] varchar(15)  NULL,
    [GPSLocation] varchar(14)  NULL
);
GO

-- Creating table 'TravelDebitDetails'
CREATE TABLE [dbo].[TravelDebitDetails] (
    [TravelDebitDetailId] int IDENTITY(1,1) NOT NULL,
    [TravelDebitId] int  NOT NULL,
    [ContractNo] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [UserId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [UserRoleId] in table 'UserRoles'
ALTER TABLE [dbo].[UserRoles]
ADD CONSTRAINT [PK_UserRoles]
    PRIMARY KEY CLUSTERED ([UserRoleId] ASC);
GO

-- Creating primary key on [UserUserRoleId] in table 'UserUserRoles'
ALTER TABLE [dbo].[UserUserRoles]
ADD CONSTRAINT [PK_UserUserRoles]
    PRIMARY KEY CLUSTERED ([UserUserRoleId] ASC);
GO

-- Creating primary key on [StateId] in table 'States'
ALTER TABLE [dbo].[States]
ADD CONSTRAINT [PK_States]
    PRIMARY KEY CLUSTERED ([StateId] ASC);
GO

-- Creating primary key on [BankId] in table 'Banks'
ALTER TABLE [dbo].[Banks]
ADD CONSTRAINT [PK_Banks]
    PRIMARY KEY CLUSTERED ([BankId] ASC);
GO

-- Creating primary key on [BranchId] in table 'Branches'
ALTER TABLE [dbo].[Branches]
ADD CONSTRAINT [PK_Branches]
    PRIMARY KEY CLUSTERED ([BranchId] ASC);
GO

-- Creating primary key on [CustomerId] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([CustomerId] ASC);
GO

-- Creating primary key on [CustomerCustomInfoId] in table 'CustomerCustomInfoes'
ALTER TABLE [dbo].[CustomerCustomInfoes]
ADD CONSTRAINT [PK_CustomerCustomInfoes]
    PRIMARY KEY CLUSTERED ([CustomerCustomInfoId] ASC);
GO

-- Creating primary key on [ContractId] in table 'Contracts'
ALTER TABLE [dbo].[Contracts]
ADD CONSTRAINT [PK_Contracts]
    PRIMARY KEY CLUSTERED ([ContractId] ASC);
GO

-- Creating primary key on [GuarantorId] in table 'Guarantors'
ALTER TABLE [dbo].[Guarantors]
ADD CONSTRAINT [PK_Guarantors]
    PRIMARY KEY CLUSTERED ([GuarantorId] ASC);
GO

-- Creating primary key on [ContractCustomInfoId] in table 'ContractCustomInfoes'
ALTER TABLE [dbo].[ContractCustomInfoes]
ADD CONSTRAINT [PK_ContractCustomInfoes]
    PRIMARY KEY CLUSTERED ([ContractCustomInfoId] ASC);
GO

-- Creating primary key on [DeviceId] in table 'Devices'
ALTER TABLE [dbo].[Devices]
ADD CONSTRAINT [PK_Devices]
    PRIMARY KEY CLUSTERED ([DeviceId] ASC);
GO

-- Creating primary key on [DeviceBlockId] in table 'DeviceBlocks'
ALTER TABLE [dbo].[DeviceBlocks]
ADD CONSTRAINT [PK_DeviceBlocks]
    PRIMARY KEY CLUSTERED ([DeviceBlockId] ASC);
GO

-- Creating primary key on [DeviceEventId] in table 'DeviceEvents'
ALTER TABLE [dbo].[DeviceEvents]
ADD CONSTRAINT [PK_DeviceEvents]
    PRIMARY KEY CLUSTERED ([DeviceEventId] ASC);
GO

-- Creating primary key on [ReceiptId] in table 'Receipts'
ALTER TABLE [dbo].[Receipts]
ADD CONSTRAINT [PK_Receipts]
    PRIMARY KEY CLUSTERED ([ReceiptId] ASC);
GO

-- Creating primary key on [ReceiptNo] in table 'ReceiptCancels'
ALTER TABLE [dbo].[ReceiptCancels]
ADD CONSTRAINT [PK_ReceiptCancels]
    PRIMARY KEY CLUSTERED ([ReceiptNo] ASC);
GO

-- Creating primary key on [ReceiptsRepresentationId] in table 'ReceiptsRepresentations'
ALTER TABLE [dbo].[ReceiptsRepresentations]
ADD CONSTRAINT [PK_ReceiptsRepresentations]
    PRIMARY KEY CLUSTERED ([ReceiptsRepresentationId] ASC);
GO

-- Creating primary key on [ReceiptDetailId] in table 'ReceiptDetails'
ALTER TABLE [dbo].[ReceiptDetails]
ADD CONSTRAINT [PK_ReceiptDetails]
    PRIMARY KEY CLUSTERED ([ReceiptDetailId] ASC);
GO

-- Creating primary key on [ReceiptReprintId] in table 'ReceiptReprints'
ALTER TABLE [dbo].[ReceiptReprints]
ADD CONSTRAINT [PK_ReceiptReprints]
    PRIMARY KEY CLUSTERED ([ReceiptReprintId] ASC);
GO

-- Creating primary key on [ReceiptDenominationId] in table 'ReceiptDenominations'
ALTER TABLE [dbo].[ReceiptDenominations]
ADD CONSTRAINT [PK_ReceiptDenominations]
    PRIMARY KEY CLUSTERED ([ReceiptDenominationId] ASC);
GO

-- Creating primary key on [DCRMasterId] in table 'DCRMasters'
ALTER TABLE [dbo].[DCRMasters]
ADD CONSTRAINT [PK_DCRMasters]
    PRIMARY KEY CLUSTERED ([DCRMasterId] ASC);
GO

-- Creating primary key on [DCRReceiptId] in table 'DCRReceipts'
ALTER TABLE [dbo].[DCRReceipts]
ADD CONSTRAINT [PK_DCRReceipts]
    PRIMARY KEY CLUSTERED ([DCRReceiptId] ASC);
GO

-- Creating primary key on [DCSMasterId] in table 'DCSMasters'
ALTER TABLE [dbo].[DCSMasters]
ADD CONSTRAINT [PK_DCSMasters]
    PRIMARY KEY CLUSTERED ([DCSMasterId] ASC);
GO

-- Creating primary key on [DCSDCRId] in table 'DCSDCRs'
ALTER TABLE [dbo].[DCSDCRs]
ADD CONSTRAINT [PK_DCSDCRs]
    PRIMARY KEY CLUSTERED ([DCSDCRId] ASC);
GO

-- Creating primary key on [DeviceLocationId] in table 'DeviceLocations'
ALTER TABLE [dbo].[DeviceLocations]
ADD CONSTRAINT [PK_DeviceLocations]
    PRIMARY KEY CLUSTERED ([DeviceLocationId] ASC);
GO

-- Creating primary key on [UserAttributeId] in table 'UserAttributes'
ALTER TABLE [dbo].[UserAttributes]
ADD CONSTRAINT [PK_UserAttributes]
    PRIMARY KEY CLUSTERED ([UserAttributeId] ASC);
GO

-- Creating primary key on [UserThresholdId] in table 'UserThresholds'
ALTER TABLE [dbo].[UserThresholds]
ADD CONSTRAINT [PK_UserThresholds]
    PRIMARY KEY CLUSTERED ([UserThresholdId] ASC);
GO

-- Creating primary key on [ContractReceiptMessageId] in table 'ContractReceiptMessages'
ALTER TABLE [dbo].[ContractReceiptMessages]
ADD CONSTRAINT [PK_ContractReceiptMessages]
    PRIMARY KEY CLUSTERED ([ContractReceiptMessageId] ASC);
GO

-- Creating primary key on [UserNotificationId] in table 'UserNotifications'
ALTER TABLE [dbo].[UserNotifications]
ADD CONSTRAINT [PK_UserNotifications]
    PRIMARY KEY CLUSTERED ([UserNotificationId] ASC);
GO

-- Creating primary key on [TA_Link_No] in table 'TradeAdvanceMasters'
ALTER TABLE [dbo].[TradeAdvanceMasters]
ADD CONSTRAINT [PK_TradeAdvanceMasters]
    PRIMARY KEY CLUSTERED ([TA_Link_No] ASC);
GO

-- Creating primary key on [UpdateReasonId] in table 'UpdateReasons'
ALTER TABLE [dbo].[UpdateReasons]
ADD CONSTRAINT [PK_UpdateReasons]
    PRIMARY KEY CLUSTERED ([UpdateReasonId] ASC);
GO

-- Creating primary key on [UpdateId] in table 'Updates'
ALTER TABLE [dbo].[Updates]
ADD CONSTRAINT [PK_Updates]
    PRIMARY KEY CLUSTERED ([UpdateId] ASC);
GO

-- Creating primary key on [ReceiptImageId] in table 'ReceiptImages'
ALTER TABLE [dbo].[ReceiptImages]
ADD CONSTRAINT [PK_ReceiptImages]
    PRIMARY KEY CLUSTERED ([ReceiptImageId] ASC);
GO

-- Creating primary key on [CategoryGroupId] in table 'CategoryGroups'
ALTER TABLE [dbo].[CategoryGroups]
ADD CONSTRAINT [PK_CategoryGroups]
    PRIMARY KEY CLUSTERED ([CategoryGroupId] ASC);
GO

-- Creating primary key on [CategoryItemId] in table 'CategoryItems'
ALTER TABLE [dbo].[CategoryItems]
ADD CONSTRAINT [PK_CategoryItems]
    PRIMARY KEY CLUSTERED ([CategoryItemId] ASC);
GO

-- Creating primary key on [TravelDebitId] in table 'TravelDebits'
ALTER TABLE [dbo].[TravelDebits]
ADD CONSTRAINT [PK_TravelDebits]
    PRIMARY KEY CLUSTERED ([TravelDebitId] ASC);
GO

-- Creating primary key on [TravelDebitDetailId] in table 'TravelDebitDetails'
ALTER TABLE [dbo].[TravelDebitDetails]
ADD CONSTRAINT [PK_TravelDebitDetails]
    PRIMARY KEY CLUSTERED ([TravelDebitDetailId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserId] in table 'UserUserRoles'
ALTER TABLE [dbo].[UserUserRoles]
ADD CONSTRAINT [FK_UserUserUserRole]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUserUserRole'
CREATE INDEX [IX_FK_UserUserUserRole]
ON [dbo].[UserUserRoles]
    ([UserId]);
GO

-- Creating foreign key on [UserRoleId] in table 'UserUserRoles'
ALTER TABLE [dbo].[UserUserRoles]
ADD CONSTRAINT [FK_UserRoleUserUserRole]
    FOREIGN KEY ([UserRoleId])
    REFERENCES [dbo].[UserRoles]
        ([UserRoleId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserRoleUserUserRole'
CREATE INDEX [IX_FK_UserRoleUserUserRole]
ON [dbo].[UserUserRoles]
    ([UserRoleId]);
GO

-- Creating foreign key on [StateId] in table 'Banks'
ALTER TABLE [dbo].[Banks]
ADD CONSTRAINT [FK_StateBank]
    FOREIGN KEY ([StateId])
    REFERENCES [dbo].[States]
        ([StateId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StateBank'
CREATE INDEX [IX_FK_StateBank]
ON [dbo].[Banks]
    ([StateId]);
GO

-- Creating foreign key on [CustomerId] in table 'CustomerCustomInfoes'
ALTER TABLE [dbo].[CustomerCustomInfoes]
ADD CONSTRAINT [FK_CustomerCustomerCustomInfo]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerCustomerCustomInfo'
CREATE INDEX [IX_FK_CustomerCustomerCustomInfo]
ON [dbo].[CustomerCustomInfoes]
    ([CustomerId]);
GO

-- Creating foreign key on [CustomerId] in table 'Contracts'
ALTER TABLE [dbo].[Contracts]
ADD CONSTRAINT [FK_CustomerContract]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerContract'
CREATE INDEX [IX_FK_CustomerContract]
ON [dbo].[Contracts]
    ([CustomerId]);
GO

-- Creating foreign key on [CustomerId] in table 'Guarantors'
ALTER TABLE [dbo].[Guarantors]
ADD CONSTRAINT [FK_CustomerGuarantor]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerGuarantor'
CREATE INDEX [IX_FK_CustomerGuarantor]
ON [dbo].[Guarantors]
    ([CustomerId]);
GO

-- Creating foreign key on [ContractId] in table 'Guarantors'
ALTER TABLE [dbo].[Guarantors]
ADD CONSTRAINT [FK_ContractGuarantor]
    FOREIGN KEY ([ContractId])
    REFERENCES [dbo].[Contracts]
        ([ContractId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContractGuarantor'
CREATE INDEX [IX_FK_ContractGuarantor]
ON [dbo].[Guarantors]
    ([ContractId]);
GO

-- Creating foreign key on [ContractId] in table 'ContractCustomInfoes'
ALTER TABLE [dbo].[ContractCustomInfoes]
ADD CONSTRAINT [FK_ContractContractCustomInfo]
    FOREIGN KEY ([ContractId])
    REFERENCES [dbo].[Contracts]
        ([ContractId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContractContractCustomInfo'
CREATE INDEX [IX_FK_ContractContractCustomInfo]
ON [dbo].[ContractCustomInfoes]
    ([ContractId]);
GO

-- Creating foreign key on [BranchId] in table 'Contracts'
ALTER TABLE [dbo].[Contracts]
ADD CONSTRAINT [FK_BranchContract]
    FOREIGN KEY ([BranchId])
    REFERENCES [dbo].[Branches]
        ([BranchId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BranchContract'
CREATE INDEX [IX_FK_BranchContract]
ON [dbo].[Contracts]
    ([BranchId]);
GO

-- Creating foreign key on [DeviceId] in table 'DeviceBlocks'
ALTER TABLE [dbo].[DeviceBlocks]
ADD CONSTRAINT [FK_DeviceDeviceBlock]
    FOREIGN KEY ([DeviceId])
    REFERENCES [dbo].[Devices]
        ([DeviceId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DeviceDeviceBlock'
CREATE INDEX [IX_FK_DeviceDeviceBlock]
ON [dbo].[DeviceBlocks]
    ([DeviceId]);
GO

-- Creating foreign key on [BranchId] in table 'Devices'
ALTER TABLE [dbo].[Devices]
ADD CONSTRAINT [FK_BranchDevice]
    FOREIGN KEY ([BranchId])
    REFERENCES [dbo].[Branches]
        ([BranchId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BranchDevice'
CREATE INDEX [IX_FK_BranchDevice]
ON [dbo].[Devices]
    ([BranchId]);
GO

-- Creating foreign key on [DeviceId] in table 'DeviceEvents'
ALTER TABLE [dbo].[DeviceEvents]
ADD CONSTRAINT [FK_DeviceDeviceEvent]
    FOREIGN KEY ([DeviceId])
    REFERENCES [dbo].[Devices]
        ([DeviceId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DeviceDeviceEvent'
CREATE INDEX [IX_FK_DeviceDeviceEvent]
ON [dbo].[DeviceEvents]
    ([DeviceId]);
GO

-- Creating foreign key on [DeviceId] in table 'Devices'
ALTER TABLE [dbo].[Devices]
ADD CONSTRAINT [FK_UserDevice]
    FOREIGN KEY ([DeviceId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ReceiptId] in table 'ReceiptCancels'
ALTER TABLE [dbo].[ReceiptCancels]
ADD CONSTRAINT [FK_ReceiptReceiptCancel]
    FOREIGN KEY ([ReceiptId])
    REFERENCES [dbo].[Receipts]
        ([ReceiptId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReceiptReceiptCancel'
CREATE INDEX [IX_FK_ReceiptReceiptCancel]
ON [dbo].[ReceiptCancels]
    ([ReceiptId]);
GO

-- Creating foreign key on [ReceiptId] in table 'ReceiptsRepresentations'
ALTER TABLE [dbo].[ReceiptsRepresentations]
ADD CONSTRAINT [FK_ReceiptReceiptsRepresentation]
    FOREIGN KEY ([ReceiptId])
    REFERENCES [dbo].[Receipts]
        ([ReceiptId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReceiptReceiptsRepresentation'
CREATE INDEX [IX_FK_ReceiptReceiptsRepresentation]
ON [dbo].[ReceiptsRepresentations]
    ([ReceiptId]);
GO

-- Creating foreign key on [ReceiptId] in table 'ReceiptDetails'
ALTER TABLE [dbo].[ReceiptDetails]
ADD CONSTRAINT [FK_ReceiptReceiptDetail]
    FOREIGN KEY ([ReceiptId])
    REFERENCES [dbo].[Receipts]
        ([ReceiptId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReceiptReceiptDetail'
CREATE INDEX [IX_FK_ReceiptReceiptDetail]
ON [dbo].[ReceiptDetails]
    ([ReceiptId]);
GO

-- Creating foreign key on [ReceiptId] in table 'ReceiptReprints'
ALTER TABLE [dbo].[ReceiptReprints]
ADD CONSTRAINT [FK_ReceiptReceiptReprint]
    FOREIGN KEY ([ReceiptId])
    REFERENCES [dbo].[Receipts]
        ([ReceiptId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReceiptReceiptReprint'
CREATE INDEX [IX_FK_ReceiptReceiptReprint]
ON [dbo].[ReceiptReprints]
    ([ReceiptId]);
GO

-- Creating foreign key on [ReceiptId] in table 'ReceiptDenominations'
ALTER TABLE [dbo].[ReceiptDenominations]
ADD CONSTRAINT [FK_ReceiptReceiptDenomination]
    FOREIGN KEY ([ReceiptId])
    REFERENCES [dbo].[Receipts]
        ([ReceiptId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReceiptReceiptDenomination'
CREATE INDEX [IX_FK_ReceiptReceiptDenomination]
ON [dbo].[ReceiptDenominations]
    ([ReceiptId]);
GO

-- Creating foreign key on [ReceiptId] in table 'DCRReceipts'
ALTER TABLE [dbo].[DCRReceipts]
ADD CONSTRAINT [FK_ReceiptDCRReceipt]
    FOREIGN KEY ([ReceiptId])
    REFERENCES [dbo].[Receipts]
        ([ReceiptId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReceiptDCRReceipt'
CREATE INDEX [IX_FK_ReceiptDCRReceipt]
ON [dbo].[DCRReceipts]
    ([ReceiptId]);
GO

-- Creating foreign key on [DCRMasterId] in table 'DCRReceipts'
ALTER TABLE [dbo].[DCRReceipts]
ADD CONSTRAINT [FK_DCRMasterDCRReceipt]
    FOREIGN KEY ([DCRMasterId])
    REFERENCES [dbo].[DCRMasters]
        ([DCRMasterId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DCRMasterDCRReceipt'
CREATE INDEX [IX_FK_DCRMasterDCRReceipt]
ON [dbo].[DCRReceipts]
    ([DCRMasterId]);
GO

-- Creating foreign key on [DCSMasterId] in table 'DCSDCRs'
ALTER TABLE [dbo].[DCSDCRs]
ADD CONSTRAINT [FK_DCSMasterDCSDCR]
    FOREIGN KEY ([DCSMasterId])
    REFERENCES [dbo].[DCSMasters]
        ([DCSMasterId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DCSMasterDCSDCR'
CREATE INDEX [IX_FK_DCSMasterDCSDCR]
ON [dbo].[DCSDCRs]
    ([DCSMasterId]);
GO

-- Creating foreign key on [DCRMasterId] in table 'DCSDCRs'
ALTER TABLE [dbo].[DCSDCRs]
ADD CONSTRAINT [FK_DCRMasterDCSDCR]
    FOREIGN KEY ([DCRMasterId])
    REFERENCES [dbo].[DCRMasters]
        ([DCRMasterId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DCRMasterDCSDCR'
CREATE INDEX [IX_FK_DCRMasterDCSDCR]
ON [dbo].[DCSDCRs]
    ([DCRMasterId]);
GO

-- Creating foreign key on [DeviceId] in table 'DeviceLocations'
ALTER TABLE [dbo].[DeviceLocations]
ADD CONSTRAINT [FK_DeviceDeviceLocation]
    FOREIGN KEY ([DeviceId])
    REFERENCES [dbo].[Devices]
        ([DeviceId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DeviceDeviceLocation'
CREATE INDEX [IX_FK_DeviceDeviceLocation]
ON [dbo].[DeviceLocations]
    ([DeviceId]);
GO

-- Creating foreign key on [UserId] in table 'UserAttributes'
ALTER TABLE [dbo].[UserAttributes]
ADD CONSTRAINT [FK_UserUserAttribute]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUserAttribute'
CREATE INDEX [IX_FK_UserUserAttribute]
ON [dbo].[UserAttributes]
    ([UserId]);
GO

-- Creating foreign key on [BranchId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_BranchUser]
    FOREIGN KEY ([BranchId])
    REFERENCES [dbo].[Branches]
        ([BranchId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BranchUser'
CREATE INDEX [IX_FK_BranchUser]
ON [dbo].[Users]
    ([BranchId]);
GO

-- Creating foreign key on [StateId] in table 'Branches'
ALTER TABLE [dbo].[Branches]
ADD CONSTRAINT [FK_StateBranch]
    FOREIGN KEY ([StateId])
    REFERENCES [dbo].[States]
        ([StateId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StateBranch'
CREATE INDEX [IX_FK_StateBranch]
ON [dbo].[Branches]
    ([StateId]);
GO

-- Creating foreign key on [UserId] in table 'UserThresholds'
ALTER TABLE [dbo].[UserThresholds]
ADD CONSTRAINT [FK_UserUserThreshold]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUserThreshold'
CREATE INDEX [IX_FK_UserUserThreshold]
ON [dbo].[UserThresholds]
    ([UserId]);
GO

-- Creating foreign key on [ContractId] in table 'ContractReceiptMessages'
ALTER TABLE [dbo].[ContractReceiptMessages]
ADD CONSTRAINT [FK_ContractContractReceiptMessage]
    FOREIGN KEY ([ContractId])
    REFERENCES [dbo].[Contracts]
        ([ContractId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContractContractReceiptMessage'
CREATE INDEX [IX_FK_ContractContractReceiptMessage]
ON [dbo].[ContractReceiptMessages]
    ([ContractId]);
GO

-- Creating foreign key on [UserId] in table 'UserNotifications'
ALTER TABLE [dbo].[UserNotifications]
ADD CONSTRAINT [FK_UserUserNotification]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUserNotification'
CREATE INDEX [IX_FK_UserUserNotification]
ON [dbo].[UserNotifications]
    ([UserId]);
GO

-- Creating foreign key on [UpdateReasonId] in table 'Updates'
ALTER TABLE [dbo].[Updates]
ADD CONSTRAINT [FK_UpdateReasonUpdate]
    FOREIGN KEY ([UpdateReasonId])
    REFERENCES [dbo].[UpdateReasons]
        ([UpdateReasonId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UpdateReasonUpdate'
CREATE INDEX [IX_FK_UpdateReasonUpdate]
ON [dbo].[Updates]
    ([UpdateReasonId]);
GO

-- Creating foreign key on [DeviceId] in table 'Updates'
ALTER TABLE [dbo].[Updates]
ADD CONSTRAINT [FK_DeviceUpdate]
    FOREIGN KEY ([DeviceId])
    REFERENCES [dbo].[Devices]
        ([DeviceId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DeviceUpdate'
CREATE INDEX [IX_FK_DeviceUpdate]
ON [dbo].[Updates]
    ([DeviceId]);
GO

-- Creating foreign key on [ReceiptId] in table 'ReceiptImages'
ALTER TABLE [dbo].[ReceiptImages]
ADD CONSTRAINT [FK_ReceiptReceiptImage]
    FOREIGN KEY ([ReceiptId])
    REFERENCES [dbo].[Receipts]
        ([ReceiptId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReceiptReceiptImage'
CREATE INDEX [IX_FK_ReceiptReceiptImage]
ON [dbo].[ReceiptImages]
    ([ReceiptId]);
GO

-- Creating foreign key on [CategoryGroupId] in table 'CategoryItems'
ALTER TABLE [dbo].[CategoryItems]
ADD CONSTRAINT [FK_CategoryGroupCategoryItem]
    FOREIGN KEY ([CategoryGroupId])
    REFERENCES [dbo].[CategoryGroups]
        ([CategoryGroupId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryGroupCategoryItem'
CREATE INDEX [IX_FK_CategoryGroupCategoryItem]
ON [dbo].[CategoryItems]
    ([CategoryGroupId]);
GO

-- Creating foreign key on [TravelDebitId] in table 'TravelDebitDetails'
ALTER TABLE [dbo].[TravelDebitDetails]
ADD CONSTRAINT [FK_TravelDebitTravelDebitDetail]
    FOREIGN KEY ([TravelDebitId])
    REFERENCES [dbo].[TravelDebits]
        ([TravelDebitId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TravelDebitTravelDebitDetail'
CREATE INDEX [IX_FK_TravelDebitTravelDebitDetail]
ON [dbo].[TravelDebitDetails]
    ([TravelDebitId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------