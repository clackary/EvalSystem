## Update as of Spring 2017
Everything contained in this folder is what our group inherited from the previous group. We've also come to refer to this folder as the Attic.
It contains PinGraph resources, which are components for one of the reports that Brad would like to see. It looks like a lot of work went into this page, so we were working to incorporate this into our reports. While we were able to see hardcoded test data here, we were never able to get it up and running with live data.
It also contains PromotionTenure resources (also known as the Box and Whisker report). Again, this page may show test data, but we were also never able to get this to display live data.

## EvalSystem

This is the document that will help you setup everything you need in order to get the EvalSystem working on your computer. Be advised that if we missed a step, feel free to add it to this document.

### NOTE:

PLEASE see the Eval System Specifications Document for more information on the Project and what you should do.

###### Create a GitHub Project
	1. Create a private project on one of your student accounts (You should have unlimited free private hubs)
	2. Download this github project
	3. Upload this github project to your own github project
	4. Add your group members as collaborators
	
We recommend using Trello as you work on this project throughout the semester to keep tabs on what people have worked on. It also helps with the note section that you will see on the Specifications Document when it comes to what is being worked on.

###### Implementing local database
	1. Download and install SQL Server Management Studio
	2. Load the Database
		a. Navigate to LocalDatabase/DatabaseCreation
		b. Run the SQL code to create the database
			i. Change the database name if desired before running

###### .NET Setup
This was in the original project, but they are supposedly moving to NodeJS, so as you can see a lot of what we will have in this document is based on the transfer to that. Be advised that they could scrap it and go back to .NET but lets pray that isn't the case.

	1. Download the Visual Studio project. Do not just click the solution to open it, that won't work.
	2. To open the project, open Visual Studio (2013 or newer). 
	3. Go to File > Open > Website, and navigate to the project folder (./EvalSystem/.Net_Project/CS Eval).
	4. Before you run the project, make sure to go to Tools > Nuget Package Manager > Manage Nuget Packages for Solution
		a. Update all packages in the project
	5. You should now not have any errors when running the project. Just focus one of the .html files and click the run in google chrome button. Once you connect .NET to the database, you should be ready for testing. There is a database connection manager in .NET, all you have to do is create that connection there and change a few lines in the web.config files.
	6. Most of your testing will be on the chitester dev server, which Brad will have the information for as it may change between semesters.

###### NodeJS Setup

1. Install the latest version of Node.js at: https://nodejs.org/en/

2. Go to node directory and...
	```
	npm install
	```

3. Edit the configvars.json to have the proper data.

4. Run the following command
	```
	npm run start
	```
As long as there are no errors, your server is now running locally at the port specified in the ./node/bin/www file. 

5. Open your web browser and navigate to 
	```
	127.0.0.1:[port specificied by bin/www]
	```

To understand NodeJS a little more, please read the nodereadme.md found in ./EvalSystem/node
###### Chitester Development Server
Talk to Brad/Lance Ure (or whoever your chitester contact may end up being).
