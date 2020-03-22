CREATE TABLE [dbo].[UserGroup] (
    [UserId]      INT         NOT NULL,
    [GroupId]     INT         NOT NULL, 

    CONSTRAINT [PK_UserGroup] PRIMARY KEY ([UserId], [GroupId]),
);

