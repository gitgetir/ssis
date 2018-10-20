CREATE TABLE [dbo].[Log]
(
	[LogId] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [PackageId] VARCHAR(50) NOT NULL, 
    [PackageName] VARCHAR(100) NOT NULL, 
    [TaskId] VARCHAR(50) NOT NULL, 
    [TaskName] VARCHAR(100) NOT NULL, 
    [StartTime] DATETIME NOT NULL, 
    [EndTime] DATETIME NOT NULL, 
    [Duration] VARCHAR(10) NULL, 
    [RowCount] INT NOT NULL
)
