var app = angular.module("EvalSystem", []);

/* -- TermController --
  A term refers to a combination of Year + Semester in the format "2017 Spring"
  It is generic, and is not dependent on any prior selections.
*/
app.controller("TermController", function($scope, $http) {
	$http(
		{
			method: 'GET',
			url: 'https://icarus.cs.weber.edu/~nb06777/CS4450/v1/yearSemesters'
		}
	)
  /*
  .then(response => {
    console.log(response.data);
    return response.data;
  }) */
	.then(
		function successCallback(response) {
			$scope.terms = response.data;
		},
		function errorCallback(response) {
			console.log(response);
		}
	);
	$scope.editFunction = function() {
		console.log("Edit clicked.");
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
			url: 'https://icarus.cs.weber.edu/~nb06777/CS4450/v1/departments'
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

/* -- Course Controller --
  TODO Needs endpoint and corresponding URL for get method
  Depends on previously select Term and Department, possibly Instructor
*/
app.controller("CourseController", function($scope, $http) {
	$http(
		{
			method: 'GET',
			//url: 'https://icarus.cs.weber.edu/~nb06777/CS4450/v1/departments'
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

/* -- Instructor Controller --
  TODO Needs endpoint and corresponding URL for get method
  Depends on previously select Term and Department, possibly Course
*/
app.controller("InstructorController", function($scope, $http) {
	$http(
		{
			method: 'GET',
			//url: 'https://icarus.cs.weber.edu/~nb06777/CS4450/v1/departments'
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
