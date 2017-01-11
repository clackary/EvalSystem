describe("Test Promotion Report ", function() {
  var report;
  beforeAll(function() {
    report = new Report();
  });
  describe("To Key Value Pair ", function() {

    var jsonpData = '{\"COLUMNS\":[\"CLASSSTRING\",\"BANNERCRN\",\"SECTION\",\"SEMESTER\",\"SEMESTERSTRING\",\"BLOCK\",\"YEAR\",\"SUBJECTCODE\",\"COURSENUMBER\",\"INSTRUCTORID\",\"FIRSTNAME\",\"LASTNAME\",\"EMAIL\",\"RESPONSES\",\"STUDENTS\",\"TESTID\",\"TESTNAME\"],\"DATA\":[[\"CS2420\",22574,null,2,\"Fall\",null,2015,\"CS\",2420,887969243,\"Bradley\",\"Peterson\",\"b_peterson@yahoo.com\",289,17,69210,\"Eval Dept of CS\"]]}';

    it("Banner CRN to be 22574", function() {
      var data = JSON.parse(jsonpData);
      var result = toKeyValPair(data.COLUMNS, String(data.DATA).split(','));
      expect(result.BANNERCRN).toBe('22574');
    });


  });

  describe("Get CRN Details ", function() {
    var CrnDetailsUrl = "https://chitester1dev.weber.edu:6838/misc/weber/csevals/CrnDetails.cfm";
    var crn = "30611";
    var semester = "3";
    var year = "2013";
    var getResult = false;

    xit("expecting success back from get ajax API", function() {
      $.ajax({
        url: CrnDetailsUrl + 'crn=' + crn + '&semester=' + semester + '&year=' + year,
        contentType: 'application/json; charset=utf-8',
        type: 'GET',
        dataType: 'jsonp',
        success: handleSuccess,
        error: function (xhr, status){
          getResult = false;
          console.log('ajax call error is ' + status);
        }
        });

        function handleSuccess(data) {
          console.log(data);
          getResult = true;
          data = JSON.parse(data);
          var result = toKeyValPair(data.COLUMNS, String(data.DATA).split(','));
        }

        expect(getResult).toBe(true);
    });

    xit("expecting success back from get Angular API", function() {
      var app = angular.module('myApp', []);
      var CrnDetailsUrl = "https://chitester1dev.weber.edu:6838/misc/weber/csevals/CrnDetails.cfm";
      var crn = "30611";
      var semester = "3";
      var year = "2013";
      var getResult = false;
      $httpBackend.expectGET(CrnDetailsUrl + 'crn=' + crn + '&semester=' + semester + '&year=' + year)
      .response(200);

      app.controller('myCtrlApi', function($scope, $http){

        $http.jsonp(CrnDetailsUrl + 'crn=' + crn + '&semester=' + semester + '&year=' + year)
            .success( function(response) {
              console.log(response);
              getResult = true;
              response = JSON.parse(response);
              var result = toKeyValPair(data.COLUMNS, String(data.DATA).split(','));
            })
            .error( function(response) {
              getResult = false;
              console.log('Error is ' + response);
            });


      });
      $httpBackend.flush();
      //expect(getResult).toBe(true);
    });
  });
});
