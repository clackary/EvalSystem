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

class RolesController
{
	
	public static function getAllRoles(){
		$db = DatabaseConnection::getInstance();
		
		
		$queryGetAllRoles = '
			SELECT *
			FROM Roles;
		';
		
		$stmtGetAllRoles = $db->prepare($queryGetAllRoles);
		$stmtGetAllRoles->execute();
		
		return $stmtGetAllRoles->fetchAll(PDO::FETCH_ASSOC);
	}
	
	public static function getRoleByID($passedInID){
		$id = '';
		
		if(is_array($passedInID)){
			$id = $passedInID['id'];
		}
		
		
		$db = databaseConnection::getInstance();
		
		$queryGetRoleByID = '
			SELECT *
			FROM Roles
			WHERE id = :id;
		';
		
		$stmtGetRoleByID = $db->prepare($queryGetRoleByID);
		$stmtGetRoleByID->bindValue(':id', $id);
		$stmtGetRoleByID->execute();
		
		$returnArray = $stmtGetRoleByID->fetchAll(PDO::FETCH_ASSOC);
		
		if(empty($returnArray)){
			http_response_code(StatusCodes::NOT_FOUND);
			die();
		}
		
		return $returnArray;
	}
	
}