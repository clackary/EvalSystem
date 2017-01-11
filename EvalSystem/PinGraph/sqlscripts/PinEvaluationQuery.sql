USE EvalDatabase2

DECLARE @userId int

-- Brad user ID
SET @userId = 887969243
-- Department Chair User ID
--SET @userId = 889180335

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

WHERE t.typeID = 5 AND cs.subjectCode = 'CS'
	
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