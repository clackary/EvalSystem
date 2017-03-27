/*
	This procedure takes a list of years, semesters, and departments in the following format... '2016,2017,2015' ... as an argument
	and returns a list of course numbers.
*/

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME = 'sp_GetDepartments')
DROP PROCEDURE sp_GetDepartments
 
GO
 
CREATE PROCEDURE sp_GetCourses
    @YearList VARCHAR(MAX),
     @SemesterList VARCHAR(MAX),
     @DepartmentList VARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON

    SELECT DISTINCT 
        CONCAT(CS.subjectCode,CS.courseNumber) AS courseName 
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