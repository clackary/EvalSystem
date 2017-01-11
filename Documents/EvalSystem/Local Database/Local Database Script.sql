USE [master]
GO
/****** Object:  Database [W0115559]    Script Date: 8/15/2016 8:35:43 PM ******/
CREATE DATABASE [W0115559]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'W0115559', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\W0115559.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'W0115559_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\W0115559_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [W0115559] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [W0115559].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [W0115559] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [W0115559] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [W0115559] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [W0115559] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [W0115559] SET ARITHABORT OFF 
GO
ALTER DATABASE [W0115559] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [W0115559] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [W0115559] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [W0115559] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [W0115559] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [W0115559] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [W0115559] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [W0115559] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [W0115559] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [W0115559] SET  DISABLE_BROKER 
GO
ALTER DATABASE [W0115559] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [W0115559] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [W0115559] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [W0115559] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [W0115559] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [W0115559] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [W0115559] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [W0115559] SET RECOVERY FULL 
GO
ALTER DATABASE [W0115559] SET  MULTI_USER 
GO
ALTER DATABASE [W0115559] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [W0115559] SET DB_CHAINING OFF 
GO
ALTER DATABASE [W0115559] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [W0115559] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [W0115559] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'W0115559', N'ON'
GO
USE [W0115559]
GO
/****** Object:  UserDefinedFunction [dbo].[ConvertCalenderToCatalogYear]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ConvertCalenderToCatalogYear](@calenderYear int, @term int)
RETURNS int
AS
BEGIN
	IF (@term < 3) 
	BEGIN
		RETURN @calenderYear - 1 
	END
	RETURN @calenderYear
END



GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] NOT NULL,
	[testID] [int] NOT NULL,
	[categoryName] [nvarchar](40) NULL,
	[numOfRandom] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colleges]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Colleges](
	[code] [varchar](4) NOT NULL,
	[name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CourseSections]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CourseSections](
	[ID] [int] NOT NULL,
	[sCourseID] [int] NULL,
	[section] [tinyint] NULL,
	[semester] [tinyint] NOT NULL,
	[block] [char](1) NULL,
	[year] [smallint] NOT NULL,
	[active] [tinyint] NOT NULL,
	[courseID] [int] NULL,
	[instructorID] [int] NULL,
	[urlID] [int] NULL,
	[daysOfWeek] [nvarchar](8) NULL,
	[meetingRoom] [nvarchar](10) NULL,
	[meetingTime] [nvarchar](15) NULL,
	[offeredByCode] [char](2) NULL,
	[locationCode] [char](2) NULL,
	[creditHrs] [real] NULL,
	[lastStaarsUpdate] [datetime] NULL,
	[subjectCode] [varchar](4) NULL,
	[courseNumber] [varchar](5) NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[campusCode] [char](3) NULL,
	[bannerCRN] [int] NULL,
	[vistaLCID] [bigint] NULL,
	[vistaName] [varchar](50) NULL,
	[lmsID] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CourseTitles]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CourseTitles](
	[sCourseID] [int] NULL,
	[deptID] [nvarchar](6) NULL,
	[courseNumber] [nvarchar](12) NOT NULL,
	[genEd] [nvarchar](6) NULL,
	[title] [nvarchar](60) NULL,
	[syllabusURL] [varchar](80) NULL,
	[description] [text] NULL,
	[objectives] [text] NULL,
	[requirements] [text] NULL,
	[subjectCode] [varchar](4) NULL,
	[academicCollegeID] [int] NULL,
	[departmentCode] [varchar](4) NULL,
	[collegeCode] [varchar](4) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Deliveries]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Deliveries](
	[ID] [int] NOT NULL,
	[courseID] [int] NULL,
	[availableFrom] [datetime] NOT NULL,
	[availableUntil] [datetime] NOT NULL,
	[feedbackDuringReview] [bit] NOT NULL CONSTRAINT [DF_Deliveries_feedbackDuringReview]  DEFAULT ((1)),
	[feedbackDuringTest] [bit] NOT NULL CONSTRAINT [DF_Deliveries_feedbackDuringTest]  DEFAULT ((0)),
	[feedbackGiveScore] [bit] NOT NULL CONSTRAINT [DF_Deliveries_feedbackGiveScore]  DEFAULT ((1)),
	[feedbackSummaryEmail] [bit] NOT NULL CONSTRAINT [DF_Deliveries_feedbackSummaryEmail]  DEFAULT ((1)),
	[inAndOutLink] [nvarchar](80) NULL,
	[instructions] [text] NULL,
	[maxLimitDuration] [int] NULL,
	[reviewEnabled] [bit] NOT NULL CONSTRAINT [DF_Deliveries_reviewEnabled]  DEFAULT ((1)),
	[reviewAnywhere] [bit] NOT NULL CONSTRAINT [DF_Deliveries_reviewAnywhere]  DEFAULT ((0)),
	[reviewOnlyAfterTest] [bit] NOT NULL CONSTRAINT [DF_Deliveries_reviewOnlyAfterTest]  DEFAULT ((0)),
	[reviewOnlyMissedQuestions] [bit] NOT NULL CONSTRAINT [DF_Deliveries_reviewOnlyMissedQuestions]  DEFAULT ((1)),
	[reviewTimeLimit] [nvarchar](30) NULL,
	[gradebookCode] [nvarchar](30) NULL,
	[gradebookSendPercentage] [bit] NOT NULL CONSTRAINT [DF_Deliveries_gradebookSendPercentage]  DEFAULT ((1)),
	[projectedDuration] [int] NULL,
	[randomizeQuestions] [bit] NOT NULL CONSTRAINT [DF_Deliveries_randomizeQuestions]  DEFAULT ((1)),
	[randomizeDistractors] [bit] NOT NULL CONSTRAINT [DF_Deliveries_randomizeDistractors]  DEFAULT ((0)),
	[randomizeCategories] [bit] NOT NULL CONSTRAINT [DF_Deliveries_randomizeCategories]  DEFAULT ((0)),
	[securityConfidentialIDs] [bit] NOT NULL CONSTRAINT [DF_Deliveries_securityConfidentialIDs]  DEFAULT ((0)),
	[securityGoBack] [bit] NOT NULL CONSTRAINT [DF_Deliveries_securityGoBack]  DEFAULT ((1)),
	[securityOncePerID] [bit] NOT NULL CONSTRAINT [DF_Deliveries_securityOncePerID]  DEFAULT ((1)),
	[securityPassword] [nvarchar](15) NULL,
	[securityTakeAnonymously] [bit] NOT NULL CONSTRAINT [DF_Deliveries_securityTakeAnonymously]  DEFAULT ((0)),
	[securityTakeWithID] [bit] NOT NULL CONSTRAINT [DF_Deliveries_securityTakeWithID]  DEFAULT ((1)),
	[securityIDList] [bit] NOT NULL CONSTRAINT [DF_Deliveries_securityIDList]  DEFAULT ((0)),
	[sectionDeliveries] [bit] NOT NULL CONSTRAINT [DF_Deliveries_sectionDeliveries]  DEFAULT ((0)),
	[testBankSubSet] [int] NULL,
	[autosend] [bit] NULL,
	[scoringremovespaces] [bit] NULL,
	[pointsToAdd] [tinyint] NULL,
	[scoringMethod] [tinyint] NULL,
	[timedTest] [int] NULL,
	[consent] [bit] NULL,
	[reviewPassword] [bit] NULL,
	[missedQuestions] [bit] NULL,
	[securityAttemptsPerID] [tinyint] NULL,
	[showAllQuestions] [bit] NOT NULL DEFAULT ((0)),
	[multResponseScoringMethod] [tinyint] NULL DEFAULT ((0)),
	[questionsAllAtOnce] [bit] NULL,
	[faceToface] [bit] NULL,
	[online] [bit] NULL,
	[indepStudy] [bit] NULL,
	[insteadOf] [bit] NULL,
	[gradesLastSent] [datetime] NULL,
	[reviewShowCorrectAnswers] [bit] NULL,
	[cueSheets] [varchar](16) NULL,
	[notes] [varchar](16) NULL,
	[scratchPaper] [bit] NULL,
	[openBook] [bit] NULL,
	[englishDictionary] [bit] NULL,
	[paperForeignDict] [bit] NULL,
	[electronicForeignDict] [bit] NULL,
	[calculator4Function] [bit] NULL,
	[calculatorScientific] [bit] NULL,
	[calculatorGraphing] [bit] NULL,
	[calculatorFinancial] [bit] NULL,
	[calculatorCenterProvided] [bit] NULL,
	[writeOnExam] [bit] NULL,
	[restroomBreak] [bit] NULL,
	[feedbackGiveScorePercent] [bit] NULL,
	[feedbackGiveScoreAfterTestRun] [bit] NULL,
	[feedbackStudentReport] [bit] NULL,
	[feedbackStudentReportAfterTestRun] [bit] NULL,
	[fee] [varchar](12) NULL,
	[feedbackShowStudentResponses] [bit] NULL,
	[feedbackShowCorrectAnswers] [bit] NULL,
	[studentComments] [bit] NULL,
	[staffinstructions] [text] NULL,
	[notestoself] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[code] [varchar](4) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[collegeCode] [varchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DepartmentsToSubjectCodes]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DepartmentsToSubjectCodes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[departmentCode] [varchar](4) NOT NULL,
	[subjectCode] [varchar](4) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DistractorResponses]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistractorResponses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[questionResponseID] [int] NOT NULL,
	[distractorID] [int] NOT NULL,
	[sequence] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Distractors]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distractors](
	[ID] [int] NOT NULL,
	[questionID] [int] NOT NULL,
	[sequence] [tinyint] NULL,
	[text] [ntext] NULL,
	[formatID] [tinyint] NOT NULL,
	[correct] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EssayResponses]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EssayResponses](
	[questionResponseID] [int] NOT NULL,
	[essayResponse] [ntext] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[questionResponseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InstructorDepartments]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InstructorDepartments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[instructorID] [int] NOT NULL,
	[departmentCode] [varchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuestionResponses]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionResponses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[resultID] [int] NOT NULL,
	[questionID] [int] NOT NULL,
	[sequence] [smallint] NOT NULL,
	[score] [real] NULL,
	[manual] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Questions]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[ID] [int] NOT NULL,
	[testID] [int] NOT NULL,
	[sequence] [smallint] NOT NULL,
	[text] [ntext] NULL,
	[formatID] [tinyint] NULL,
	[typeID] [tinyint] NOT NULL,
	[weight] [real] NULL,
	[categoryID] [int] NULL,
	[bonus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuestionTypes]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionTypes](
	[ID] [tinyint] NOT NULL,
	[name] [nvarchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Results]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Results](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[studentID] [int] NULL,
	[deliveryID] [int] NOT NULL,
	[startTime] [datetime] NOT NULL,
	[duration] [int] NULL,
	[IPaddress] [int] NULL,
	[scorePointsCorrect] [real] NULL,
	[scorePointsPossible] [real] NULL,
	[sectionID] [int] NULL,
	[siteID] [int] NULL,
	[assocResultID] [int] NULL,
	[deleted] [bit] NULL,
	[testName] [varchar](100) NULL,
	[scoreSent] [datetime] NULL,
	[instructorID] [int] NULL,
	[testCopy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 8/15/2016 8:35:44 PM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SectionsTaught]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionsTaught](
	[instructorID] [int] NOT NULL,
	[sectionID] [int] NOT NULL,
	[LastVisit] [datetime] NULL,
	[HitCount] [int] NULL,
 CONSTRAINT [PK_SectionsTaught] PRIMARY KEY CLUSTERED 
(
	[instructorID] ASC,
	[sectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SectionTests]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionTests](
	[ID] [int] NOT NULL,
	[testID] [int] NOT NULL,
	[deliveryID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Semester]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Semester](
	[SemesterID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TestAttributes]    Script Date: 8/15/2016 8:35:44 PM ******/
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
/****** Object:  Table [dbo].[Tests]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tests](
	[ID] [int] NOT NULL,
	[testName] [nvarchar](100) NOT NULL,
	[created] [datetime] NOT NULL,
	[creatorID] [int] NOT NULL,
	[typeID] [tinyint] NULL,
	[deleted] [bit] NOT NULL CONSTRAINT [DF_Tests_deleted]  DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestTypes]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestTypes](
	[ID] [tinyint] NOT NULL,
	[name] [nvarchar](40) NOT NULL,
	[shortname] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPermissions]    Script Date: 8/15/2016 8:35:44 PM ******/
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
/****** Object:  Table [dbo].[UserRoles]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[roleID] [int] NOT NULL,
	[granted] [smalldatetime] NULL,
	[grantedBy] [int] NULL,
	[revoked] [smalldatetime] NULL,
	[revokedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL,
	[Login] [nvarchar](15) NULL,
	[Password] [char](32) NULL,
	[SSN] [int] NULL,
	[LastName] [nvarchar](30) NULL,
	[FirstName] [nvarchar](30) NULL,
	[Email] [nvarchar](55) NULL,
	[pictureID] [nvarchar](12) NULL,
	[Phone] [nvarchar](30) NULL,
	[gender] [char](1) NULL,
	[birthdate] [datetime] NULL,
	[LastStaarsUpdate] [datetime] NULL,
	[StreetAddress] [nvarchar](80) NULL,
	[Zip] [char](10) NULL,
	[migrated] [bit] NULL,
	[wcid] [varchar](40) NULL,
	[wNumber] [varchar](9) NULL,
	[localityID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[SplitList]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SplitList]
(
   @List      VARCHAR(MAX),
   @Delimiter VARCHAR(255)
)
RETURNS TABLE
AS
  RETURN ( SELECT Item = CONVERT(VARCHAR(MAX), Item) FROM
      ( SELECT Item = x.i.value('(./text())[1]', 'varchar(max)')
        FROM ( SELECT [XML] = CONVERT(XML, '<i>'
        + REPLACE(@List, @Delimiter, '</i><i>') + '</i>').query('.')
          ) AS a CROSS APPLY [XML].nodes('i') AS x(i) ) AS y
      WHERE Item IS NOT NULL
  );
GO
/****** Object:  Index [IX_CourseSections_bannerCRN]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseSections_bannerCRN] ON [dbo].[CourseSections]
(
	[bannerCRN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CourseSections_courseNumber]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseSections_courseNumber] ON [dbo].[CourseSections]
(
	[courseNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseSections_endDate]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseSections_endDate] ON [dbo].[CourseSections]
(
	[endDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseSections_semester]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseSections_semester] ON [dbo].[CourseSections]
(
	[semester] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseSections_startDate]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseSections_startDate] ON [dbo].[CourseSections]
(
	[startDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CourseSections_subjectCode]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseSections_subjectCode] ON [dbo].[CourseSections]
(
	[subjectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CourseSections_year]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_CourseSections_year] ON [dbo].[CourseSections]
(
	[year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Deliveries]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Deliveries] ON [dbo].[Deliveries]
(
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Deliveries_availableFrom]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Deliveries_availableFrom] ON [dbo].[Deliveries]
(
	[availableFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Deliveries_availableUntil]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Deliveries_availableUntil] ON [dbo].[Deliveries]
(
	[availableUntil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DistractorResponses_2]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_DistractorResponses_2] ON [dbo].[DistractorResponses]
(
	[questionResponseID] ASC,
	[distractorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Distractors]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Distractors] ON [dbo].[Distractors]
(
	[questionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_QuestionResponses]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_QuestionResponses] ON [dbo].[QuestionResponses]
(
	[resultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_QuestionResponses_2]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_QuestionResponses_2] ON [dbo].[QuestionResponses]
(
	[questionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Questions] ON [dbo].[Questions]
(
	[testID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_2]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Questions_2] ON [dbo].[Questions]
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_3]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Questions_3] ON [dbo].[Questions]
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Results_deleted]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Results_deleted] ON [dbo].[Results]
(
	[deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Results_deliveryID]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Results_deliveryID] ON [dbo].[Results]
(
	[deliveryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Results_sectionID]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Results_sectionID] ON [dbo].[Results]
(
	[sectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Results_siteID]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Results_siteID] ON [dbo].[Results]
(
	[siteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Results_studentID]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Results_studentID] ON [dbo].[Results]
(
	[studentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SectionTests_deliveryID]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_SectionTests_deliveryID] ON [dbo].[SectionTests]
(
	[deliveryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SectionTests_testID]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_SectionTests_testID] ON [dbo].[SectionTests]
(
	[testID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tests]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tests] ON [dbo].[Tests]
(
	[creatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tests_1]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tests_1] ON [dbo].[Tests]
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tests_deleted]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tests_deleted] ON [dbo].[Tests]
(
	[deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Tests_testName]    Script Date: 8/15/2016 8:35:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tests_testName] ON [dbo].[Tests]
(
	[testName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddUserAccessToUser]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_AddUserAccessToUser]
	@User INT,
	@InstructorIDList VARCHAR(MAX)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @id INT
	DECLARE myCursor CURSOR LOCAL FAST_FORWARD FOR
		SELECT *
		FROM dbo.SplitList(@InstructorIDList, ',')
	OPEN myCursor
	FETCH NEXT FROM myCursor INTO @id
	WHILE @@FETCH_STATUS = 0 BEGIN
		INSERT INTO dbo.UserPermissions(UserID, PermissionToUserID) VALUES (@User, @id)
		
		FETCH NEXT FROM myCursor INTO @id
	END
	
	CLOSE myCursor
	DEALLOCATE myCursor
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCourses]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetCourses]
--NO PARAMS
    @YearList VARCHAR(MAX),
     @SemesterList VARCHAR(MAX),
     @DepartmentList VARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON

    SELECT DISTINCT 
        CONCAT(cs.subjectCode,cs.courseNumber) AS courseName
    FROM 
        CourseSections CS
        JOIN Semester s ON cs.semester = s.SemesterID
    WHERE 
        CS.[year] IN 
            (
                SELECT 
                    * 
                FROM 
                    dbo.SplitList(@YearList, ',')
            )
        AND s.name IN 
            (
                SELECT
                    *
                FROM 
                    dbo.SplitList(@SemesterList, ',')
            )
        AND subjectCode IN
        (
            SELECT 
            *
            FROM
                dbo.SplitList(@DepartmentList, ',')
        );

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDepartments]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[sp_GetDepartments]
    @YearList VARCHAR(MAX),
    @SemesterList VARCHAR(MAX),
	@InstructorID int
AS
BEGIN
    SET NOCOUNT ON

    SELECT DISTINCT 
        CS.subjectCode AS departments
    FROM 
        CourseSections CS
        JOIN Semester s ON cs.semester = s.SemesterID
		JOIN DepartmentsToSubjectCodes ds ON cs.subjectCode = ds.subjectCode
		JOIN InstructorDepartments id ON id.departmentCode = ds.departmentCode
    WHERE 
        CS.[year] IN 
            (
                SELECT 
                    * 
                FROM 
                    dbo.SplitList(@YearList, ',')
            )
        AND s.name IN 
            (
                SELECT
                    *
                FROM 
                    dbo.SplitList(@SemesterList, ',') AS X
            )
		AND id.instructorID = @InstructorID;		
		--AND id.instructorID = 887969243;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_GetPingraphData]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetPingraphData]

@CourseList VARCHAR(MAX),
@UserID int
AS
BEGIN
	SELECT DISTINCT 
		t.ID AS [TestId]
		, CASE 
			WHEN up.UserID IS NOT NULL OR u.Id = @userId 
			THEN u.FirstName + ' ' + u.LastName 
			ELSE '' 
		END AS [teacher]
		, CASE 
			-- 2 - Something User Running Does not Teach But Can View
			WHEN up.UserID IS NOT NULL OR u.Id = @userId AND r.instructorID != @userId THEN cs.subjectCode + cs.courseNumber
			-- 1 - Something User Running Teaches
			WHEN up.UserID IS NOT NULL OR u.Id = @userId THEN cs.subjectCode + cs.courseNumber 
			-- 3 - Something User Cannot See Who Teaches
			WHEN up.UserID IS NULL OR u.Id = @userId THEN ''
		END AS [course] 
		, dbo.ConvertCalenderToCatalogYear(cs.year, cs.semester) AS [catalogYear]
		, cs.year AS [calendarYear]
		, s.Name AS [semester]
		, s.SemesterID AS [semesterNumber]
		, AVG(CONVERT(DECIMAL(10,5), d.sequence - 1)) AS [Score]
		, CASE 
			-- 2 - Something User Running Does not Teach But Can View
			WHEN up.UserID IS NOT NULL OR u.Id = @userId AND r.instructorID != @userId THEN 2
			-- 1 - Something User Running Teaches
			WHEN up.UserID IS NOT NULL OR u.Id = @userId THEN 1
			-- 3 - Something User Cannot See Who Teaches
			WHEN up.UserID IS NULL OR u.Id = @userId THEN 3
		END AS [permission]
		, CASE 
			-- 2 - Something User Running Does not Teach But Can View
			WHEN up.UserID IS NOT NULL OR u.Id = @userId AND r.instructorID != @userId THEN cs.bannerCRN
			-- 1 - Something User Running Teaches
			WHEN up.UserID IS NOT NULL OR u.Id = @userId THEN cs.bannerCRN
			-- 3 - Something User Cannot See Who Teaches
			WHEN up.UserID IS NULL OR u.Id = @userId THEN ''
		END AS [bannerCRN] 
		, ta.LikertMin
		, ta.LikertMax
	FROM SectionsTaught st
		JOIN CourseSections cs ON cs.ID = st.sectionID
		JOIN Semester s ON cs.semester = s.SemesterID
	
		-- JOIN to get instructor Information
		JOIN Users u ON st.instructorID = u.Id
		JOIN UserRoles ur ON u.Id = ur.userID
		LEFT JOIN (SELECT up.PermissionToUserID AS [UserID], u.FirstName, u.LastName, '' as [name]
					FROM Users u
						JOIN UserPermissions up ON u.Id = up.UserID
					WHERE u.Id = @userId
					UNION
					SELECT ur.userID AS [UserID], u.FirstName, u.LastName, r.name
					FROM RolePermissions rp
						JOIN UserRoles ur ON rp.PermissionToRoleID = ur.roleID
						JOIN Roles r ON ur.roleID = r.id
						JOIN Roles rl ON rp.RoleID = rl.id
						JOIN Users u ON ur.userID = u.Id
					WHERE rp.RoleID IN (SELECT ur.roleID FROM UserRoles ur WHERE ur.userID = @userId) 
						AND ur.userID NOT IN (SELECT ur.userID 
											FROM Roles r
												JOIN UserRoles ur ON r.id = ur.roleID
											WHERE r.id NOT IN (SELECT rp.PermissionToRoleID
																FROM RolePermissions rp
																	JOIN UserRoles ur ON rp.RoleID = ur.roleID
																	JOIN Users u ON ur.userID = u.Id
															WHERE u.Id = @userId))
							) up ON u.id = up.UserID

		-- JOIN to get results of Evaluation
		JOIN Results r ON st.sectionID = r.sectionID
		JOIN QuestionResponses qr ON r.ID = qr.resultID
		JOIN DistractorResponses dr ON qr.ID = dr.questionResponseID
		JOIN Distractors d ON dr.distractorID = d.ID
		JOIN Questions q ON q.ID = qr.questionID
		JOIN Tests t ON t.ID = q.testID
		JOIN (SELECT ta.TestID, SUM(ta.LikertMin) AS [LikertMin], SUM(ta.LikertMax) AS [LikertMax] 
			FROM (
				SELECT ta.TestID, CASE WHEN ta.TestAttributeName = 'LikertMin' THEN ta.TestAttributeValue	END AS [LikertMin], 0 AS [LikertMax]
				FROM TestAttributes ta
				UNION
				SELECT ta.TestID, 0 AS [LikertMin], CASE WHEN ta.TestAttributeName = 'LikertMax' THEN ta.TestAttributeValue	END AS [LikertMax]
				FROM TestAttributes ta 
				) as ta
			GROUP BY ta.TestID)  ta ON t.ID = ta.TestID

	WHERE t.typeID = 5 --AND cs.subjectCode = 'CS'
		AND cs.subjectCode + cs.courseNumber IN (SELECT * FROM dbo.SplitList(@CourseList, ','))
	
	GROUP BY
		t.ID
		, CASE WHEN up.UserID IS NOT NULL OR u.Id = @userId THEN u.FirstName + ' ' + u.LastName ELSE '' END
		, CASE 
			-- 2 - Something User Running Does not Teach But Can View
			WHEN up.UserID IS NOT NULL OR u.Id = @userId AND r.instructorID != @userId THEN cs.subjectCode + cs.courseNumber
			-- 1 - Something User Running Teaches
			WHEN up.UserID IS NOT NULL OR u.Id = @userId THEN cs.subjectCode + cs.courseNumber 
			-- 3 - Something User Cannot See Who Teaches
			WHEN up.UserID IS NULL OR u.Id = @userId THEN ''
		END
		, dbo.ConvertCalenderToCatalogYear(cs.year, cs.semester)
		, cs.year
		, s.Name
		, s.SemesterID
		, CASE 
			-- 2 - Something User Running Does not Teach But Can View
			WHEN up.UserID IS NOT NULL OR u.Id = @userId AND r.instructorID != @userId THEN 2
			-- 1 - Something User Running Teaches
			WHEN up.UserID IS NOT NULL OR u.Id = @userId THEN 1
			-- 3 - Something User Cannot See Who Teaches
			WHEN up.UserID IS NULL OR u.Id = @userId THEN 3
		END
		, CASE 
			-- 2 - Something User Running Does not Teach But Can View
			WHEN up.UserID IS NOT NULL OR u.Id = @userId AND r.instructorID != @userId THEN cs.bannerCRN
			-- 1 - Something User Running Teaches
			WHEN up.UserID IS NOT NULL OR u.Id = @userId THEN cs.bannerCRN
			-- 3 - Something User Cannot See Who Teaches
			WHEN up.UserID IS NULL OR u.Id = @userId THEN ''
		END
		, ta.LikertMin
		, ta.LikertMax

	ORDER BY 8

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSemesters]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[sp_GetSemesters]
--NO PARAMS
     @YearList VARCHAR(MAX)
AS
BEGIN
     SET NOCOUNT ON;
 
	SELECT DISTINCT
		(
			CASE 
				WHEN CS.semester = 1 THEN 'Spring'
				WHEN CS.semester = 2 THEN 'Summer'
				WHEN CS.semester = 3 THEN 'Fall'
			END
		) AS semester
	FROM
		CourseSections CS
	WHERE
		CS.[year] IN 
			(
				SELECT
					*
				FROM
					dbo.SplitList(@YearList, ',')			
			)
		
END

GO
/****** Object:  StoredProcedure [dbo].[sp_RemoveUserAccessToUser]    Script Date: 8/15/2016 8:35:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* User is the UserID of the person whos getting new permissions */
/* InstructorIDList is a list of all IDs for the instructors you are give the User permission to view */
CREATE PROCEDURE [dbo].[sp_RemoveUserAccessToUser]
	@User INT,
	@InstructorIDList VARCHAR(MAX)
AS
BEGIN
	SET NOCOUNT ON
	
	DECLARE @id INT
	DECLARE myCursor CURSOR LOCAL FAST_FORWARD FOR
		SELECT *
		FROM dbo.SplitList(@InstructorIDList, ',')
	OPEN myCursor
	FETCH NEXT FROM myCursor INTO @id
	WHILE @@FETCH_STATUS = 0 BEGIN
		DELETE FROM dbo.UserPermissions
		WHERE UserID = @User
			AND PermissionToUserID = @id
		
		FETCH NEXT FROM myCursor INTO @id
	END
	
	CLOSE myCursor
	DEALLOCATE myCursor
	
END
GO
USE [master]
GO
ALTER DATABASE [W0115559] SET  READ_WRITE 
GO
