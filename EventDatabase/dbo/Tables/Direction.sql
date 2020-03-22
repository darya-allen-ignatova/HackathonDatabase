CREATE TABLE [dbo].[Direction] (
    [Id]      INT               IDENTITY(1,1) NOT NULL,
    [Name]    NVARCHAR (100)    NOT NULL,

    CONSTRAINT [PK_Direction] PRIMARY KEY CLUSTERED ([Id] ASC)
);

