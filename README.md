## Project Summary
What is the Eval System?

The Eval System is an extension to the Chitester Eval, that is built by students for a better way of tracking, and collecting data for professors through the evaluations that are made available at the end of each semester. The goal of the project is to have an accurate and relatively easy to use system that is also mobile friendly that allows the user -- who is generally a secretary, professor, Dean, or any other relevant member of the staff -- to pull up evaluation reports on a professor for multiple courses/semesters/departments and compare them for Tenure and Promotion as well as other desired features. There is also a function that will access the Chitester site and print a list of the reports that are requested and have those printed reports formatted in a desirable way.
  
## Component overview
  
  The PinGraph takes a collection of courses based upon the selections of the Selection GUI that was created by the Summer 2016 Eval Group and displays them in a neat graph full of pins. Each pin has a color based on its accessibility. If it's blue there is no access, green you can access and view the report of that pin. 
  
  The Pin Graph Selection GUI has a various number of selection menus to more accurately pinpoint the courses and or professor evaluations that you are looking for. Tutorials for on how that GUI works can be found in the GUI folder under documentation.
  
  The Promotion and Tenure report is a report that shows the student evals for the course, and how the professor did based on those students opinions as well as supplying a chart that shows how they did compared to other semesters. It also has other important information, though most of this information is really only necessary for the dean. To see more, take a look on chitester.

## The Project So Far...
This project has passed through a number of groups at this point, and keeping track of what happened when is somewhat difficult. What follows is my best reconstruction of the project's timeline as of spring 2017:
	
Summer 2016: The project began. It was first made within .NET, but there appears to be very little documentation. In the current file structure these files can be found in Old->.NET-Project->CS Eval
	
Fall 2016: The second group took over the project. The backend technology was changed from .NET to NodeJS and much of their time was spent converting the project. Luckilly, this group did leave a fair amount of documentation behind. The explainations of each piece are generally good, though there seems to be little in the way of descriptions of how the pieces fit together. Additionally, there are a couple of important notes missing, such as there being no mention of the heroku API that was being used in some of the files. There were also a number of SQL files to add tables to the database, but little to no explaination of what they were for. How much of this group's work was simply converting to the new technology and how much focused on expanding the project, I am not sure.
		
Spring 2017: The technology requirements again changed. Now the front end technology to be used is AngularJS. As such, much of the focus has been on converting existing files to the new technology. An API was also created to allow for a better, more flexible approach to interacting with the data.

The current architecture and the technologies we used look like this...

```
Web Pages 	Front End	Back End		Database
Views		Controllers	API/api.php		DatabaseCreation, and API/Controllers
html/css	js		php			sql (in php files)
				(See API/README.md)	
```
	
## File structure explaination
### Overview of current folders:
#### API:
Content: The API used to allow comunication between the frontend and the database.
Notes: The API is written in PHP and must be hosted on a web server. Additionally, file paths and API calls will have to be updated to point to where it is hosted. The paths that need to be changed are in the following files:
			
#### Controllers:
Content: The AngularJS controllers used in the Views.
Notes:
			
#### CSS
Content: The CSS files used by the Views.
Notes:
			
#### DatabaseCreation
Content: A series of SQL scripts used to construct a local database. Each script both creates the table named in the script and populates it with test data. 
Notes: It wouldn't hurt to ask Chitester for an updated data dump to insert into each table. I would also recommend setting up the database on a remote server instead of just working with a local one. (Might actually be required for the API to work.) We (spring 2017) spoke to Rob Hilton about setting it up on Titan and did so with minimal fuss.
*Need to clean this folder out some and move SQL scripts scattered throughout the project into it*
*Does 22_Functions_StoredProcs have all of both?*
			
#### Includes
Content: Javascript libraries used by the rest of the project.
Notes:

#### Old
Content: The old files inherited from the previous group. 
Notes: These are all the out dated .NET and NodeJS files.
			
#### Views
Content: The web pages that users will see and interact with.
Notes:
		
### Code conventions
*List code conventions here*

### Database changes
List of added tables
		Evals_DistractorTextAndScore
			Essentially adds two columns to the Distractors table. These columns separate the numeric value of the distractor and the text into two columns instead of just one. A more thorough explaination can be found below.
		Evals_UserDepartmentRoles
			This table functions as a three way association table between Users, Departments, and Roles. It is meant to be used to determine user permissions when generating reports. 
List of added stored procedures

## Next Steps

### Generating a report

### Secretary Page
See Hand off video for additional details.

### Deployment
Reach out to Brad and Chitester for this one. Good luck.
