# Eval System Specifications Document




### What is the Eval System?
  The Eval System is an extension to the Chitester Eval, that is built by students for a better way of tracking, and collecting data for professors through the evaluations that are made available at the end of each semester. The goal of the project is to have an accurate and relatively easy to use system that is also mobile friendly that allows the user -- who is generally a secretary, professor, Dean, or any other relevant member of the staff -- to pull up evaluation reports on a professor for multiple courses/semesters/departments and compare them for Tenure and Promotion as well as other desired features. There is also a function that will access the Chitester site and print a list of the reports that are requested and have those printed reports formatted in a desirable way.
  
  The PinGraph takes a collection of courses based upon the selections of the Selection GUI that was created by the Summer 2016 Eval Group and displays them in a neat graph full of pins. Each pin has a color based on its accessibility. If it's blue there is no access, green you can access and view the report of that pin. 
  
  The Pin Graph Selection GUI has a various number of selection menus to more accurately pinpoint the courses and or professor evaluations that you are looking for. Tutorials for on how that GUI works can be found in the GUI folder under documentation.
  
  The Promotion and Tenure report is a report that shows the student evals for the course, and how the professor did based on those students opinions as well as supplying a chart that shows how they did compared to other semesters. It also has other important information, though most of this information is really only necessary for the dean. To see more, take a look on chitester.

### The Project So Far...
  Originally the project was built within .NET, however it is being switched over to NodeJS. The original code was somewhat of a mess, and the organization was remotely difficult to deal with, and we hope that as the original writers of this document, you will build upon our work and continue to maintain this project in as orderly a fashion as possible. A pin graph for the Promotion and Tenure reports has been built with desired functionality but not efficiency. A GUI system has been built for the Secretary Report system, but presently works with only hardcoded values.

### What was being worked on?
  There are four major things that are being worked on, and those tasks relating to these four items are listed below. The following items are as such:
  - Database Adjustment Request and Changes (Completed)
  - Promotion and Tenure Report Pin Graph changes (Mostly Completed)
  - Pin Graph Secretary Selection GUI (Completed)
  - .NET to NodeJS conversion (Mostly Completed)
  - User Permissions GUI(Almost Complete)
  - Documentation reorganized(You betcha)

### Tasks to Complete

#####  Class Breakdown Convert
###### Description

###### Notes
This was converting the promotion and tenure reports from .NET to not .NET. Basically meaning pure JS and HTML. However this was never finished as to the large amount of work on other pieces of the project.

### Completed Tasks


#####  Pin Graph
###### Description
Get the Pin Graph to work with none hardcoded values using a JSON object, and fix other bugs that were required. Have this JSON object be created by the Selection GUI.

###### Notes
- Sample JSON with permissions: <br />
{ <br />
"teacher": "Cheri Rosa", <br />
"course": "cs1400", <br />
"year": "2012", <br />
"semester": "fall", <br />
"score": 3.4, <br />
"permission": 3, <br />
"crn": 79965 <br />
} <br />
Permission:<br />
1 is for classes that whoever is running the query teaches <br />
2 is for classes that whoever is running the query can view <br />
3 is for classes that whoever is running the query cannot view <br />
-Ian Niklason, June 6 2016

#####  Node.js Core
###### Description
  Set up the EvalSystem on NodeJS
###### Notes

#####  'Undefined Bug' in Eval Report
###### Description
  In the Class Breakdown eval report, there is a section where it's supposed to display Your [classname] five year report, but it says Your 'undefined' five year report because of a bug. Simply find the file, spaghetti through the code, and fix this error.
###### Notes
  Client requested to just remove the word, doesn't desire classname replacement. In the breakdown.js file in the .NET project, remove '+ element["CLASSNAME"]' from the following lines: 493,509,750,789. - Jacob Dockter, July 15th 2016
  
  The updated breakdown.js is within the .NET project folders. If a revert is necessary, simply add the code listed above back to those lines between 'Dept' and 'Five Year Avg'.
  
