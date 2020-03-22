CREATE TABLE [dbo].[User] (
    [Id]            INT              IDENTITY(1,1) NOT NULL,
    [FirstName]     NVARCHAR (100)   NOT NULL,
	[LastName]      NVARCHAR (100)   NOT NULL,
    [LoginId]       INT              NOT NULL,
    [CityId]        INT              NOT NULL,
    [ImageId]       INT              NULL,
	[Gender]        INT              NOT NULL,
    [BirthDate]     DATE             NOT NULL,

    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_User_City] FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([Id]),
    CONSTRAINT [FK_User_LoginInfo] FOREIGN KEY ([LoginId]) REFERENCES [dbo].[LoginInfo] ([Id]),
	CONSTRAINT [FK_User_Image] FOREIGN KEY ([ImageId]) REFERENCES [dbo].[File] ([Id])
);

