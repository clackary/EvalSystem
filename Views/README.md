## README
Views contains the html files for each page. Note that each file will have a corresponding .css file (in the CSS folder) and .js file (in the Controllers folder).

### Description of each view

#### selectionFlow.html
This page was designed to allow the user to select the parameters of any report that needs to be generated. Each selection goes into building a query that will return the desired results from the database. A general use case looks like this...
1. User selects the term(s)
2. User selectes the department(s)
3. User selects to display the data based on Course or Instructor. (Note that this essentially changes the GROUP BY clause in the query that is built.)
4. User selects the desired Course(s) or Instructor(s) (how to group the data)
5. User selects which report to view or generate

Currently, steps 1 - 4 should be working with the API to return "live" data from the database. Note that there is very little test data in the Evals_UserDepartmentRoles table, (just a few instructors from the Computer Science department). So when selecting the Course radio button, also make sure to have selected at least the Computer Science department to see anything in the next frame. Otherwise, the instructor list will be blank.

Next steps for this page is to use the selected values to build a dynamic query that returns the data with the desired parameters.

Once that data is retrieved from the database, the data can then be displayed as a report. Some reports may have to be built from scratch, but for others, like the PinGraph or PromotionTenure report, the data will have to be incorporated into existing structures.

#### pinGraph.html
This page was created by a prior group, and hasn't been updated much this semester. We kept it around because it seems like a lot of work went into it, and Brad wanted to include it as a possible report. It is meant to display a spread of eval results, and is an example of the data that would make up one of the possible report options at the end of the selection flow process. Currently, this data is all hard coded (the results are just randomized in Controllers/pinGraph.js).

Next steps for this page will be to get live data to display.
