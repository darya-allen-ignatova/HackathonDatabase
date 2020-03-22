CREATE TABLE [dbo].[File] (
    [Id]      INT                 IDENTITY(1,1) NOT NULL,
    [Name]    NVARCHAR (100)      NOT NULL,
	[Title]   NVARCHAR (50)       NOT NULL,
    [Data]    VARBINARY (MAX)     NOT NULL,

    CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED ([Id] ASC)
);

