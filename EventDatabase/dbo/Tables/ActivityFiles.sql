CREATE TABLE [dbo].[ActivityFiles] (
    [ActivityId]     INT    NOT NULL,
    [FileId]         INT    NOT NULL,

	CONSTRAINT [PK_ActivityFiles] PRIMARY KEY ([ActivityId], [FileId]),
    CONSTRAINT [FK_TaskFiles_File] FOREIGN KEY ([FileId]) REFERENCES [dbo].[File] ([Id]),
    CONSTRAINT [FK_TaskFiles_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[Activity] ([Id])
);

