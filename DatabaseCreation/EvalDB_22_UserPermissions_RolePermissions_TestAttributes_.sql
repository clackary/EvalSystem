/****** Object:  Table [dbo].[UserPermissions]    Script Date: 04/03/2017 14:54:35 ******/
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
SET IDENTITY_INSERT [dbo].[UserPermissions] ON
INSERT [dbo].[UserPermissions] ([UserPermissionID], [UserID], [PermissionToUserID]) VALUES (1, 887969243, 882896286)
INSERT [dbo].[UserPermissions] ([UserPermissionID], [UserID], [PermissionToUserID]) VALUES (3, 887969243, 886227766)
INSERT [dbo].[UserPermissions] ([UserPermissionID], [UserID], [PermissionToUserID]) VALUES (4, 887969243, 887969243)
SET IDENTITY_INSERT [dbo].[UserPermissions] OFF
/****** Object:  Table [dbo].[TestAttributes]    Script Date: 04/03/2017 14:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestAttributes](
	[TestAttributeID] [int] IDENTITY(1,1) NOT NULL,
	[TestID] [int] NOT NULL,
	[TestAttributeName] [varchar](50) NOT NULL,
	[TestAttributeValue] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TestAttributes] ON
INSERT [dbo].[TestAttributes] ([TestAttributeID], [TestID], [TestAttributeName], [TestAttributeValue]) VALUES (2, 69210, N'LikertMin', N'0')
INSERT [dbo].[TestAttributes] ([TestAttributeID], [TestID], [TestAttributeName], [TestAttributeValue]) VALUES (3, 69210, N'LikertMax', N'4')
SET IDENTITY_INSERT [dbo].[TestAttributes] OFF
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 04/03/2017 14:54:35 ******/
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
SET IDENTITY_INSERT [dbo].[RolePermissions] ON
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (1, 13, 1)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (2, 13, 2)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (3, 13, 3)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (4, 13, 4)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (5, 13, 5)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (6, 13, 6)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (7, 13, 7)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (8, 13, 8)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (9, 13, 9)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (10, 13, 11)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (11, 13, 12)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (12, 13, 13)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (13, 13, 14)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (14, 13, 15)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (15, 13, 17)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (16, 13, 18)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (17, 13, 19)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (18, 13, 20)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (19, 14, 1)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (20, 14, 2)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (21, 14, 3)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (22, 14, 4)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (23, 14, 5)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (24, 14, 6)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (25, 14, 7)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (26, 14, 8)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (27, 14, 9)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (28, 14, 11)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (29, 14, 12)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (30, 14, 13)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (31, 14, 14)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (32, 14, 15)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (33, 14, 17)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (34, 14, 18)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (35, 14, 19)
INSERT [dbo].[RolePermissions] ([RolePermissionID], [RoleID], [PermissionToRoleID]) VALUES (36, 14, 20)
SET IDENTITY_INSERT [dbo].[RolePermissions] OFF
