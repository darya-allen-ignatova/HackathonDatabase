CREATE TABLE [dbo].[EventUserRole] (
    [UserId]     INT    NOT NULL,
    [EventId]    INT    NOT NULL,
	[Role]       INT    NOT NULL,

	CONSTRAINT [PK_EventUserRole] PRIMARY KEY ([UserId], [EventId]),
    CONSTRAINT [FK_EventUserRole_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id]),
    CONSTRAINT [FK_EventUserRole_Event] FOREIGN KEY ([EventId]) REFERENCES [dbo].[Event] ([Id]), 
);

