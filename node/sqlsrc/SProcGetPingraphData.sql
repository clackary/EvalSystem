-- Create CreateJson Stored Procedure
USE W0115559
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
	, cs.subjectCode + cs.courseNumber AS [course]
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
	, cs.bannerCRN
	, ta.LikertMin
	, ta.LikertMax
FROM SectionsTaught st
	JOIN CourseSections cs ON cs.ID = st.sectionID
	JOIN Semester s ON cs.semester = s.SemesterID
	
	-- JOIN to get instructor Information
	JOIN Users u ON st.instructorID = u.Id
	JOIN UserRoles ur ON u.Id = ur.userID
	LEFT JOIN UserPermissions up ON ur.id = up.UserRoleID

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

WHERE t.typeID = 5 
	AND cs.subjectCode + cs.courseNumber IN (SELECT * FROM dbo.SplitList(@CourseList, ','))
	
GROUP BY
	t.ID
	, CASE WHEN up.UserID IS NOT NULL OR u.Id = @userId THEN u.FirstName + ' ' + u.LastName ELSE '' END
	, cs.subjectCode + cs.courseNumber
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
	, cs.bannerCRN
	, ta.LikertMin
	, ta.LikertMax

ORDER BY 8

END



EXEC sp_GetPingraphData 'CS1010,CS1030,CS1400,CS1410,CS2130,CS2350,CS2400', 887969243