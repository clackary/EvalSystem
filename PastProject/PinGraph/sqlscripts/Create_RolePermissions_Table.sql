USE [EvalDatabase2]
GO

/****** Object:  Table [dbo].[RolePermissions]    Script Date: 8/3/2016 9:15:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RolePermissions](
	[RolePermissionID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[PermissionToRoleID] [int] NOT NULL
) ON [PRIMARY]

GO

