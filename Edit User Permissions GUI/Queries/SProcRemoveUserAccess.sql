/*
	This procedures takes a list of UserIDs of Instructors, and removes a row supplied the UserID of the person losing the permission of the UserID(s)
	they are losing the permission to see.
*/

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME = 'sp_RemoveUserAccessToUser')
DROP PROCEDURE sp_RemoveUserAccessToUser

GO
/* User is the UserID of the person whos getting new permissions */
/* InstructorIDList is a list of all IDs for the instructors you are give the User permission to view */
CREATE PROCEDURE sp_RemoveUserAccessToUser
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

--SELECT * FROM dbo.UserPermissions

--EXEC sp_RemoveUserAccessToUser '1', '3,5,6'