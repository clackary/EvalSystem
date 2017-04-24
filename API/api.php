<?php
//error_reporting(0);

use CS4450\Http;
use CS4450\Controllers;

require_once 'config.php';
require_once 'vendor/autoload.php';

$dispatcher = FastRoute\simpleDispatcher(function(FastRoute\RouteCollector $r) use ($baseURI) {

	/*
		// this is an example of how to get data after a ?
		// this was stolen from another student, he only allowed a single attribute after the ?
		// we will need to make it a little more advanced if we need more data attributes

		$uri = $_SERVER['REQUEST_URI'];
        $pos = strpos($uri, '?');
        if ($pos !== false) {
            $uri = substr($uri, $pos+1);
            $args['uri'] = $uri;
			
			// now the next function will have the query string after the ? to parse through
        }
        return (new Eportfolio\Controllers\ClassController)->getClass($args);
	*/

	/*
	// we built this as a test of the database
	// it gets all of Brad Peterson's roles

		SELECT *
		FROM Users u
		JOIN UserRoles ur
		ON u.Id = ur.userID
		join Roles r
		ON ur.roleID = r.id
		WHERE u.ID = 887969243;

	*/


	
	
	$handleGetAllColleges = function(){
        return (new CS4450\Controllers\CollegesController)->getAllColleges();
    };
	$r->addRoute('GET',     $baseURI . '/colleges/',           	$handleGetAllColleges);
	$r->addRoute('GET',     $baseURI . '/colleges',            	$handleGetAllColleges);
	
	$handleGetCollegeByCode = function($args){
		return (new CS4450\Controllers\CollegesController)->getCollegeByCode($args);
	};
	$r->addRoute('GET',     $baseURI . '/colleges/{code:\d+}',   $handleGetCollegeByCode);
	
	//**********************************************************************************
	
	$handleGetRoleByID = function($args){
		return (new CS4450\Controllers\RolesController)->getRoleByID($args);
	};
	$r->addRoute('GET',     $baseURI . '/roles/{id:\d+}',   $handleGetRoleByID);
	
	$handleGetAllRoles = function(){
		return (new CS4450\Controllers\RolesController)->getAllRoles();
	};
	$r->addRoute('GET',     $baseURI . '/roles/',   $handleGetAllRoles);
	$r->addRoute('GET',     $baseURI . '/roles',   $handleGetAllRoles);

	//**********************************************************************************
	
	$handleGetAllCategories = function(){
		return (new CS4450\Controllers\CategoriesController)->getAllCategories();
	};
	$r->addRoute('GET',     $baseURI . '/categories',   $handleGetAllCategories);
	$r->addRoute('GET',     $baseURI . '/categories/',   $handleGetAllCategories);
	
	$handleGetCategoryByID = function($args){
		return (new CS4450\Controllers\CategoriesController)->getCategoryByID($args);
	};
	$r->addRoute('GET',     $baseURI . '/categories/{id:\d+}',   $handleGetCategoryByID);

	//**********************************************************************************
	
	$handleGetUserRoles = function(){
		return (new CS4450\Controllers\UserRolesController)->getUserRoles();
	};
	$r->addRoute('GET',     $baseURI . '/userroles',   $handleGetUserRoles);
	$r->addRoute('GET',     $baseURI . '/userroles/',   $handleGetUserRoles);

	//**********************************************************************************
	
	$handleGetAllInstructorDepartments = function(){
		return (new CS4450\Controllers\InstructorDepartmentsController)->getAllInstructorDepartments();
	};
	$r->addRoute('GET',     $baseURI . '/instructorDepartments',   $handleGetAllInstructorDepartments);
	$r->addRoute('GET',     $baseURI . '/instructorDepartments/',   $handleGetAllInstructorDepartments);
	
	$handleGetInstructorDepartmentsByInstructorID = function($args){
		return (new CS4450\Controllers\InstructorDepartmentsController)->getInstructorDepartmentsByInstructorID($args);
	};
	$r->addRoute('GET',     $baseURI . '/instructorDepartments/instructor/{instructorID:\d+}',   $handleGetInstructorDepartmentsByInstructorID);
	
	$handleGetInstructorDepartmentsByIDepartmentCode = function($args){
		return (new CS4450\Controllers\InstructorDepartmentsController)->getInstructorDepartmentsByDepartmentCode($args);
	};
	$r->addRoute('GET',     $baseURI . '/instructorDepartments/department/{departmentCode:\d+}',   $handleGetInstructorDepartmentsByIDepartmentCode);

	//**********************************************************************************
	
	$handlePostEvals_UserDepartmentRoles = function(){
        return (new CS4450\Controllers\Evals_UserDepartmentRolesController)->insertIntoEvals_UserDepartmentRoles();
    };
	
	$handlGetAllEvals_UserDepartmentRoles = function(){
		return (new CS4450\Controllers\Evals_UserDepartmentRolesController)->getAllUserDepartmentRoles();
	};
	
	$r->addRoute('POST',    $baseURI . '/Evals_UserDepartmentRoles/',           $handlePostEvals_UserDepartmentRoles);
	$r->addRoute('POST',    $baseURI . '/Evals_UserDepartmentRoles',           $handlePostEvals_UserDepartmentRoles);
	
	$r->addRoute('GET',    $baseURI . '/Evals_UserDepartmentRoles/',           $handlGetAllEvals_UserDepartmentRoles);
	$r->addRoute('GET',    $baseURI . '/Evals_UserDepartmentRoles',           $handlGetAllEvals_UserDepartmentRoles);
	

	//**********************************************************************************
	
	$handleGetAllDepartments = function($args){
		return (new CS4450\Controllers\DeptController)->getAllDepts($args);
	};
	$r->addRoute('GET',     $baseURI . '/departments',   $handleGetAllDepartments);
	$r->addRoute('GET',     $baseURI . '/departments/',   $handleGetAllDepartments);
	
	//*********************************************************************************
	$handleGetAllSemesters = function($args){
		return (new CS4450\Controllers\SemesterController)->getAllDepts($args);
	};
	$r->addRoute('GET',     $baseURI . '/semesters',   $handleGetAllSemesters);
	$r->addRoute('GET',     $baseURI . '/semesters/',   $handleGetAllSemesters);
	
	//*********************************************************************************
	
	// these are the functions needed to get the old pingraphgui.html page
	// working from the previous group
	$handleGetSemesters = function(){
		return (new CS4450\Controllers\OldAPIController)->getSemesters();
	};
	$r->addRoute('POST',     $baseURI . '/getSemesters',   $handleGetSemesters);
	$r->addRoute('POST',     $baseURI . '/getSemesters/',   $handleGetSemesters);
	
	$handleGetDepartments = function(){
		return (new CS4450\Controllers\OldAPIController)->getDepartments();
	};
	$r->addRoute('POST',     $baseURI . '/getDepartments',   $handleGetDepartments);
	$r->addRoute('POST',     $baseURI . '/getDepartments/',   $handleGetDepartments);
	
	$handleGetCourses = function(){
		return (new CS4450\Controllers\OldAPIController)->getCourses();
	};
	$r->addRoute('POST',     $baseURI . '/getCourses',   $handleGetCourses);
	$r->addRoute('POST',     $baseURI . '/getCourses/',   $handleGetCourses);
	
	//*********************************************************************************
	
	$handleGetYearSemesters = function(){
		return (new CS4450\Controllers\YearSemestersController)->getAllYearsAndSemesters();
	};
	$r->addRoute('GET',     $baseURI . '/yearSemesters',   $handleGetYearSemesters);
	$r->addRoute('GET',     $baseURI . '/yearSemesters/',   $handleGetYearSemesters);
	
	//*********************************************************************************
	
	$handleGetAllCourseNumbersBasedOnDepartmentList = function(){
		return (new CS4450\Controllers\CourseNumbersController)->getAllCoursesBasedOnDepartmentList();
	};
	$r->addRoute('POST',     $baseURI . '/courseNumbers',   $handleGetAllCourseNumbersBasedOnDepartmentList);
	$r->addRoute('POST',     $baseURI . '/courseNumbers/',   $handleGetAllCourseNumbersBasedOnDepartmentList);
	
	//*********************************************************************************
	
	$handleGetPingraphData = function(){
		return (new CS4450\Controllers\PingraphDataController)->getPingraphData();
	};
	$r->addRoute('POST',     $baseURI . '/pingraphData',   $handleGetPingraphData);
	$r->addRoute('POST',     $baseURI . '/pingraphData/',   $handleGetPingraphData);
	
	//*********************************************************************************
	
	$handleBoxAndWhiskerData = function(){
		return (new CS4450\Controllers\BoxAndWhiskerController)->getBoxAndWhiskerData();
	};
	$r->addRoute('POST',     $baseURI . '/boxAndWhiskerData',   $handleBoxAndWhiskerData);
	$r->addRoute('POST',     $baseURI . '/boxAndWhiskerData/',   $handleBoxAndWhiskerData);
	
	//*********************************************************************************
	$handleGettingAllInstructorsBasedOnDepartments = function(){
		return (new CS4450\Controllers\InstructorsController)->getAllInstructorsBasedOnDepartments();
	};
	$r->addRoute('POST',     $baseURI . '/instructors',   $handleGettingAllInstructorsBasedOnDepartments);
	$r->addRoute('POST',     $baseURI . '/instructors/',   $handleGettingAllInstructorsBasedOnDepartments);
	
	//*********************************************************************************
	$handleGetSemestersFromYears = function(){
		return (new CS4450\Controllers\YearSemestersController)->getAllYearsAndSemesters();
	};
	$r->addRoute('POST',     $baseURI . '/yearSemesters',   $handleGetSemestersFromYears);
	$r->addRoute('POST',     $baseURI . '/yearSemesters/',   $handleGetSemestersFromYears);

});

$method = $_SERVER['REQUEST_METHOD'];
$uri = $_SERVER['REQUEST_URI'];

$pos = strpos($uri, '?');
if ($pos !== false) {
    $uri = substr($uri, 0, $pos);
}

$uri = rawurldecode($uri);

$routeInfo = $dispatcher->dispatch($method, $uri);

switch($routeInfo[0]) {
    case FastRoute\Dispatcher::NOT_FOUND:
        http_response_code(CS4450\Http\StatusCodes::NOT_FOUND);
        //Handle 404
        break;
    case FastRoute\Dispatcher::METHOD_NOT_ALLOWED:

        http_response_code(CS4450\Http\StatusCodes::METHOD_NOT_ALLOWED);
        //Handle 403
        break;
    case FastRoute\Dispatcher::FOUND:

        $handler  = $routeInfo[1];
        $vars = $routeInfo[2];

        $response = $handler($vars);
		header('Access-Control-Allow-Origin:*');
        echo json_encode($response);
        break;
    default:
        break;
}
