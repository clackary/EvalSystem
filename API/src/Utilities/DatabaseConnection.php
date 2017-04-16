<?php
/**
 * Created by PhpStorm.
 * User: iamcaptaincode
 */

namespace CS4450\Utilities;

class DatabaseConnection
{
    private static $instance = null;
    private static $host = Config::HOST;
    private static $dbname = Config::DBNAME;
    private static $user = Config::USER;
    private static $pass = Config::PASS;
	
    private function __construct()
    {

    }

    public static function getInstance()
    {
        if (!static::$instance === null) {
            return static::$instance;
        } else {
            try {
				//"Server=137.190.19.16:10433;Database=myDataBase;User Id=myUsername;Password=myPassword;"
				//$connectionString = "mysql:host=".static::$host.";dbname=".static::$dbname;
                //static::$instance = new \PDO($connectionString, static::$user, static::$pass);
				
                $connectionString = "sqlsrv:Server=".static::$host.";Database=".static::$dbname;
                static::$instance = new \PDO($connectionString, static::$user, static::$pass);
                //static::$instance->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
                return static::$instance;
            } catch (PDOException $e) {
                echo "Unable to connect to the database: " . $e->getMessage();
                die();
            }
        }
    }
}