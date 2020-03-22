CREATE TABLE [dbo].[Activity] (
    [Id]               INT             IDENTITY(1,1) NOT NULL,
    [Name]             NVARCHAR (50)   NOT NULL,
    [StartDateTime]    DATE            NOT NULL,
    [EndDateTime]      DATE            NOT NULL,
    [EventId]          INT             NOT NULL,

    CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Activity_Event] FOREIGN KEY ([EventId]) REFERENCES [dbo].[Event] ([Id])
);

