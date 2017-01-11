USE [EvalDatabase2]
GO

/****** Object:  Table [dbo].[TestAttributes]    Script Date: 7/27/2016 7:45:24 PM ******/
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


