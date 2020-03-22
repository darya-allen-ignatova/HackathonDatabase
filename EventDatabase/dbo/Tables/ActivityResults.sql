CREATE TABLE [dbo].[ActivityResults] (
    [Id]            INT      IDENTITY(1,1) NOT NULL,
    [ActivityId]    INT      NOT NULL,
    [UserId]        INT      NULL,
    [GroupId]       INT      NULL,
	[Score]         REAL     DEFAULT(0) NOT NULL,

    CONSTRAINT [PK_ScoreResult] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ScoreResult_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[Activity] ([Id]),
    CONSTRAINT [FK_ScoreResult_Group] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[Group] ([Id]),
    CONSTRAINT [FK_ScoreResult_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
);

