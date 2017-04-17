<?php
namespace CS4450\Controllers;

use PDO;
use CS4450\Http\StatusCodes;
use CS4450\Utilities\DatabaseConnection;

class BoxAndWhiskerController
{
	public static function getBoxAndWhiskerData(){
		$db = DatabaseConnection::getInstance();
		$data = (object)json_decode(file_get_contents('php://input'));
		
		$courseListArray = $data->courseList;
		$userID = $data->userID;
		
		$courseList = '';
		$numberOfCourses = count($courseListArray);
		
		for($i=0; $i<$numberOfCourses; $i++){
			if($i < $numberOfCourses - 1){
				$courseList .= $courseListArray[$i]->course . ',';
			}
			else{
				$courseList .= $courseListArray[$i]->course;
			}
		}
		
		$queryGetPingraphData = '
			EXEC sp_GetPingraphData :courseList, :userID;
		';
		
		$stmtGetPingraphData = $db->prepare($queryGetPingraphData);
		$stmtGetPingraphData->bindValue(':courseList', $courseList);
		$stmtGetPingraphData->bindValue(':userID', $userID);
		
		if(!$stmtGetPingraphData->execute()){
			http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
            die();
		}
		
		$returnData = $stmtGetPingraphData->fetchAll(PDO::FETCH_ASSOC);
		
		

		return $returnData;
	}
}
