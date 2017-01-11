# Promotion and Tenure Report with 2 D graph

### Summary

The Promotion and Tenure Report with 2D Graph is a combination of three different
types of reports for displaying data. It combines the Course Evaluations for each course selected, a dot point graph that combines points for each class and then the summary table of the course reports.  This has been written in html, javascript and css. It uses ColdFusion API (CFM) calls that are on the ChiTester system that are created and maintained by the Weber State ChiTester Development team.

[ChiTesterDevSite](https://chitester1dev.weber.edu:6838/)

Get access from the Prof to this site. You also have to be on campus on Weber State wifi or off campus but logged in via [vpn.weber.edu](https://www.weber.edu/softwaredownloads/vpn.html).

### Running the report

You can run the report locally by
1. Opening the PromotionTenureReport.html file
2. It will load the needed javascript libraries that help to build reports
3. Next it will load PromotionTenureReportInit.js that will load data from
  1. breakdown.js - Course Evaluations and CFM API calls
  2. chart.js - 2D Graph and table breakdown

The require will create a new Report and then call the onLoad function that will start off the report. From there it will check a variable for IsRunningInTest and will use test data if you are not connected. This test data is valid data found in the ChiTester Dev Database.

As the Course Evals are created in breakdown.js it adds values into an array that it will pass along to the chart.js for the 2D graph and table breakdown.

The onReportComplete function passes the element list to loadChart which will create the 2D graph and generateTable function will create the table summary.

To Note: Most of this code in this report is from previous semesters and we were only able to start working on this late in the semester and could not get it running.

What we changed:
- Put breakdown code into IFFE format
- added tests in spec folder
- change code from commented out test options to a change in variable to test
- change 2D graph code to be able to group by different values
- added the require to load all needed file together and in order

Things we didn't get to
- getting the CFM calls to work completed (more below)
- run through code and find redundent and comment code properly
- add complete tests to code with Jasmine
- remove hard coded html elements and create elements to add to DOM instead

#### ColdFusion API calls

If you are logged into the ChiTester Dev Site and run this locally you can get calls back from them with json data using a GET in Jsonp format. The problem is that the ajax get could not properly parse the json object it receives back, something about a javascript wrapper.

If you change the dataType to json you get the Access-Control-Allow-Origin error which has to do with making cross domain API calls and it not setup to support doing that. Read more on that [here](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS).

Jsonp Error - Uncaught SyntaxError: Unexpected token :
Access-Control-Allow-Origin Error

Either of these errors are a pain to try and test.  There is a test in the spec and TestPromotionReportTests.js setup for testing the CFM API call so you don't have to run the report each time.  This is where we left off in trying to fix and get this report working to fix any potential bugs.

You could:
- Mock up all the API calls on your own server to test these, lots of work and have to maintain server
- Work with ChiTester Development to allow for CORS calls, potential security problem
- Find another javascript API call that will work with Jsonp format, have worked with Angular API calls in the past with Jsonp

I did start to get into making mocks in the spec tests that would mock the api calls so I could test functions. Read more about that [here](https://docs.angularjs.org/api/ngMock/service/$httpBackend). If you do that then you can handle all testing and mocks locally without any need to setup a server. Setting up mocks in unit testing is done a lot in industry as unit testing focus would be to make sure your javascript, html code is working and making sure API calls work is and get the right data is a different more functional testing.

Good luck!
