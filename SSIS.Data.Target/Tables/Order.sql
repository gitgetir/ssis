CREATE TABLE [dbo].[Order]
(
	[OrderId] INT NOT NULL PRIMARY KEY, 
    [ProductId] INT NOT NULL, 
    [ProductName] VARCHAR(100) NULL,
	[Quantity] INT NOT NULL, 
    [CustomerFullName] VARCHAR(100) NULL, 
    [CustomerEmail] VARCHAR(100) NULL, 
	[Cost] DECIMAL NOT NULL, 
    [OrderTime] DATETIME NOT NULL DEFAULT GETDATE()
    
)
