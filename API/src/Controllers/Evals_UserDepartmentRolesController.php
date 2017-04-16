<?php
namespace CS4450\Controllers;

use PDO;
use CS4450\Http\StatusCodes;
use CS4450\Utilities\DatabaseConnection;

class Evals_UserDepartmentRolesController
{
	public static function insertIntoEvals_UserDepartmentRoles()
    {
        $data = (object)json_decode(file_get_contents('php://input'));

        $db = DatabaseConnection::getInstance();

        echo 'trying to enter a new Evals_UserDepartmentRoles row';
		//var_dump($data);
		var_dump($_POST);
		die();

		return 1;
		
        if(empty($composer) || !ctype_alpha(str_replace(' ', '', $composer))){
            http_response_code(StatusCodes::BAD_REQUEST);
            echo 'Name not formatted correctly';
            die();
        }

        $composer = trim($composer);

        // see if that composer already exists
        $queryCheckIfComposerExists = 'SELECT * FROM TabSiteComposer WHERE ComposerName = :name';
        $stmtCheckIfComposerExists = $db->prepare($queryCheckIfComposerExists);
        $stmtCheckIfComposerExists->bindValue(':name', $composer);

        if(!$stmtCheckIfComposerExists->execute()) {
            http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
            die();
        }


        if($stmtCheckIfComposerExists->rowCount() == 0){
            $queryInsertComposer = 'INSERT INTO TabSiteComposer ( ComposerName ) VALUES ( :name );';

            $stmtInsertComposer = $db->prepare($queryInsertComposer);
            $stmtInsertComposer->bindValue(':name', $composer);

            if(!$stmtInsertComposer->execute()){
                http_response_code(StatusCodes::INTERNAL_SERVER_ERROR);
                die();
            }

            $inserted_id = $db->lastInsertId();

            http_response_code(StatusCodes::CREATED);
            return new Composer(
                $inserted_id,
                $composer
            );
        }
        else{
            http_response_code(StatusCodes::OK);
            $return_composer = $stmtCheckIfComposerExists->fetch(PDO::FETCH_ASSOC);
            return new Composer($return_composer['ComposerID'], $return_composer['ComposerName']);
        }
    }
}