Most of these end points and function are in use, but not all of them.  Some were made as a test when we were 
learning how to make ajax calls in angular, some of them are from when we decided to go a different route.  
There was no reason to delete them as we might really need the practice or older end points in the future.  
They are completely valid and work with our database still.

If you are looking for some functionality, please search this to find out if what you need is already built.

I will use our current team's existing API location as the example text, but you will end up rebuilding it 
somewhere else as you don't have access to the account on icarus to modify it.

*All functions that call a "SELECT" query return data in json format*

This will be the format for the rest of this API documentation

//***********************************************************************************************************
//***********************************************************************************************************

Controller.php

[HTTP METHOD] ~ Example URL

{
	Body to send in the HTML request (if needed)
}

Explanation of what this function is used for (optional)

//***********************************************************************************************************
//***********************************************************************************************************

BoxAndWhiskerController.php

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

POST ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/boxAndWhiskerData

{
	"courseList": [
		{"course":"CS1400"},
		{"course":"CS2420"},
		{"course":"CS1410"}
	],
	"userID":887969243
}

This is a good starting point for building up the Box and Whisker report.  For the moment it is a copy the 
PingraphDataController's getPingraphData() function.  It returns all of the information you will 
need to populate your Box and Whisker plot.  If you need different information you will need to modify this.
It currently calls "EXEC sp_GetPingraphData" in the database.  This stored procedure is rather big and complicated;
rewriting it to perfectly suit the Box and Whisker plot seems like a huge waste of time if it returns all that we need.

Though POST is generally used to create data on the server/database, this was the fastest way to send 
information about what we want (the script that makes the ajax call that accesses this function already built the body and 
was already set up to use POST by the previoius group).  GET does not allow a body to be sent.

IF you care enough to convert this to true RESTful API style, you would need to convert this to a GET call and 
use a url with a query string, something like:

GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/boxAndWhiskerData?courseList=CS1400,CS2420,CS1410&userID=887969243

There is a block comment at the top of api.php explaining a method of how to accomplish this, we just didn't get
around to converting it over.

//***********************************************************************************************************
//***********************************************************************************************************

CategoriesController.php

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/categories

This does a "SELECT * FROM Categories"

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/categories/218692 //example ID

This will do a "SELECT * FROM Categories WHERE ID = 218692"

//***********************************************************************************************************
//***********************************************************************************************************

CollegesController.php

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/colleges

This does a "SELECT * FROM Colleges"

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/colleges/4

This does a "SELECT * FROM Colleges WHERE code = 4"

//***********************************************************************************************************
//***********************************************************************************************************

CourseNumbersController.php

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

POST ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/courseNumbers

{
	"departments":[
		{"DepartmentCode":"6000","DepartmentName":"Botany"},
		{"DepartmentCode":"8001", "DepartmentName":"Computer Science"}
	]
}

Returns all courses from each department passed in.

EXAMPLE RETURN DATA

[
	{"CourseNumber":"1203","Subject":"BTNY","Index":1000000},
	{"CourseNumber":"1303","Subject":"BTNY","Index":1000001},
	{"CourseNumber":"1010","Subject":"CS","Index":1000002},
	{"CourseNumber":"1030","Subject":"CS","Index":1000003},
	{"CourseNumber":"1400","Subject":"CS","Index":1000004},
	...
	// all of the courses in CS
	...
	{"CourseNumber":"6500","Subject":"CS","Index":1000053},
	{"CourseNumber":"6610","Subject":"CS","Index":1000054},
	{"CourseNumber":"6820","Subject":"CS","Index":1000055}
]

//***********************************************************************************************************
//***********************************************************************************************************

DeptController.php

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/departments

Gets a list of all the departments and their codes from the database ordered by DepartmentName

calls:

	SELECT
		distinct d.code   as DepartmentCode,
		d.name            as DepartmentName
	FROM InstructorDepartments id
	JOIN Departments d
	ON id.departmentCode = d.code
	JOIN Users u
	ON u.Id = id.InstructorID
	order by DepartmentName ASC;
			
EXAMPLE RETURN DATA

[
	{"DepartmentCode":"0001","DepartmentName":"Academic Advisement"},
	{"DepartmentCode":"4000","DepartmentName":"Accounting\/Taxation"},
	{"DepartmentCode":"8007","DepartmentName":"Automotive"},
	{"DepartmentCode":"6000","DepartmentName":"Botany"},
	{"DepartmentCode":"4001","DepartmentName":"Business Administration"},
	{"DepartmentCode":"1006","DepartmentName":"CE Programs"},
	...
	// all departments
	...
	{"DepartmentCode":"3004","DepartmentName":"Visual Arts"},
	{"DepartmentCode":"7009","DepartmentName":"Women's Studies"},
	{"DepartmentCode":"6006","DepartmentName":"Zoology"}
]


//***********************************************************************************************************
//***********************************************************************************************************

Evals_UserDepartmentRolesController.php

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/Evals_UserDepartmentRoles

returns all UserDepartmentRole associations.  For example, Brad Peterson is an "Adjunct Admin" for the CS Department.

EXAMPLE
[
	{"DepartmentCode":"6003","Subject":"MATH","FirstName":"Nathan","LastName":"Brooks","UserID":"990224681","RoleID":"12","RoleName":"Adjunct"},
	{"DepartmentCode":"7001","Subject":"HIST","FirstName":"Nathan","LastName":"Brooks","UserID":"990224681","RoleID":"3","RoleName":"Instructor"},
	{"DepartmentCode":"8001","Subject":"CS","FirstName":"Matthew","LastName":"Horton","UserID":"886227766","RoleID":"12","RoleName":"Adjunct"},
	{"DepartmentCode":"8001","Subject":"CS","FirstName":"Bradley","LastName":"Peterson","UserID":"887969243","RoleID":"3","RoleName":"Instructor"},
	{"DepartmentCode":"8001","Subject":"CS","FirstName":"Bradley","LastName":"Peterson","UserID":"887969243","RoleID":"21","RoleName":"Adjunct Admin"},
	{"DepartmentCode":"8001","Subject":"CS","FirstName":"Brian","LastName":"Rague","UserID":"885025795","RoleID":"13","RoleName":"Department Chair"},
	{"DepartmentCode":"8001","Subject":"CS","FirstName":"Brian","LastName":"Rague","UserID":"885025795","RoleID":"3","RoleName":"Instructor"},
	{"DepartmentCode":"8001","Subject":"CS","FirstName":"Brian","LastName":"Rague","UserID":"885025795","RoleID":"11","RoleName":"WSU Staff"}
]

* Nathan Brooks is me, used as test data *

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

POST ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/Evals_UserDepartmentRoles

{
	"userID":887969243,
	"roleID":3
	"departmentCode":8001
}

Creates an association in the Evals_UserDepartmentRoles table.  The example POST body makes 
Brad Peterson an "Instructor" for the CS Department

//***********************************************************************************************************
//***********************************************************************************************************

//***********************************************************************************************************
//***********************************************************************************************************

//***********************************************************************************************************
//***********************************************************************************************************

//***********************************************************************************************************
//***********************************************************************************************************

//***********************************************************************************************************
//***********************************************************************************************************

//***********************************************************************************************************
//***********************************************************************************************************

//***********************************************************************************************************
//***********************************************************************************************************

//***********************************************************************************************************
//***********************************************************************************************************