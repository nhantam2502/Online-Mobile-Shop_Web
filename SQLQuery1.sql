USE [master]
GO
drop database UserManagement
go

CREATE DATABASE [UserManagement] 

USE [UserManagement]
GO

delete tblUsers  where 1=1
go

CREATE TABLE [dbo].[tblUsers](
	[userID] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleID] [nvarchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

delete tblCategory  where 1=1
go
CREATE TABLE [dbo].[tblCategory](
	[categoryID] [nvarchar](50) PRIMARY KEY,
	[categoryName] [nvarchar](50) NULL,
)

CREATE TABLE [dbo].[tblProduct](
	[productID] [nvarchar](50) PRIMARY KEY,
	[productName] [nvarchar](50) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[importDate] [DATE] NULL,
	[categoryID] [nvarchar](50) NULL,
	CONSTRAINT [fk_categoryID] FOREIGN KEY([categoryID]) REFERENCES [tblCategory] ([categoryID])
)

CREATE TABLE [dbo].[tblOrder](
	[orderID] [nvarchar](50) PRIMARY KEY,
	[oderDate] [DATE] NULL,
	[total] [float] NULL,
	[userID] [nvarchar](50) NULL,
	CONSTRAINT [fk_userID] FOREIGN KEY([userID]) REFERENCES [tblUsers]([userID])
)

CREATE TABLE [dbo].[tblOrderDetail](
	[detailID] [nvarchar](50) PRIMARY KEY,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[orderID] [nvarchar](50) NULL,
	[productID] [nvarchar](50) NULL,
	CONSTRAINT [fk_orderID] FOREIGN KEY([orderID]) REFERENCES [tblOrder]([orderID]),
	CONSTRAINT [fk_productID] FOREIGN KEY([productID]) REFERENCES [tblProduct]([productID])
)

GO
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'admin', N'Toi la admin', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'Hoadnt', N'Hoa Doan', N'1', N'US', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE130363', N'Ngo Ha Tri Bao', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140103', N'Phuoc Ha', N'1', N'US', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140119', N'Trai Nguyen', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140130', N'Tam Tran', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140201', N'PHAM HOANG TU', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140969', N'Nguyen Gia Tin', N'123', N'US', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE150443', N'LE MINH KHOA', N'1', N'US', 1)

INSERT [dbo].tblCategory([categoryID], [categoryName]) VALUES (N'IP0001', N'Iphone 12')
INSERT [dbo].tblCategory([categoryID], [categoryName]) VALUES (N'IP0002', N'Iphone 13')
INSERT [dbo].tblCategory([categoryID], [categoryName]) VALUES (N'IP0003', N'Iphone 14')
INSERT [dbo].tblCategory([categoryID], [categoryName]) VALUES (N'IP0004', N'Iphone 15')
INSERT [dbo].tblCategory([categoryID], [categoryName]) VALUES (N'IP0005', N'Iphone 16')


INSERT [dbo].tblProduct([productID], [productName], [price], [quantity], [importDate], [categoryID] ) VALUES (N'P0001', N'Iphone 12 Mini', 27, 1500, '20230315', N'IP0001')
INSERT [dbo].tblProduct([productID], [productName], [price], [quantity], [importDate], [categoryID] ) VALUES (N'P0002', N'Iphone 13 Pro', 30, 2500, '20230315', N'IP0002')
INSERT [dbo].tblProduct([productID], [productName], [price], [quantity], [importDate], [categoryID] ) VALUES (N'P0003', N'Iphone 14 Pro Max', 38, 2500, '20230315', N'IP0003')
INSERT [dbo].tblProduct([productID], [productName], [price], [quantity], [importDate], [categoryID] ) VALUES (N'P0004', N'Iphone 15 Plus', 40, 1000, '20230315', N'IP0004')
INSERT [dbo].tblProduct([productID], [productName], [price], [quantity], [importDate], [categoryID] ) VALUES (N'P0005', N'Iphone 16 Mini', 40, 100, '20230315', N'IP0005')



SELECT TOP 2 userID FROM tblUsers 


