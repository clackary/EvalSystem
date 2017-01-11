USE [EvalDatabase2]
GO

/****** Object:  UserDefinedFunction [dbo].[ConvertCalenderToCatalogYear]    Script Date: 7/23/2016 4:53:39 PM ******/
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


