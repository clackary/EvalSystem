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

class CollegesController
{
	public static function getCollegeByCode($passedInCode){
		$code = $passedInCode['code'];
		
		$db = DatabaseConnection::getInstance();
		
		$queryGetCollegeByCode = '
			SELECT *
			FROM Colleges
			WHERE code = :code
		';
		
		$stmtGetCollegeByCode = $db->prepare($queryGetCollegeByCode);
		$stmtGetCollegeByCode->bindValue(':code', $code);
		$stmtGetCollegeByCode->execute();		
		
		$college = $stmtGetCollegeByCode->fetch(PDO::FETCH_ASSOC);
		
		if(is_null($college) || $college == false){
			http_response_code(StatusCodes::NOT_FOUND);
            echo 'That college does not exist';
            die();
		}
		
		http_response_code(StatusCodes::OK);
		
		if(!is_array($college)){
			$college = array();
		}
		
		return array($college);
	}
	
    public static function getAllColleges(){
        // you can get all users via POST http method with URL like:
        // https://icarus.cs.weber.edu/~nb06777/CS4450/v1/college/
        // OR
        // https://icarus.cs.weber.edu/~nb06777/CS4450/v1/college
		
		// This API can also call this function internally to get a user by using:
        // CollegeController::getAllColleges();

        $db = DatabaseConnection::getInstance();
		
        $queryGetAllColleges = '
                    SELECT * FROM Colleges
                ';

        $stmtGetAllColleges = $db->prepare($queryGetAllColleges);

        if(!$stmtGetAllColleges->execute()) {
            http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
            die();
        }
		
		
		$allColleges = $stmtGetAllColleges->fetchAll(PDO::FETCH_ASSOC);
		
		
		if(is_null($allColleges) || $allColleges == false){
			http_response_code(StatusCodes::NOT_FOUND);
            echo 'That college does not exist';
            die();
		}
		
        http_response_code(StatusCodes::OK);
        return $allColleges;
    }
}