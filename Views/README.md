## README
Views contains the html files for each page. Note that each file will have a corresponding .css file (in the CSS folder) and .js file (in the Controllers folder). 

### Description of each view

#### selectionFlow.html
This page was designed to allow the user to select the parameters of any report that needs to be generated. Each selection goes into building a query that will return the desired results from the database. A general use case looks like this...
	1. User selects the term(s)
	2. User selectes the department(s)
	3. User selects to display the data based on Course or Instructor. (Note that this essentially changes the GROUP BY clause in the query that is built.)
	4. User selects the desired Course(s) or Instructor(s)
	5. User selects which report to view or generate

#### userRoles.html
This is a basic start to the User Roles/Permissions page. Currently, this page displays any User from the database that belongs to a department. This was done to exclude users who did not belong to a department, and eliminates some empty cells in the table.
	
