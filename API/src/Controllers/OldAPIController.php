<?php
namespace CS4450\Controllers;

use PDO;
use CS4450\Http\StatusCodes;
use CS4450\Utilities\DatabaseConnection;

class OldAPIController
{
	
	public static function getPingraphData(){
		$db = databaseConnection::getInstance();
		$data = (object)json_decode(file_get_contents('php://input'));
		
		$coursesArray = $data->courses;
		$courses = '';
		
		for($i=0; $i<count($coursesArray); $i++){
			if($i < count($coursesArray) - 1){
				$courses .= $coursesArray[$i] . ',';	
			}
			else{
				$courses .= $coursesArray[$i];
			}
		}
		
		$queryGetPingraphData = '
			DECLARE @courses varchar(max);
			set @courses = :courses;
			
			EXEC sp_GetPingraphData @courses, 887969243;
		';
		
		$stmtGetPingraphData = $db->prepare($queryGetPingraphData);
		$stmtGetPingraphData->bindValue(':courses', $courses);
		$stmtGetPingraphData->execute();
		
		return $stmtGetPingraphData->fetchAll(PDO::FETCH_ASSOC);
	}
	
	public static function getSemesters(){
		$db = databaseConnection::getInstance();
		$data = (object)json_decode(file_get_contents('php://input'));
		$yearList = $data->yearList;
		
		$query = '
			DECLARE @yearList varchar(max);
			SET @yearList = :yearList;
			
			EXEC sp_GetSemesters @yearList;
		';
		
		$stmt = $db->prepare($query);
		$stmt->bindValue(':yearList', $yearList);
		
		if(!$stmt->execute()){
			echo 'internal server error';
			http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
			die();
		}
		
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}
	
	public static function getDepartments(){
		$db = databaseConnection::getInstance();
		$data = (object)json_decode(file_get_contents('php://input'));
		
		$yearListArray = $data->yearList;
		$yearList = '';
		
		for($i=0; $i<count($yearListArray); $i++){
			if($i < count($yearListArray) - 1){
				$yearList .= $yearListArray[$i] . ',';	
			}
			else{
				$yearList .= $yearListArray[$i];
			}
		}
		
		$semesterListArray = $data->semesterList;
		$semesterList = '';
		
		for($i=0; $i<count($semesterListArray); $i++){
			if($i < count($semesterListArray) - 1){
				$semesterList .= $semesterListArray[$i] . ',';	
			}
			else{
				$semesterList .= $semesterListArray[$i];
			}
		}
		
		$query = '
			DECLARE @yearList varchar(max);
			SET @yearList = :yearList;
			
			DECLARE @semesterList varchar(max);
			set @semesterList = :semesterList;
			
			EXEC sp_GetDepartments @yearList, @semesterList, 887969243;
		';
		
		$stmt = $db->prepare($query);
		$stmt->bindValue(':yearList', $yearList);
		$stmt->bindValue(':semesterList', $semesterList);
		
		if(!$stmt->execute()){
			echo 'internal server error';
			http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
			die();
		}
		
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}
	
	public static function getCourses(){
		$db = databaseConnection::getInstance();
		$data = (object)json_decode(file_get_contents('php://input'));
		
		$yearListArray = $data->yearList;
		$yearList = '';
		
		for($i=0; $i<count($yearListArray); $i++){
			if($i < count($yearListArray) - 1){
				$yearList .= $yearListArray[$i] . ',';	
			}
			else{
				$yearList .= $yearListArray[$i];
			}
		}
		
		$semesterListArray = $data->semesterList;
		$semesterList = '';
		
		for($i=0; $i<count($semesterListArray); $i++){
			if($i < count($semesterListArray) - 1){
				$semesterList .= $semesterListArray[$i] . ',';	
			}
			else{
				$semesterList .= $semesterListArray[$i];
			}
		}
		
		$departmentListArray = $data->departmentList;
		$departmentList = '';
		
		for($i=0; $i<count($departmentListArray); $i++){
			if($i < count($departmentListArray) - 1){
				$departmentList .= $departmentListArray[$i] . ',';	
			}
			else{
				$departmentList .= $departmentListArray[$i];
			}
		}
		
		$query = '
			DECLARE @yearList varchar(max);
			SET @yearList = :yearList;
			
			DECLARE @semesterList varchar(max);
			set @semesterList = :semesterList;
			
			
			DECLARE @departmentList varchar(max);
			set @departmentList = :departmentList;
			
			EXEC sp_GetCourses @yearList, @semesterList, @departmentList;
		';
		
		$stmt = $db->prepare($query);
		$stmt->bindValue(':yearList', $yearList);
		$stmt->bindValue(':semesterList', $semesterList);
		
		$stmt->bindValue(':departmentList', $departmentList);
		
		if(!$stmt->execute()){
			echo 'internal server error';
			http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
			die();
		}
		
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}
	
}