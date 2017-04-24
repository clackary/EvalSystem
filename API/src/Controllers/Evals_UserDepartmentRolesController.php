<?php
namespace CS4450\Controllers;

use PDO;
use CS4450\Http\StatusCodes;
use CS4450\Utilities\DatabaseConnection;

class Evals_UserDepartmentRolesController
{
	public static function getAllUserDepartmentRoles(){
		$db = DatabaseConnection::getInstance();
		
		$queryGetAllUserDepartmentRoles = '
			SELECT 
				eUDR.departmentCode as DepartmentCode,
				dtsc.subjectCode as Subject,
				u.FirstName,
				u.LastName,
				u.Id as UserID,
				r.id as RoleID,
				r.name as RoleName
			FROM Evals_UserDepartmentRoles eUDR
			JOIN Users u
			ON eUDR.userID = u.Id
			JOIN Roles r
			ON eUDR.roleID = r.id
			JOIN DepartmentsToSubjectCodes dtsc
			ON dtsc.departmentCode = eUDR.departmentCode
			ORDER BY u.LastName
		';
		
		$stmtGetAllUserDepartmentRoles = $db->prepare($queryGetAllUserDepartmentRoles);
		$stmtGetAllUserDepartmentRoles->execute();
		
		$returnData = $stmtGetAllUserDepartmentRoles->fetchAll(PDO::FETCH_ASSOC);
		
		return $returnData;
	}
	
	public static function insertIntoEvals_UserDepartmentRoles(){
		/*
		
		this function can be hit by sending a POST request to 
		https://icarus.cs.weber.edu/~nb06777/CS4450/v1/Evals_UserDepartmentRoles
		with a body like:
		{
			"userID":887969243,
			"roleID":3,
			"departmentCode":8001
		}
		
		where 
		887969243 is brad peterson's userID, 
		3 is instructor, 
		8001 is Computer Science
		
		*/
        $data = (object)json_decode(file_get_contents('php://input'));
        $db = DatabaseConnection::getInstance();
		
		if(
			!isset($data->userID) || empty($data->userID) 
			|| !isset($data->departmentCode) || empty($data->departmentCode) 
			|| !isset($data->roleID) || empty($data->roleID) 
		){
			http_response_code(StatusCodes::BAD_REQUEST);
			die();
		}

		$querySeeIfUserDepartmentRoleAlreadyExists = '
			SELECT *
			FROM Evals_UserDepartmentRoles
			WHERE userID = :userID 
			AND departmentCode = :departmentCode
			AND roleID = :roleID
		';
		
		$stmtSeeIfUserDepartmentRoleAlreadyExists = $db->prepare($querySeeIfUserDepartmentRoleAlreadyExists);
		$stmtSeeIfUserDepartmentRoleAlreadyExists->bindValue(':userID', $data->userID);
		$stmtSeeIfUserDepartmentRoleAlreadyExists->bindValue(':departmentCode', $data->departmentCode);
		$stmtSeeIfUserDepartmentRoleAlreadyExists->bindValue(':roleID', $data->roleID);
		$stmtSeeIfUserDepartmentRoleAlreadyExists->execute();
		
		$returnData = $stmtSeeIfUserDepartmentRoleAlreadyExists->fetchAll(PDO::FETCH_ASSOC);
		
		if(!empty($returnData)){
			http_response_code(StatusCodes::BAD_REQUEST);
			die();
		}
		
		$queryInsert = '
			INSERT INTO Evals_UserDepartmentRoles(userID, departmentCode, roleID)
			VALUES (:userID, :departmentCode, :roleID)
		';
		
		$stmtInsert = $db->prepare($queryInsert);
		$stmtInsert->bindValue(':userID', $data->userID);
		$stmtInsert->bindValue(':departmentCode', $data->departmentCode);
		$stmtInsert->bindValue(':roleID', $data->roleID);
		if(!$stmtInsert->execute()){
			http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
			die();
		}
		
		http_response_code(StatusCodes::CREATED);
		return true;
    }
}








