Most of these end points and functions are in use, but not all of them.  Some were made as a test when we were 
learning how to make Ajax calls in Angular. Some of them are from when we decided to go a different route.  
There was no reason to delete them as we might really need the practice or older end points in the future.  
They are completely valid and work with our database still.

If you are looking for some functionality, please search this to find out if what you need is already built.

I will use our current team's existing API location as the example text, but you will end up rebuilding it 
somewhere else as you don't have access to the account on icarus to modify it.

*All functions that call a "SELECT" query return data in json format*.

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

This is a good starting point for building up the Box and Whisker report.  For the moment, it is a copy of the 
PingraphDataController's getPingraphData() function.  It returns all of the information you will 
need to populate your Box and Whisker plot.  If you need different information, you will need to modify this.
It currently calls "EXEC sp_GetPingraphData" in the database.  This stored procedure is rather big, complicated and
rewriting it to perfectly suit the Box and Whisker plot seems like a huge waste of time if it returns all that we need.

Though POST is generally used to create data on the server/database, this was the fastest way to send 
information about what we want (the script that makes the Ajax call that accesses this function already built the body and 
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

EXAMPLE RETURN DATA
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

InstructorDepartmentsController.php

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/instructorDepartments

Gets you all instructors and what departments they work for, like how "Thomas Herret" works for "Geosciences"

EXAMPLE RETURN DATA
[
	{"DepartmentCode":"6002","InstructorDepartmentsID":"1043","InstructorID":"550000028","CollegeCode":"6","DepartmentName":"Geosciences","InstructorFirstName":"Thomas","InstructorLastName":"Herret"},
	{"DepartmentCode":"4003","InstructorDepartmentsID":"785","InstructorID":"550000052","CollegeCode":"4","DepartmentName":"Info Systems and Technologies","InstructorFirstName":"G","InstructorLastName":"Harris"},
	{"DepartmentCode":"3000","InstructorDepartmentsID":"14","InstructorID":"550000054","CollegeCode":"3","DepartmentName":"Communication","InstructorFirstName":"Mukhbir","InstructorLastName":"Singh"},
	{"DepartmentCode":"7001","InstructorDepartmentsID":"738","InstructorID":"550000056","CollegeCode":"7","DepartmentName":"History","InstructorFirstName":"Vikki","InstructorLastName":"Deakin"},
	{"DepartmentCode":"5002","InstructorDepartmentsID":"15","InstructorID":"550000058","CollegeCode":"5","DepartmentName":"Teacher Education","InstructorFirstName":"Natalie","InstructorLastName":"Williams"},

	...

]

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/instructorDepartments/instructor/{instructorID:\d+}
GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/instructorDepartments/instructor/550000018

Gets all departments an instructor works for (usually just 1 department)

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/instructorDepartments/department/{departmentCode:\d+}
GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/instructorDepartments/department/8001

Returns all instructors that work for a given department code

EXAMPLE RETURN DATA ~ for department 8001 ( which is computer science )

[
	{"DepartmentCode":"8001","InstructorDepartmentsID":"93","InstructorID":"880519503","CollegeCode":"8","DepartmentName":"Computer Science","InstructorFirstName":"Student32393","InstructorLastName":"Student32393"},
	{"DepartmentCode":"8001","InstructorDepartmentsID":"118","InstructorID":"880890158","CollegeCode":"8","DepartmentName":"Computer Science","InstructorFirstName":"Scott","InstructorLastName":"Grayston"},
	{"DepartmentCode":"8001","InstructorDepartmentsID":"120","InstructorID":"880973823","CollegeCode":"8","DepartmentName":"Computer Science","InstructorFirstName":"Spencer","InstructorLastName":"Hilton"},
	{"DepartmentCode":"8001","InstructorDepartmentsID":"121","InstructorID":"881006394","CollegeCode":"8","DepartmentName":"Computer Science","InstructorFirstName":"Ronald","InstructorLastName":"Peterson"},
	{"DepartmentCode":"8001","InstructorDepartmentsID":"146","InstructorID":"881564668","CollegeCode":"8","DepartmentName":"Computer Science","InstructorFirstName":"Robert","InstructorLastName":"Hilton"},
	{"DepartmentCode":"8001","InstructorDepartmentsID":"156","InstructorID":"881750444","CollegeCode":"8","DepartmentName":"Computer Science","InstructorFirstName":"Gregory","InstructorLastName":"Anderson"},
	. . .
	all instructors for CS
	. . .
	{"DepartmentCode":"8001","InstructorDepartmentsID":"1940","InstructorID":"886227766","CollegeCode":"8","DepartmentName":"Computer Science","InstructorFirstName":"Matthew","InstructorLastName":"Horton"},
	{"DepartmentCode":"8001","InstructorDepartmentsID":"1951","InstructorID":"883758933","CollegeCode":"8","DepartmentName":"Computer Science","InstructorFirstName":"Jason","InstructorLastName":"Brown"},
	{"DepartmentCode":"8001","InstructorDepartmentsID":"2178","InstructorID":"550060567","CollegeCode":"8","DepartmentName":"Computer Science","InstructorFirstName":"Nathan","InstructorLastName":"Thornton"}
]

//***********************************************************************************************************
//***********************************************************************************************************

InstructorsController.php

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

POST ~ https://icarus.cs.weber.edu/~nb06777/CS4450API/instructors

** 885025795 is Brian Rague

{
	"departments":[
		{"DepartmentCode":"8001","DepartmentName":"Computer Science"}, 
		{"DepartmentCode":"8000","DepartmentName":"Electronics Engineering"}
	],
	"userID":885025795
}

Gets instructors that are related to the userID (in practice this will be the person who is logged in)

TODO: 
You will probably want to extend this to have even more security, only allowing someone to see other users who they are over.
For example, if you are an "Adjunct" you should only see yourself,  if you are an "Adjunct Admin" for the CS department you should see CS adjuncts
This functionality is started but not completed, it is commented out in this controller.

EXAMPLE RETURN DATA
[
	{"userID":"885025795","departmentCode":"8001","FirstName":"Brian","LastName":"Rague"},
	{"userID":"886227766","departmentCode":"8001","FirstName":"Matthew","LastName":"Horton"},
	{"userID":"887969243","departmentCode":"8001","FirstName":"Bradley","LastName":"Peterson"}
]

//***********************************************************************************************************
//***********************************************************************************************************

OldAPIController.php

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

POST ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/getSemesters

{
    "yearList": "2014,2013"
}

Calls the stored procedure sp_GetSemesters which takes a comma separated list of years.
Gets all of the semesters in a nice format for the given years.

EXAMPLE RETURN DATA
[
	{"semester":"Summer"},
	{"semester":"Spring"},
	{"semester":"Fall"}
]

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

POST ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/getDepartments

{
    "yearList": ["2016","2014","2013"],
    "semesterList": ["Summer", "Spring"]
}

Calls the sp_GetDepartments stored procedure, returns all departments that (hard coded right now) the instructor
taught for for the given time periods

TODO: EXTREMELY IMPORTANT
This code has the userID or instructorID hard coded, will need to make the data work like this:
{
    "yearList": ["2016","2014","2013"],
    "semesterList": ["Summer", "Spring"],
	"instructorID": 887969243
}

EXAMPLE RETURN DATA
[
	{"departments":"MATH"}
]

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

POST ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/getCourses

{
    "yearList": ["2014,2015"],
    "semesterList": ["Summer"],
    "departmentList": ["CS"]
}

Returns all courses that were taught for the given time periods for the given department (no duplicates)

EXAMPLE RETURN DATA
[
	{"courseName":"CS1010"},
	{"courseName":"CS1030"},
	{"courseName":"CS1400"},
	...
	All CS courses that were taught "Summer 2014" and "Summer 2015"
	...
	{"courseName":"CS4800"},
	{"courseName":"CS4830"},
	{"courseName":"CS4890"}
]

//***********************************************************************************************************
//***********************************************************************************************************

PingraphDataController.php

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

POST ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/pingraphData

{
    "courseList": [
    	{"course":"CS1400"},
    	{"course":"CS2420"},
    	{"course":"CS1410"}
    ],
    "userID":887969243
}

Gets pingraph data for a given user about the given course list

EXAMPLE RETURN DATA
[
	{
		"TestId":"69210",
		"teacher":"Bradley Peterson",
		"course":"CS2420",
		"catalogYear":"2014",
		"calendarYear":"2014",
		"semester":"Fall",
		"semesterNumber":"3",
		"Score":"3.184523",
		"permission":"2",
		"bannerCRN":"32940",
		"LikertMin":"0",
		"LikertMax":"4"
	},
	{
		"TestId":"69210",
		"teacher":"Bradley Peterson",
		"course":"CS2420",
		"catalogYear":"2014",
		"calendarYear":"2015",
		"semester":"Spring",
		"semesterNumber":"1",
		"Score":"3.198391",
		"permission":"2",
		"bannerCRN":"11232",
		"LikertMin":"0",
		"LikertMax":"4"
	},
		. . .
		The rest of the pingraph data
		. . .
	{
		"TestId":"69210",
		"teacher":"Bradley Peterson",
		"course":"CS2420",
		"catalogYear":"2013",
		"calendarYear":"2014",
		"semester":"Summer",
		"semesterNumber":"2",
		"Score":"3.714285",
		"permission":"2",
		"bannerCRN":"20949",
		"LikertMin":"0",
		"LikertMax":"4"
	},
	{
		"TestId":"69210",
		"teacher":"Bradley Peterson",
		"course":"CS2420",
		"catalogYear":"2014",
		"calendarYear":"2015",
		"semester":"Summer",
		"semesterNumber":"2",
		"Score":"3.830449",
		"permission":"2",
		"bannerCRN":"21584",
		"LikertMin":"0",
		"LikertMax":"4"
	}
]
//***********************************************************************************************************
//***********************************************************************************************************

YearSemestersController.php

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

GET ~ https://icarus.cs.weber.edu/~nb06777/CS4450/v1/yearSemesters

Gets all semesters that have had courses taught in them

EXAMPLE RETURN DATA
[
	{"Year":"2017","SemesterID":"3","SemesterName":"Fall"},
	{"Year":"2017","SemesterID":"2","SemesterName":"Summer"},
	{"Year":"2017","SemesterID":"1","SemesterName":"Spring"},
	{"Year":"2016","SemesterID":"3","SemesterName":"Fall"},
	{"Year":"2016","SemesterID":"2","SemesterName":"Summer"},
	{"Year":"2016","SemesterID":"1","SemesterName":"Spring"},
	{"Year":"2015","SemesterID":"3","SemesterName":"Fall"},
	{"Year":"2015","SemesterID":"2","SemesterName":"Summer"},
	{"Year":"2015","SemesterID":"1","SemesterName":"Spring"},
	{"Year":"2014","SemesterID":"3","SemesterName":"Fall"},
	{"Year":"2014","SemesterID":"2","SemesterName":"Summer"},
	{"Year":"2014","SemesterID":"1","SemesterName":"Spring"},
	{"Year":"2013","SemesterID":"3","SemesterName":"Fall"},
	{"Year":"2013","SemesterID":"2","SemesterName":"Summer"},
	{"Year":"2013","SemesterID":"1","SemesterName":"Spring"},
	{"Year":"2012","SemesterID":"3","SemesterName":"Fall"},
	{"Year":"2012","SemesterID":"2","SemesterName":"Summer"},
	{"Year":"2012","SemesterID":"1","SemesterName":"Spring"},
	{"Year":"2011","SemesterID":"3","SemesterName":"Fall"},
	{"Year":"2011","SemesterID":"2","SemesterName":"Summer"},
	{"Year":"2011","SemesterID":"1","SemesterName":"Spring"},
	{"Year":"2010","SemesterID":"3","SemesterName":"Fall"},
	{"Year":"2010","SemesterID":"2","SemesterName":"Summer"},
	{"Year":"2010","SemesterID":"1","SemesterName":"Spring"},
	{"Year":"2009","SemesterID":"3","SemesterName":"Fall"},
	{"Year":"2009","SemesterID":"2","SemesterName":"Summer"},
	{"Year":"2009","SemesterID":"1","SemesterName":"Spring"},
	{"Year":"2008","SemesterID":"3","SemesterName":"Fall"}
]
