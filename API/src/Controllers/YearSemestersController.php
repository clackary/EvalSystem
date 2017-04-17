<?php

namespace CS4450\Controllers;

use PDO;
use CS4450\Http\StatusCodes;
use CS4450\Utilities\DatabaseConnection;

class YearSemestersController
{
	public static function getAllYearsAndSemesters(){
		$db = DatabaseConnection::getInstance();
		
		// will return rows like:
		// 2017, 3
		// 2017, 2
		// 2017, 1
		// 2016, 3
		// 2016, 2
		// ...
		$queryGetAllYearsAndSemesters = '
			SELECT distinct year as Year, semester as SemesterID, Name as SemesterName
			FROM CourseSections cs
			JOIN Semester s
			ON cs.semester = s.SemesterID
			ORDER BY year desc, semester desc
		';
		
		$stmtGetAllYearsAndSemesters = $db->prepare($queryGetAllYearsAndSemesters);
		if(!$stmtGetAllYearsAndSemesters->execute()){
			http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
			die();
		}
		
		http_response_code(StatusCodes::OK);
		
		return $stmtGetAllYearsAndSemesters->fetchAll(PDO::FETCH_ASSOC);
	}
}
