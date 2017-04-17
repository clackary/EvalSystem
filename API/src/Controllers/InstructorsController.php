<?php
namespace CS4450\Controllers;

use PDO;
use CS4450\Http\StatusCodes;
use CS4450\Utilities\DatabaseConnection;


class InstructorsController
{
	public static function getAllInstructorsBasedOnDepartments(){
		$db = DatabaseConnection::getInstance();
		$data = (object) json_decode(file_get_contents('php://input'));
		
		$departmentsSelected = $data->departments;
		
		$userID = $data->userID;
		
		$queryGetUsersRoles = '
			SELECT roleID
			FROM Evals_UserDepartmentRoles
			WHERE userID = :userID
		';
		
		$stmtGetUsersRoles = $db->prepare($queryGetUsersRoles);
		$stmtGetUsersRoles->bindValue(':userID', $userID);
		$stmtGetUsersRoles->execute();
		
		$usersRoles = $stmtGetUsersRoles->fetchAll(PDO::FETCH_ASSOC);
		
		$instructorsToReturn = array();
		
		for($i=0; $i<count($departmentsSelected); $i++){
			$querySeeIfThisUserIDIsRelatedToThisDepartment = '
				SELECT count(*) as Count
				FROM Evals_UserDepartmentRoles
				WHERE userID = :userID
				AND departmentCode = :departmentCode
			';
			
			$stmtSeeIfThisUserIDIsRelatedToThisDepartment = $db->prepare($querySeeIfThisUserIDIsRelatedToThisDepartment);
			
			$stmtSeeIfThisUserIDIsRelatedToThisDepartment->bindValue(':userID', $userID);
			$stmtSeeIfThisUserIDIsRelatedToThisDepartment->bindValue(':departmentCode', $departmentsSelected[$i]->DepartmentCode);
			if(!$stmtSeeIfThisUserIDIsRelatedToThisDepartment->execute()){
				http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
				die();
			}
			
			/*
			// use this version if we want to continue the code to enforce permissions and such
			if($stmtSeeIfThisUserIDIsRelatedToThisDepartment->fetch(PDO::FETCH_ASSOC)['Count'] != 0){
				$queryGetAllUsersInThisDepartment = '
					SELECT DISTINCT userID, departmentCode, roleID, FirstName, LastName 
					FROM Evals_UserDepartmentRoles udr
					JOIN Users u
					ON udr.userID = u.Id
					WHERE departmentCode = :departmentCode
				';
				
				$stmtGetAllUsersInThisDepartment = $db->prepare($queryGetAllUsersInThisDepartment);
				$stmtGetAllUsersInThisDepartment->bindValue(':departmentCode', $departmentsSelected[$i]->DepartmentCode);
				if(!$stmtGetAllUsersInThisDepartment->execute()){
					http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
					die();
				}
				
				while($instructorInfo = $stmtGetAllUsersInThisDepartment->fetch(PDO::FETCH_ASSOC)){
					array_push($instructorsToReturn, $instructorInfo);
				}
			}
			*/
			
			// this code is to just return all users who are related to the logged in instructor
			if($stmtSeeIfThisUserIDIsRelatedToThisDepartment->fetch(PDO::FETCH_ASSOC)['Count'] != 0){
				$queryGetAllUsersInThisDepartment = '
					SELECT DISTINCT userID, departmentCode, FirstName, LastName 
					FROM Evals_UserDepartmentRoles udr
					JOIN Users u
					ON udr.userID = u.Id
					WHERE departmentCode = :departmentCode
				';
				
				$stmtGetAllUsersInThisDepartment = $db->prepare($queryGetAllUsersInThisDepartment);
				$stmtGetAllUsersInThisDepartment->bindValue(':departmentCode', $departmentsSelected[$i]->DepartmentCode);
				if(!$stmtGetAllUsersInThisDepartment->execute()){
					http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
					die();
				}
				
				while($instructorInfo = $stmtGetAllUsersInThisDepartment->fetch(PDO::FETCH_ASSOC)){
					array_push($instructorsToReturn, $instructorInfo);
				}
			}
		}
		

		
		
		/*
		$stmtGetAllDepts = $db->prepare($queryGetAllDepts);
		$stmtGetAllDepts->execute();
		
		return $stmtGetAllDepts->fetchAll(PDO::FETCH_ASSOC);
		*/
		return $instructorsToReturn;
	}
}