USE [master]

GO

CREATE DATABASE [CS4450Spring2017];

GO

ALTER DATABASE [CS4450Spring2017] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CS4450Spring2017].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
