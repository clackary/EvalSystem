/* This query should operate as intended. Select all Users
that are already on the list (PermissionToUserID) for the passed in User
(The User that has the permissions
*/

-- Shows a list of the people the User can see
DECLARE @cUser INT;

-- Test
SET @cUser = 887969243; --This is the ID of the current User

-- The information of all people the current user can see
SELECT FirstName, LastName, PermissionToUserID
FROM dbo.Users u JOIN dbo.UserPermissions p
ON u.Id = p.UserID
WHERE u.Id = p.PermissionToUserID
	AND u.ID = @cUser