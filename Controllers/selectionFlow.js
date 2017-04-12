var app = angular.module("EvalSystem", []);
var termsSelected = [];
var departmentsSelected = [];
var courseOrInstructor = "";
var apiPath = "https://icarus.cs.weber.edu/~nb06777/CS4450/v1/";

/* -- TermController --
  A term refers to a combination of Year + Semester in the format "2017 Spring"
  It is generic, and is not dependent on any prior selections.
*/
app.controller("TermController", function($scope, $http) {
	$http(
		{
			method: 'GET',
			url:  apiPath + 'yearSemesters'
		}
	)
  /*
  .then(response => {
    console.log(response.data);
    return response.data;
  }) */
	.then(
		function successCallback(response) {
			console.log(response.data);
			$scope.terms = response.data;
		},
		function errorCallback(response) {
			console.log(response);
		}
	);
	$scope.editFunction = function() {
		console.log("Edit clicked.");
	};
    $scope.buildTermsSelected = function(){
        var terms = document.getElementById("termList").options;
        termsSelected = [];

        // strip out the information we need to get objects in the form of
        // {year: 2017, semester: 2}
        for(var i=0; i<terms.length; i++){
            if(terms[i].selected){
                termsSelected.push({
                    Year: terms[i].text.substr(0, 4),
                    SemesterID: terms[i].value
                });
            }
        }

        console.log(termsSelected);
        document.getElementById('pane2-button').click();
    }
});


/* -- Department Controller --
  This controller returns a list of department names only which have instructors
  It is generic, and is not dependent on any prior selections.
*/
app.controller("DeptController", function($scope, $http) {
	$http(
		{
			method: 'GET',
			url: apiPath + 'departments'
		}
	)
  /*
  .then(response => {
    console.log(response.data);
    return response.data;
  }) */
	.then(
		function successCallback(response) {
			console.log(response.data);
			$scope.depts = response.data;
		},
		function errorCallback(response) {
			console.log(response);
		}
	);
	$scope.buildDepartmentsSelected = function(){
        var departments = document.getElementById("deptList").options;
        departmentsSelected = [];

        // strip out the information we need to get objects in the form of
        // {year: 2017, semester: 2}
        for(var i=0; i<departments.length; i++){
            if(departments[i].selected){
                departmentsSelected.push({
                    DepartmentCode: departments[i].value,
                    DepartmentName: departments[i].text
                });
            }
        }

        console.log(departmentsSelected);
        document.getElementById('pane3-button').click();
    }
});

/* -- Course Controller --
  TODO Needs endpoint and corresponding URL for get method
  Depends on previously select Term and Department, possibly Instructor
  TODO To make endpoint, needs a sql query to get courses based on prior
  selections.
*/
app.controller("CourseController", function($scope, $http) {
	$http(
		{
			method: 'GET',
			//url: apiPath + 'departments'
		}
	)
  /*
  .then(response => {
    console.log(response.data);
    return response.data;
  }) */
	.then(
		function successCallback(response) {
			$scope.depts = response.data;
		},
		function errorCallback(response) {
			console.log(response);
		}
	);
});

/* -- Instructor Controller --
  TODO Needs endpoint and corresponding URL for get method
  Depends on previously select Term and Department, possibly Course
  TODO Also needs a working sql query to get list of instructors based on prior
  selections.
*/
app.controller("InstructorController", function($scope, $http) {

	$http(
		{
			method: 'GET',
			//url: apiPath + 'departments'
		}
	)
  /*
  .then(response => {
    console.log(response.data);
    return response.data;
  }) */
	.then(
		function successCallback(response) {
			$scope.depts = response.data;
		},
		function errorCallback(response) {
			console.log(response);
		}
	);
	$scope.editFunction = function() {
		console.log("Edit clicked.");
}
});

app.controller("InstructorCourseController", function($scope, $http) {
	
	$scope.setCourseOrInstructor = function(){
        var radioButtonList = document.getElementsByName("sortBy-Radio");
        for(let i=0; i<radioButtonList.length; i++){
            if(radioButtonList[i].checked){
                courseOrInstructor = radioButtonList[i].value;
                document.getElementById("pane4-title").innerHTML = courseOrInstructor;
                break;
            }
        }

        document.getElementById('pane4-button').click();
		if(courseOrInstructor == "Instructors"){
			$http(
				{
					method: 'GET',
					//url: apiPath + 'departments'
				}
			)
			/*
			 .then(response => {
			 console.log(response.data);
			 return response.data;
			 }) */
				.then(
					function successCallback(response) {
						$scope.depts = response.data;
					},
					function errorCallback(response) {
						console.log(response);
					}
				);
		}
		else if(courseOrInstructor == "Courses"){
				let departmentsSelectedJSONString = "{";
				departmentsSelectedJSONString += "\"departments\":" + JSON.stringify(departmentsSelected);
				departmentsSelectedJSONString += "}";

				console.log(departmentsSelectedJSONString);
				/*  JSON.stringify({});
				for(let i=0; i<departmentsSelected.length; i++){
					departmentsSelectedJSONString += "{" +
						"\"DepartmentCode\" : \"" + departmentsSelected[i].DepartmentCode + "\"," +
						"\"DepartmentName\" : \"" + departmentsSelected[i].DepartmentName + "\"" +
					"},";
				}
				*/
			$http(
				{
					url: 'https://icarus.cs.weber.edu/~nb06777/CS4450/v1/courseNumbers',
					//url: apiPath + "courseNumbers",
					method: "POST",
					data: departmentsSelectedJSONString,
					headers: {"Content-Type": "application/x-www-form-urlencoded"}
				}
			)
			/*
			 .then(response => {
			 console.log(response.data);
			 return response.data;
			 }) */
			.then(
				function successCallback(response) {
					console.log(response.data);
					courseNumbers = response.data;
					
					// get the select we're going to add all our options to
					var select = document.getElementById("ICList");
					
					// remove any existing options (for repeated use)
					select.options.length = 0;
					
					// add all our new ones
					for(var i=0; i<courseNumbers.length; i++){
						// new Option (text, value)
						select.options[select.options.length] = new Option(courseNumbers[i].Subject + courseNumbers[i].CourseNumber, courseNumbers[i].Subject + courseNumbers[i].CourseNumber);
					}
				},
				function errorCallback(response) {
					console.log(response);
				}
			);
		}
	};


    $scope.editFunction = function() {
        console.log("Edit clicked.");
    }
});
