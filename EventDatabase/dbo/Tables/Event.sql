CREATE TABLE [dbo].[Event] (
    [Id]                INT                IDENTITY(1,1) NOT NULL,
    [Name]              NVARCHAR (50)     NOT NULL,
    [StartDateTime]     DATE              NOT NULL,
    [EndDateTime]       DATE              NOT NULL,
	[Status]            INT               NOT NULL,
    [DirectionId]       INT               NOT NULL,
	[CityId]            INT               NOT NULL,
	[LogoId]            INT               NOT NULL,
    CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Event_Direction] FOREIGN KEY ([DirectionId]) REFERENCES [dbo].[Direction] ([Id]),
	CONSTRAINT [FK_Event_City] FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([Id]),
	CONSTRAINT [FK_Event_Logo] FOREIGN KEY ([LogoId]) REFERENCES [dbo].[File] ([Id])
);

