<?php
/**
 * Created by PhpStorm.
 * User: theds
 * Date: 12/6/2016
 * Time: 10:32 AM
 */

namespace CS4450\Controllers;

use PDO;
use CS4450\Http\StatusCodes;
use CS4450\Utilities\DatabaseConnection;

class InstructorDepartmentsController
{
	
	public static function getAllInstructorDepartments(){
		$db = DatabaseConnection::getInstance();
		
		
		$queryGetAllInstructorDepartments = '
			SELECT DISTINCT
				id.DepartmentCode as DepartmentCode, 
				id.id             as InstructorDepartmentsID, 
				id.instructorID   as InstructorID, 
				d.code            as DepartmentCode, 
				d.collegeCode     as CollegeCode, 
				d.name            as DepartmentName,
				u.FirstName       as InstructorFirstName,
				u.LastName        as InstructorLastName
			FROM InstructorDepartments id
			JOIN Departments d
			ON id.departmentCode = d.code
			JOIN Users u
			ON u.Id = id.InstructorID;

		';
		
		$stmtGetAllInstructorDepartments = $db->prepare($queryGetAllInstructorDepartments);
		$stmtGetAllInstructorDepartments->execute();
		
		$returnArray = $stmtGetAllInstructorDepartments->fetchAll(PDO::FETCH_ASSOC);
		
		if(empty($returnArray)){
			http_response_code(StatusCodes::NOT_FOUND);
			die();
		}
		
		return $returnArray;
	}
	
	public static function getInstructorDepartmentsByInstructorID($args){
		// Note: Brad Peterson = 887969243
		if(is_array($args) && isset($args['instructorID']) && ctype_digit($args['instructorID'])){
			$instructorID = $args['instructorID'];
		}
		else{
			http_response_code(StatusCodes::BAD_REQUEST);
			die();
		}
		
		
		$db = databaseConnection::getInstance();
		
		$queryGetInstructorDepartmentsByInstructorID = '
			SELECT 
				id.DepartmentCode as DepartmentCode, 
				id.id             as InstructorDepartmentsID, 
				id.instructorID   as InstructorID, 
				d.code            as DepartmentCode, 
				d.collegeCode     as CollegeCode, 
				d.name            as DepartmentName,
				u.FirstName       as InstructorFirstName,
				u.LastName        as InstructorLastName
			FROM InstructorDepartments id
			JOIN Departments d
			ON id.departmentCode = d.code
			JOIN Users u
			ON u.Id = id.InstructorID
			WHERE InstructorID = :instructorID;
		';
		
		$stmtGetInstructorDepartmentsByInstructorID = $db->prepare($queryGetInstructorDepartmentsByInstructorID);
		$stmtGetInstructorDepartmentsByInstructorID->bindValue(':instructorID', $instructorID);
		$stmtGetInstructorDepartmentsByInstructorID->execute();
		
		$returnArray = $stmtGetInstructorDepartmentsByInstructorID->fetchAll(PDO::FETCH_ASSOC);
		
		if(empty($returnArray)){
			http_response_code(StatusCodes::NOT_FOUND);
			die();
		}
		
		return $returnArray;
	}
	
	public static function getInstructorDepartmentsByDepartmentCode($args){
		// Note: computer science = 8001
		// Note: mathematics      = 6003
		if(is_array($args) && isset($args['departmentCode']) && ctype_digit($args['departmentCode'])){
			$departmentCode = $args['departmentCode'];
		}
		else{
			http_response_code(StatusCodes::BAD_REQUEST);
			die();
		}
		
		
		$db = databaseConnection::getInstance();
		
		$queryGetInstructorDepartmentsByDepartmentCode = '
			SELECT 
				id.DepartmentCode as DepartmentCode, 
				id.id             as InstructorDepartmentsID, 
				id.instructorID   as InstructorID, 
				d.code            as DepartmentCode, 
				d.collegeCode     as CollegeCode, 
				d.name            as DepartmentName,
				u.FirstName       as InstructorFirstName,
				u.LastName        as InstructorLastName
			FROM InstructorDepartments id
			JOIN Departments d
			ON id.departmentCode = d.code
			JOIN Users u
			ON u.Id = id.InstructorID
			WHERE DepartmentCode = :departmentCode;
		';
		
		$stmtGetInstructorDepartmentsByDepartmentCode = $db->prepare($queryGetInstructorDepartmentsByDepartmentCode);
		$stmtGetInstructorDepartmentsByDepartmentCode->bindValue(':departmentCode', $departmentCode);
		$stmtGetInstructorDepartmentsByDepartmentCode->execute();
		
		$returnArray = $stmtGetInstructorDepartmentsByDepartmentCode->fetchAll(PDO::FETCH_ASSOC);
		
		if(empty($returnArray)){
			http_response_code(StatusCodes::NOT_FOUND);
			die();
		}
		
		return $returnArray;
	}
	
}