<?php
namespace CS4450\Controllers;

use PDO;
use CS4450\Http\StatusCodes;
use CS4450\Utilities\DatabaseConnection;

class CourseNumbersController
{
	public static function getAllCoursesBasedOnDepartmentList(){
		$db = DatabaseConnection::getInstance();
		$data = (object)json_decode(file_get_contents('php://input'));
		
		$departments = $data->departments;
		
		if(empty($departments)){
			http_response_code(StatusCodes::BAD_REQUEST);
            die();
		}
		
		
		$query = '
			SELECT DISTINCT cs.courseNumber as CourseNumber, DtoS.subjectCode Subject
			FROM DepartmentsToSubjectCodes DtoS
			JOIN CourseSections cs
			on DtoS.subjectCode = cs.subjectCode
			JOIN Departments d
			on DtoS.departmentCode = d.code
			WHERE 
			DtoS.departmentCode LIKE :dept0
		';
		
		for($i=1; $i<count($departments); $i++){
			$query .= ' 
			OR DtoS.departmentCode LIKE :dept' . $i;
		}
		
		$query .= '
		ORDER BY Subject ASC, CourseNumber ASC';
		
		$stmt = $db->prepare($query);
		for($i=0; $i<count($departments); $i++){
			$stmt->bindValue(':dept' . $i, $departments[$i]->DepartmentCode);
		}
		$stmt->execute();
		
		$returnData = $stmt->fetchAll(PDO::FETCH_ASSOC);
		
		for($i=0; $i<count($returnData); $i++){
			$returnData[$i]["Index"] = 1000000 + $i;
		}

		return $returnData;
	}
}
