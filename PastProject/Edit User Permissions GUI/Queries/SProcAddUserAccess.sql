/*
	This procedures takes a list of UserIDs of Instructors, and Inserts them into the UserPermissions table for the Selected User.
	Example: Selected User: Ted Cowan
			 Ted Cowan needs to see Brad Peterson(ID:#######) and Yong Zhang(ID:#######)
			 INSERT these two ID's so that he can view them under the permissions table
*/

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME = 'sp_AddUserAccessToUser')
DROP PROCEDURE sp_AddUserAccessToUser

GO

CREATE PROCEDURE sp_AddUserAccessToUser
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


--EXEC sp_AddUserAccessToUser '1', '3,5,6'

--SELECT * FROM dbo.UserPermissions

--DELETE FROM dbo.UserPermissions WHERE UserID = 1