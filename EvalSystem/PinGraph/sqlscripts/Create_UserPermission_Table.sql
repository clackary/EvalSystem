USE [EvalDatabase2]
GO

/****** Object:  Table [dbo].[UserPermissions]    Script Date: 8/3/2016 9:16:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserPermissions](
	[UserPermissionID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[PermissionToUserID] [int] NOT NULL
) ON [PRIMARY]

GO

