<?php
namespace CS4450\Controllers;

use PDO;
use CS4450\Http\StatusCodes;
use CS4450\Utilities\DatabaseConnection;

class DeptController
{

	public static function getAllSemesters(){
		$db = DatabaseConnection::getInstance();

    //This query should get all departments that have an instructor,
    //leaving out the other "test" department names
		$queryGetAllSemesters = '
    IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE SPECIFIC_NAME = 'sp_GetSemesters')
    DROP PROCEDURE sp_GetSemesters

    GO

    CREATE PROCEDURE sp_GetSemesters
         @YearList VARCHAR(MAX)
    AS
    BEGIN
         SET NOCOUNT ON;

    	SELECT DISTINCT
    		(
    			CASE
    				WHEN CS.semester = 1 THEN 'Spring'
    				WHEN CS.semester = 2 THEN 'Summer'
    				WHEN CS.semester = 3 THEN 'Fall'
    			END
    		) AS semester
    	FROM
    		CourseSections CS
    	WHERE
    		CS.[year] IN
    			(
    				SELECT
    					*
    				FROM
    					dbo.SplitList(@YearList, ',')
    			)

    END
    GO
		';

		$stmtGetAllSemesters = $db->prepare($queryGetAllSemesters);
		$stmtGetAllSemesters->execute();

		return $stmtGetAllSemesters->fetchAll(PDO::FETCH_ASSOC);
	}
}
