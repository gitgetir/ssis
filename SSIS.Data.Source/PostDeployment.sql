/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

USE [SSIS.Data.Source]
GO
TRUNCATE TABLE [dbo].[Category]
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [ParentId]) VALUES (1, N'Computer', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [ParentId]) VALUES (2, N'Tablet', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [ParentId]) VALUES (3, N'Smartphone', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [ParentId]) VALUES (4, N'Accessories', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [ParentId]) VALUES (5, N'Notebook', NULL)
GO
TRUNCATE TABLE [dbo].[Customer]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([CustomerId], [Email], [FirstName], [LastName], [Password], [CreationTime]) VALUES (1, N'someone@domain.com', N'Jack', N'Jones', N'jack', CAST(N'2018-04-08T21:55:13.850' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerId], [Email], [FirstName], [LastName], [Password], [CreationTime]) VALUES (2, N'someother@anotherdomain.com', N'July', N'August', N'julaug', CAST(N'2018-04-08T21:55:42.533' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
TRUNCATE TABLE [dbo].[Order]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([OrderId], [ProductId], [Quantity], [CustomerId], [Cost], [CreationTime]) VALUES (1, 3, 1, 2, CAST(1900 AS Decimal(18, 0)), CAST(N'2018-04-08T21:48:56.013' AS DateTime))
GO
INSERT [dbo].[Order] ([OrderId], [ProductId], [Quantity], [CustomerId], [Cost], [CreationTime]) VALUES (3, 1, 1, 1, CAST(2150 AS Decimal(18, 0)), CAST(N'2018-04-08T21:49:19.797' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
TRUNCATE TABLE [dbo].[Product]
GO
INSERT [dbo].[Product] ([ProductId], [Name], [CategoryId]) VALUES (1, N'Dell 14" Notebook', 5)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [CategoryId]) VALUES (2, N'Toshiba 17" Notebook', 5)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [CategoryId]) VALUES (3, N'Samsung 10.1" Tablet', 2)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [CategoryId]) VALUES (4, N'MSI 7080 Desktop PC', 1)
GO