#####  Clean Up Documentation
###### Description
  The initial project that we were given was created in Visual Studio and .NET. The project was very sloppily put together, and our group (Summer 2016) were disgusted by the organization and quality of the code. Our goal has to been to improve on that so that future readers such as yourselves can pick up on the project, what has been done, and what needs to be done. Presently, we are switching over the project to NodeJS and removing the .NET portion of the project, and to accompany this, all documentation and files are being cleaned up and organized.
###### Notes
  - Created document and began database file organization, allow for other developers to edit document with Notes and/or when they complete a project. -Jacob Dockter, June 6th 2016
  - Finalized documentation - Aug 10th, 2016


#####  Setup Test Database
###### Description
  Create a database for testing purposes. Ask for an updated set of database information from the chitester folks and build a heroku link to one of the students databases.
###### Notes
We used one of the student's titan databases to host our own sample database for testing queries. We also used heroku and nodeJS for a serverside database, however in the end this was unnecessary as we discovered that chitester is no longer using NodeJS.

#####  User Roles Defined in Database
###### Description
  Create a database table or field that adds User Roles to the user, such as Adjunct, Full-Time, etc.
###### Notes
This was compeleted by the other Eval Group, but we discovered there was already a Roles table but no real way to add Permissions to people so we ended up adding that to our request, sent them the mockup of what we needed, and they added it in for us.

#####  Adjunct Indicator in user role section of Database
###### Description
  If the User is a current Adjunct or was an Adjunct in the past, there should be an indicator in the user role section of the Database. Time fields should be used for roles, such as a User was this role from BeginDate to EndDate
###### Notes
We discovered there is an Adjunct indicator but it doesn't really work the way you think it does. For now, the User Permissions GUI will be the work around but chitester is supposedly working on something to remedy this.

#####  User role at time eval is created vs current role
###### Description
  Each User can have multiple roles, based on when they had this role. Say one User was an Adjunct in 2013 and they are now as of 2016 a full-time professor. Add StartDate and EndDate to accomodate for this.
###### Notes
Supposedly this exists to some capacity but not in the way we think it does. Each User basically gets added more roles onto. So they can start as an Instructor and Adjunct, then get a Professor tag, then get Tenure, and so on. There is no removal of the previous tag or hierarchy of any sort.

#####  Front End Selection GUI
###### Description
  GUI for the selection reports that enable the User to select which reports to pull into a PDF file. This GUI should also be mobile friendly.
###### Notes
This GUI can be found in the GUI folder of this project. It works for the CS department as far as we know(there may be a few bugs left), however it doesn't not work outside of that department. One goal for the following semester(s) will be to add functionality to this.


  
### FOR THE NEXT GROUP
  As you know, the project that we are handing you still has some .NET projects that need to be converted to the pure html/javascript format. Also, from what we've encountered, NodeJS is no longer being used in their backend as they are switching to Python. As you continue this project and building on it, you should be building a database connection via python. A recommendation is using datagrip and pycharm which are free to students on the JetBrains website. You could also use webstorm for your html/js management if desired. Or if you have something else you prefer, feel free to use that.
  
  Also, we highly recommend getting in contact with the ChiTester people right away. In our case, the contact was Lance Ure, and probably will remain so. Ask Brad for his information, setup a meeting with both him and Brad, and outline anything that I don't mention below that you are going to work on for the semester. If you don't do this, you will run into a lot of problems the last few weeks of the semester.
  
  Furthermore, to get your creations onto the chitester dev sandbox, all that is required is to send your code to Lance Ure (ensuring that they are built in the proper way to post) and he will post it for you for you to test on their test database versus a local one.
  
  The following is a list of items that are on the definitive TODO list for you(the next group) to work on. However, you should definitely go over this list to ensure nothing changes with Brad before you begin. Brad does not look at your goal lists until you are getting them checked, so ensure that you know what you are working on is what needs to be worked on. Here is the list:

      1. Complete the User Permissions GUI. Have the GUI front end be able to access the database using the Stored Procedures provided. This GUI is in reality only a temporary fix, but it is something that Brad wants as soon as possible.
      2. Complete conversion from .NET to javascript/html if still requested by Brad.

