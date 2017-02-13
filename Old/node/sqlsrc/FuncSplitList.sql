USE W0115559


CREATE PROCEDURE [dbo].[sp_GetDepartments]
    @YearList VARCHAR(MAX),
     @SemesterList VARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON

    SELECT DISTINCT 
        CS.subjectCode AS departments
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
                    dbo.SplitList(@SemesterList, ',') AS X
            );

END

GO