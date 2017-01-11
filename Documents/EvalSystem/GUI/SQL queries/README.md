SQL Queries
===

##General Parameters

Most of the stored procedures below take a combination of some common parameters:
 
####YearList

A list of years the user would like to search against.  It is in the format: `'2016,2015,2014,2013,...'`.  

####SemesterList

A list of semesters the user would like to search against based on the years selected.  The years selected is found in `YearList`.  It is in the format: `'Spring,Summer,Fall'`.

####DepartmentList
 
 A list of departments the user would like to search against based on the years and semesters selected.  It will take the user ID from the currently logged in user and filter by the years and semesters previously selected as well as the departments the user has permission to view.  In the format: `'CS,MATH,ECON,...'`.
 
 
***Note: there are no spaces after the commas***
 
 ---
###FuncSplitList

Takes 2 parameter:

1. List of values as a string (ie: "2016,2015,2014")
2. A character to split the list on (ie: ',')

It returns a SQL table of the values without the deliminator.

###SProcGetCourses.sql

Takes 3 parameters:

1. YearList
2. SemesterList
3. DepartmentList

It will return the courses based on the years, semesters, and departments previously selected.  Format `"CS1400"` or `"MATH1010"`

###SProcGetDepartments.sql

Takes 2 parameters:

1. YearList
2. SemesterList

It will return the departments the user is allowed to see based on the years and semesters previously selected.  Format: `"CS"` or `"MATH"`.

###SProcGetPingraphData.sql

Takes 1 parameter:

1. Courses (a selection from what was returned in SProcGetCourses.sql)

This will build the JSON for populating the pingraph based on the current user's ID.

###SProcGetSemesters.sql

Takes 1 parameter:

1. YearList

It will return the semesters that are found based on the years that are selected.  Format: `"Spring"` or `"Summer"`.
