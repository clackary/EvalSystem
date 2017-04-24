<?php
namespace CS4450\Controllers;

use PDO;
use CS4450\Http\StatusCodes;
use CS4450\Utilities\DatabaseConnection;

class CategoriesController
{
	public static function getAllCategories(){
		$db = DatabaseConnection::getInstance();		
		
		$queryGetAllCategories = '
			SELECT * 
			FROM Categories
		';
		
		$stmtGetAllCategories = $db->prepare($queryGetAllCategories);
		$stmtGetAllCategories->execute();
		
		return $stmtGetAllCategories->fetchAll(PDO::FETCH_ASSOC);
	}
	
	public static function getCategoryByID($args){
		$db = DatabaseConnection::getInstance();
		
		$id = $args['id'];
		
		$queryGetCategoryByID = '
			SELECT * 
			FROM Categories
			WHERE ID = :ID;
		';
		
		$stmtGetCategoryByID = $db->prepare($queryGetCategoryByID);
		$stmtGetCategoryByID->bindValue(':ID', $id);
		$stmtGetCategoryByID->execute();
		
		return $stmtGetCategoryByID->fetch(PDO::FETCH_ASSOC);
	}
}