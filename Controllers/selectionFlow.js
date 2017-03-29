var app = angular.module("EvalSystem", []);

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
