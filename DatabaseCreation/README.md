##Database Readme
###About
	This is a snapshot in time of the local database framework we have been running our tests on. Make sure you get an updated database.  
	The database we were using was not very complete and we had to add a lot of information and add tables to it in order to get things to work.
	Also don't be afraid to ask chi tester for additional tables they might not have included. At one point we found a number of previously made stored procedures referenced tables we didn't have.
		We asked chi tester about if those tables existed in their database and they sent them to us without any issues.
	We also spoke to Rob Hilton about setting the database up on titan and he worked with us to do so without any issue.
	
###Recreating the database
	Creating the database is pretty straight forward. Just run the EvalDB_XX scripts in order.
	We left the original data dump we recieved from chi tester in the folder as well as a back up. You shouldn't need it for creating the database however.



***Should the "Semester" table be renamed "Evals_Semester" for the sake of consistancy?*** - Go for it
***Are we using the "Semester" table?*** - Pretty sure