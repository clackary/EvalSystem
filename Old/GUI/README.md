Pingraph GUI
===

This GUI was created to allow users to select what they would like to see on a pingraph report based on a few criteria.  

The paramaters they will be running a search on are:

1. Years 
2. Semesters
3. Departments
4. Courses

###Years
Years are generated dynamically from 1989 (year WSU was founded) to the current year.  `setYearsOptions()` in the `pingraphgui.js` and `mpingraphgui.js` files is the method to generate this list.  It will do a call to get the current year so there is no updating needed from year to year.

###Semesters
Semesters are generated dynamically based on the years that were selected.  `SProcGetSemesters.sql` is the stored procedure to generate this list.  This may seem unneccesary but if this is ever used in another college where classes are not taught during the summer, for example, it will be able to handle those situations.

###Departments
Departments are generated dynamically based on a few criteria.  `SProcGetDepartments.sql` is the stored procedure to generate this list.  They will be generated based on the years and semesters already selected as well as the user that is currently logged in.  It will check and see what permissions and departments they are over and only display departments they are allowed to view.

###Courses
Courses are generated dynamically based on the years, semesters, departments, and courses previously selected.  Course names will be shown in the format of "CS1400" or "MATH1010".  Once courses are selected and the 'SELECT' button is pressed, selected courses will be added to a list on the right hand side of the screen for the desktop GUI, and the bottom tab for the mobile GUI. These will be the courses that will be used to run the report from.

###Running the report
Once courses have been selected and the 'RUN REPORT' button is pressed, a query is run to generate a json object that populates a page on the server.  Once this is completed, the page is then redirected to the pingraph page which, when it loads, will retreive that JSON from that page and load its contents.


