var app = angular.module("ExampleApp", []);

app.controller("CollegesController", function($scope, $http) {
	$http(
		{
			method: 'GET',
			url: 'https://icarus.cs.weber.edu/~nb06777/CS4450/v1/colleges'
		}
	)
  /* .then(response => {
    console.log(response.data);
    return response.data;
  }) */
	.then(
		function successCallback(response) {
			$scope.colleges = response.data;
		}, 
		function errorCallback(response) {
			console.log(response);
		}
	);
});