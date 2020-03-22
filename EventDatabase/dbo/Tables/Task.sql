CREATE TABLE [dbo].[Task] (
    [Id]            INT              IDENTITY(1,1) NOT NULL,
    [Name]          NVARCHAR (100)   NOT NULL,
    [Description]   NVARCHAR (MAX)   NOT NULL,
    [ActivityId]    INT              NOT NULL,
    [GroupId]       INT              NOT NULL, 

    CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Task_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[Activity] ([Id]),
	CONSTRAINT [FK_Task_Group] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[Group] ([Id])
);

