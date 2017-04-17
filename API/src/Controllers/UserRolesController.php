<?php

namespace CS4450\Controllers;

use PDO;
use CS4450\Http\StatusCodes;
use CS4450\Utilities\DatabaseConnection;

class UserRolesController
{
	public static function getUserRoles(){
		$db = DatabaseConnection::getInstance();

/*
 * Join Users, UserRoles, and Roles
 * SELECT FirstName, LastName, Role
 */
 /*
 Rewritten query using the Evals_UserDepartmentRoles
 * SELECT 
*	udr.userID   as InstructorID,
*	d.code            as DepartmentCode,
*	d.collegeCode     as CollegeCode,
*	d.name            as DepartmentName,
*	u.FirstName       as InstructorFirstName,
* 	u.LastName        as InstructorLastName,
* 	r.name            as RoleName
* FROM Evals_UserDepartmentRoles udr
* JOIN Users u
* ON udr.userID = u.Id
* JOIN Roles r
* on udr.roleID = r.id
* JOIN Departments d
* on udr.departmentCode = d.code
 */
		$queryGetAllUserRoles = '
			SELECT 
				id.id             as InstructorDepartmentsID,
				id.instructorID   as InstructorID,
				d.code            as DepartmentCode,
				d.collegeCode     as CollegeCode,
				d.name            as DepartmentName,
				u.FirstName       as InstructorFirstName,
				u.LastName        as InstructorLastName,
				r.name            as RoleName
			FROM Users u
			JOIN UserRoles ur
			ON u.Id = ur.userID
			JOIN Roles r
			ON ur.roleID = r.id
			JOIN InstructorDepartments id
			ON u.Id = id.InstructorID
			JOIN Departments d
			ON id.departmentCode = d.code;
		';

		$stmtGetAllUserRoles = $db->prepare($queryGetAllUserRoles);
		$stmtGetAllUserRoles->execute();

		return $stmtGetAllUserRoles->fetchAll(PDO::FETCH_ASSOC);
	}
}
