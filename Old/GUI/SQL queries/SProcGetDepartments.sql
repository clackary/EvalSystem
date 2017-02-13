/*
	This procedure takes a list of semesters in the following format... '2016,2017,2015','Summer, Fall' ... as an argument
	and returns the names of the semesters with courses in those years.
*/

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME = 'sp_GetDepartments')
DROP PROCEDURE sp_GetDepartments
 
GO
 
CREATE PROCEDURE sp_GetDepartments
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
		--AND id.instructorID = 887969243; --(Brad Peterson's User ID)
END


--EXEC sp_GetDepartments '2016,2015,2014', 'Spring,Fall,Summer', 887969243
