/*
	This procedure takes a list of semesters in the following format... '2016,2017,2015' ... as an argument
	and returns the names of the semesters with courses in those years.
*/

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME = 'sp_GetSemesters')
DROP PROCEDURE sp_GetSemesters
 
GO
 
CREATE PROCEDURE sp_GetSemesters
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

--EXEC sp_GetSemesters '2015, 2014'