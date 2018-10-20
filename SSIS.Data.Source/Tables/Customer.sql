CREATE TABLE [dbo].[Customer]
(
	[CustomerId] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Email] VARCHAR(100) NOT NULL, 
    [FirstName] VARCHAR(50) NOT NULL, 
    [LastName] VARCHAR(50) NOT NULL, 
    [Password] VARCHAR(50) NOT NULL, 
    [CreationTime] DATETIME NOT NULL DEFAULT GETDATE()
)
