﻿CREATE TABLE [dbo].[Group] (
    [Id]       INT              IDENTITY(1,1) NOT NULL,
    [Name]     NVARCHAR (50)    NOT NULL,

    CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED ([Id] ASC)
);

