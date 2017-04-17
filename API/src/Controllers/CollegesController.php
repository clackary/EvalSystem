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
	/*
	public function getClass($args)
    {
        //if paramaters were passed in the search
        if(isset($args['BY']))
        {
            $pos = strpos($args['BY'], '=');
            if ($pos !== false)
            {
                $column = strtolower(substr($args['BY'],0, $pos));
                $row = strtolower(substr($args['BY'],$pos+1));
            }
            if($column != "semester" &&
                $column != "year"&&
                $column != "school")
            {
                http_response_code(StatusCodes::BAD_REQUEST);
                die("search not allowed!");
            }
            return $this->getDBClassBy($args['USER'],$column, strip_tags($row));
        }
        return $this->getDBClass($args['USER']);
    }
	*/
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

    public static function getUserByID($userID = null){
        // the URL should be something like
        // https://icarus.cs.weber.edu/~nb06777/CS4450/v1/user/1
        // with a GET http request

        // This API can also call this function internally to get a user by using:
        // UserController::getUserByID($id);

        $db = DatabaseConnection::getInstance();

        // get the userID
        if (!empty($userID) && is_array($userID)) {
            $userID = $userID['id'];
        } else if ($userID == null) {
            $data = (object)json_decode(file_get_contents('php://input'));
            if(!empty($data->id)){
                $userID = $data->id;
            }
        }

        // make sure we have a proper integer
        if (!ctype_digit($userID)) {
            http_response_code(StatusCodes::BAD_REQUEST);
            die();
        }

        $queryGetUser = 'SELECT * FROM TabSiteUser WHERE UserID = :userID';

        $stmtGetUser = $db->prepare($queryGetUser);
        $stmtGetUser->bindValue(':userID', $userID);
        if(!$stmtGetUser->execute()) {
            http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
            die();
        }

        if($stmtGetUser->rowCount() != 1){
            http_response_code(StatusCodes::NOT_FOUND);
            echo 'That user does not exist';
            die();
        }

        $returned_data = $stmtGetUser->fetch(PDO::FETCH_ASSOC);
        http_response_code(StatusCodes::OK);
        return new User(
            $returned_data['UserID'],
            $returned_data['UserFirstName'],
            $returned_data['UserLastName'],
            $returned_data['UserEmail'],
            $returned_data['UserUsername'],
            $returned_data['UserPassword'],
            $returned_data['UserPrivilegeLevel']
        );
    }
}