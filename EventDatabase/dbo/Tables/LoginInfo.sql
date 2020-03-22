CREATE TABLE [dbo].[LoginInfo] (
    [Id]         INT             IDENTITY(1,1) NOT NULL,
    [Email]      NCHAR (150)     NOT NULL,
    [Phone]      NCHAR (50)      NOT NULL,
    [Password]   NVARCHAR (20)   NOT NULL,

    CONSTRAINT [PK_LoginInfo] PRIMARY KEY CLUSTERED ([Id] ASC)
);

