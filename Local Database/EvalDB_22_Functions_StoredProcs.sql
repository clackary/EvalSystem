
USE [CS4450Spring2017]
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
ALTER DATABASE [CS4450Spring2017] SET  READ_WRITE 
GO
