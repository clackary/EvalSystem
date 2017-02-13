/* This Query is incomplete
This Query needs to also make sure that nothing in the left box appears in
the right selection box. Everything in the right box the user already has
access to, and we don't want to duplicate any values for any reason.
Also, as described below, need to know which role # is tenure so that
we don't have permission period to look at those roles. No one but the
dean should be able to see tenure.
*/

--SELECT *
--FROM dbo.Users

--SELECT Id, FirstName, LastName
--FROM dbo.UserRoles
--WHERE Id = 23888

--SELECT *
--FROM UserRoles

SELECT FirstName, LastName, userID, roleID
FROM dbo.Users u JOIN dbo.UserRoles ur
ON ur.userID = u.Id
WHERE roleID > 3 --This needs to pick out all people that are not Tenure and are instructors
-- And it needs to select only the people that are not in the right hand table already

--SELECT *
--FROM UserPermissions