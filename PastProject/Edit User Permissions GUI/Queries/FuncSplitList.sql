
USE [W0115559]

GO
/****** Object:  UserDefinedFunction [dbo].[SplitList]    Script Date: 8/1/2016 8:41:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[SplitList]
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
