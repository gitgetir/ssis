CREATE TABLE [dbo].[Error]
(
	[ErrorId] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [ErrorCode] VARCHAR(50) NULL, 
    [ErrorDescription] VARCHAR(MAX) NULL, 
    [PackageName] VARCHAR(100) NULL, 
    [TaskName] VARCHAR(100) NULL, 
    [SourceName] VARCHAR(100) NULL, 
    [ErrorTime] DATETIME NOT NULL
)
