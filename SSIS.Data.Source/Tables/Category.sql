CREATE TABLE [dbo].[Category]
(
	[CategoryId] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(100) NOT NULL, 
    [ParentId] INT NULL 
)
