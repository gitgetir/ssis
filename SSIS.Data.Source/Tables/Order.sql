CREATE TABLE [dbo].[Order]
(
	[OrderId] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
	[ProductId] INT NOT NULL, 
    [Quantity] INT NOT NULL, 
	[CustomerId] INT NOT NULL,
	[Cost] DECIMAL NOT NULL,
    [CreationTime] DATETIME NOT NULL DEFAULT GETDATE()
)
