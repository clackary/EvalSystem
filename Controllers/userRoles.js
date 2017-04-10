var app = angular.module("EvalSystem", []);
var apiPath = "https://icarus.cs.weber.edu/~nb06777/CS4450/v1/";

app.controller("UserRolesController", function($scope, $http) {
	$http(
		{
			method: 'GET',
			url: apiPath + 'userroles'
		}
	)
  /*
  .then(response => {
    console.log(response.data);
    return response.data;
  }) */
	.then(
		function successCallback(response) {
			$scope.userroles = response.data;
		},
		function errorCallback(response) {
			console.log(response);
		}
	);
	$scope.editFunction = function() {
		console.log("Edit clicked.");
}
});
