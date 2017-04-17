var app = angular.module("EvalSystem", []);
var termsSelected = []; // holds the terms that the user has selected
var departmentsSelected = []; //holds the departments that the user has selected
var courseOrInstructor = ""; //holds the string of "Course" or "Instructor" based on which option the user chooses to sort the returned info by

// NOTE: This will need to be changed each semester to the path that the current group has set up for their API calls
var apiPath = "https://icarus.cs.weber.edu/~nb06777/CS4450/v1/"; //This is the path to the API calls that interface with the database.


//This is used to keep track of what information the user is allowed access to.
// i.e. If the user is a adjunct admin, they should see the results from the adjuncts but only from within their department
var loggedInUserID = 887969243; // brad peterson

/* -- TermController --
  Used in Pane 1
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
	.then(
		function successCallback(response) {
			console.log(response.data); //outputs the received data to the console (for debugging purposes only)
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
        document.getElementById('pane2-button').click(); //moves the view to the next window pane
    }
});


/* -- Department Controller --
  Used in Pane 2
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
	.then(
		function successCallback(response) {
			console.log(response.data); //outputs the received data to the console (for debugging purposes only)
			$scope.depts = response.data;
		},
		function errorCallback(response) {
			console.log(response);
		}
	);
	$scope.buildDepartmentsSelected = function(){
        var departments = document.getElementById("deptList").options;

        // strip out the information we need to get objects in the form of
        // {code: 8001, name: Computer Science}
        for(var i=0; i<departments.length; i++){
            if(departments[i].selected){
                departmentsSelected.push({
                    DepartmentCode: departments[i].value,
                    DepartmentName: departments[i].text
                });
            }
        }

        console.log(departmentsSelected); //outputs the received data to the console (for debugging purposes only)
        document.getElementById('pane3-button').click(); //moves the view to the next window pane
    }
});

/* -- Department Controller --
 Used in Pane 4 - NOTE: the courseOrInstructor (used in the if/else statements below) is set through choosing the pane 3 radio buttons
 This controller returns a list of Instructors (if Course was chosen in pane 3) or Courses (if Instructor was chosen in pane 3)
 This list is DYNAMIC, and IS dependent on ALL prior selections.
 */
app.controller("InstructorCourseController", function($scope, $http) {

	$scope.setCourseOrInstructor = function(){
        var radioButtonList = document.getElementsByName("sortBy-Radio");
        for(let i=0; i<radioButtonList.length; i++){
            if(radioButtonList[i].checked){
                courseOrInstructor = radioButtonList[i].value;
                break;
            }
        }



		if(courseOrInstructor == "Course"){
            document.getElementById("pane4-title").innerHTML = "Instructors";
			let departmentsSelectedJSONString = "{";
			departmentsSelectedJSONString += "\"departments\":" + JSON.stringify(departmentsSelected);
			departmentsSelectedJSONString += ",\"userID\":" + loggedInUserID;
			departmentsSelectedJSONString += "}";

			console.log(departmentsSelectedJSONString);

			$http(
				{
					url: apiPath + "instructors",
					method: "POST",
					data: departmentsSelectedJSONString,
					headers: {"Content-Type": "application/x-www-form-urlencoded"}
				}
			)
			.then(
				function successCallback(response) {
					console.log(response.data);
				 	var instructors = response.data;

					// get the select we're going to add all our options to
					var select = document.getElementById("ICList");

					// remove any existing options (for repeated use)
					select.options.length = 0;

					// add all our new ones
					for(var i=0; i<instructors.length; i++){
						// new Option (text, value)
						select.options[select.options.length] = new Option(instructors[i].FirstName + " " + instructors[i].LastName);
					}
				},
				function errorCallback(response) {
					console.log(response);
				}
			);
		}
		else if(courseOrInstructor == "Instructor"){
            document.getElementById("pane4-title").innerHTML = "Courses";
			let departmentsSelectedJSONString = "{";
			departmentsSelectedJSONString += "\"departments\":" + JSON.stringify(departmentsSelected);
			departmentsSelectedJSONString += "}";

			console.log(departmentsSelectedJSONString);

			$http(
				{
					//url: 'https://icarus.cs.weber.edu/~nb06777/CS4450/v1/courseNumbers',
					url: apiPath + "courseNumbers",
					method: "POST",
					data: departmentsSelectedJSONString,
					headers: {"Content-Type": "application/x-www-form-urlencoded"}
				}
			)
			.then(
				function successCallback(response) {
					console.log(response.data);
					var courseNumbers = response.data;

					// get the select we're going to add all our options to
					var select = document.getElementById("ICList");

					// remove any existing options (for repeated use)
					select.options.length = 0;

					// add all of the new ones
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
        document.getElementById('pane4-button').click(); //moves the view to the next window pane
	};

    $scope.editFunction = function() {
        console.log("Edit clicked.");
    }
});

//TODO: need another controller to handle the last pane; Choosing how to display the return data based on the radio options
