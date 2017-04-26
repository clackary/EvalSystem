## README
How to implement and use the api for your project.

### Before you begin setting up this API:

---

Speak with Rob Hilton about getting permission to access the CS4450Spring2017 database on Titan.  At the time of writing this it should look like this:
 
![Database Image](/API/README_Images/DatabaseNameAndStructure.png)

If it still exists you won’t have to generate the database all over again (the database creation scripts are included in the project if you need to rebuild this.  It’s about 700,000 lines of code total, so reusing this will save you a lot of time)

---

The API to handle database calls is written in PHP, though Chitester will most likely use Python, they will most likely need to re-code your database calls into python when the time comes.  We were never solid on what language they would be using, so we just picked one that will work as a middle-man between the front end and the database.  

This PHP API relies on a few packages that you will need to install using composer. 

Composer is a package manager similar to npm for JavaScript.  If you want to learn about composer on your own, visit https://getcomposer.org/

You do not need to learn extra about Composer, this readme will explain the process, step by step, to import all of the libraries that the API relies on.
 
Composer will instantiate a PSR-4 autoloader so you will not need to "require" anything except for the file that runs the autoloader (require is like C++'s #include or Java's import statement).  The packages that will be autoloaded are called “firebase/php-jwt” and “nikic/fast-route”.  Icarus has Composer installed and is a viable option for hosting this API, but you can use any PHP and Composer enabled server to host this.  

We will go through setting it up on Icarus as that is where we know it will work the way it is supposed to.

## Setting up your environment

SSH into Icarus using this information and sign in using your username and password.
 
![SSH into Icarus with PuTTY](/API/README_Images/PuTTYsetup.png)

Every CS student has a ~xx01234 directory, you will automatically be placed in your directory when you log in.  Inside this directory you have a "public_html" directory, CD into it.  Make a new directory here and call it whatever you wish, we will call ours CS4450API.

![Composer step 1](/API/README_Images/composer01.png)

Run **“composer init”**

![Composer step 2](/API/README_Images/composer02.png)

(These next steps are shown in the image below)

* Give it 
  * a creator name / project name,
  * a description, 
  * an author name if you wish, 
  * a minimum stability 
    * (stable is recommended, we don’t want to rely on anything that’s not stable),
  * tell composer that this will be a “project”, 
  * paste in a license agreement, or come up with one yourself 
    * (you can also just put in a single character to skip this)
  * say “no” to defining dependencies interactively 
    * (we are only importing 2, it’s just easier to do it manually)
  * Say “no” again, same reason
  * Say “yes” to confirm generating this json file that composer will rely on for autoloading and importing
    * (we will modify it manually in a minute)

![Composer step 3](/API/README_Images/composer03.png)
 
Once this is created we want to tell composer to download the libraries we need from the repository (I believe it will use https://packagist.org/ by default, you can search for other useful packages there)

type: **composer require firebase/php-jwt** 
(this might take a minute to install, let it run)

![Composer step 4](/API/README_Images/composer04.png)

type: **composer require nikic/fast-route** 
(again, this might take a minute to install, let it run)

![Composer step 5](/API/README_Images/composer05.png)

Now open the composer.json file that was created by composer for editing.  You can edit it using something like vim or you can download it, modify it, and reupload.  As long as it is modified correctly the method does not matter.

![Composer step 6](/API/README_Images/composer06.png)

 
We need to tell it what kind of autoloader to use.  This information MUST go before the “require” line or it won’t work.

we will insert a new object as “autoload” and tell to use a “psr-4” autoloader, then give it a namespace, we will use CS4450 and tell it what directory to include in this namespace.  It’s a little confusing, but if you look at the example picture you will see that we are giving the namespace “CS4450” to anything in the “src” directory.


The lines that were added were from 7 to 11, don’t forget that you need to escape the \ by giving it another \ right bofore ( so \\ ) and  the comma at the end of line 11 is easily missed.
 
![Composer step 7](/API/README_Images/composer07.png)
 
Save this file back to Icarus and go back to the command prompt.  

type: **composer dump-autoload**

This will tell composer to rebuild dependency files to reflect the changes we made to composer.json

![Composer step 8](/API/README_Images/composer08.png)
 
Now it’s time to upload all of the API files from the project in to the correct directories.  You can zip it, upload it, and unzip it, or just move files one at a time (there’s not that many).  The structure will look like this:

Create an “src” directory and start moving files over.

![Composer step 9](/API/README_Images/composer09.png)

 

I think the .DS_Store file was automatically generated, I would try doing all of this **without** copying these files first.


The next step is to modify your **.htaccess** file to reflect the directory you chose

![Modifying .htaccess](/API/README_Images/htaccess.png)

And the final step is to make your config.php file reflect your path and credentials to connect to the database

![Modifying config.php](/API/README_Images/modifyConfig.png)

## Now test it out!  

I recommend downloading the Chrome extension called Postman, it's free and it's kinda wonderful for this.

![Test using Postman](/API/README_Images/testUsingPostman.png)

## If all goes well, lets see how to modify the API with new functions and end points

An **"end point"** is an item that you might want, like an *instructor* or a *course*.  They do not need to be a table in a database, they could be any unit you would like.  For example, if you have a "person" table, a "location" table, and a "jobs" table.  Your API might want to combine these with some joins to make the "person" end point.  If you think the front end using this end point might usually want their location and job information, you might as well stick it on there.  

Lets make a new end point and see how this works.

The "Questions" table in the database might be useful, but the "QuestionTypes" are represented by a foreign key.  The front end that displays this information might not want to just display the keys to the table, but the actual types.  You'll also notice that the column names in the database Chitester gave us have really ambiguous names.  It would probably be beneficial to alias them.

![Showing Questions and QuestionTypes](/API/README_Images/editingAPI01.png)

Lets combine these two tables and fix the names

![Combine the previous tables into one and fix the names](/API/README_Images/editingAPI02.png)

Now lets make a new end point in the API.  First we need to make a controller to handle this endpoint.  Lets call it **QuestionsController**.  The easiest way to create a new end point controller is to just copy one of the others and modify it.  Keep the parts that are definitely still needed, like the creation of the database object (the $db object). And the $data object is to capture information sent in an HTTP request's body.  These 2 lines:

$db = DatabaseConnection::getInstance();
$data = (object) json_decode(file_get_contents('php://input'));

Lets copy one of the other Controllers and repurpose it.

![Creating a new Controller for an end point](/API/README_Images/editingAPI03.png)

And now lets move the query over to the API

![Copy pasting the query we built](/API/README_Images/editingAPI04.png)

Now lets use the $db object to create a [PDOStatment](http://php.net/manual/en/class.pdostatement.php).  The $db object is an instantiation of the PDO class, a way to make prepared database calls is the preferred way to do database calls in PHP.  If you are unfamiliar with prepared statements/database calls please do a little research on the topic before moving on.

We create a query string then pass this onto the database object to create a statement.  If we have any variables we need to inject into the query we would do it here.  This specific database call does not have any variables (like getting a question by ID).

![Creating a PDOStatement to execute this query](/API/README_Images/editingAPI05.png)

Now lets execute this query.  The PDOStatement will contain the results of this query.

![Execute the PDOStatement](/API/README_Images/editingAPI06.png)

Now let's capture and return the results.  Using the statement's fetchAll() function will create a 2 dimensional array containing the rows from the query.  Using the statement's fetch() function will return a 1 dimension array that contains the top row from the results, and it will also remove that top row from the statement's results.  If you use a loop like 

while($row = $stmt->fetch()) { 
  // do stuff with that row 
}

The while loop will end when the $stmt runs out of rows.

These "fetch" calls return extra data though, the default empty function call will return integer indexed results and named results.  Lets drop the integer copies as we really won't need them and make the returning data smaller (for speed).  The PDO::FETCH_ASSOC flag will tell it to drop the integer indexed results and not return doubles of everything.

![Getting data from the statement after executing](/API/README_Images/editingAPI07.png)

And now let's return the data.  The imported packages will handle most of the heavy lifting.  It will convert all of our results to json for us, but we aren't done quite yet.

![Return the data](/API/README_Images/editingAPI08.png)

Now it's time to link up our data with an HTTP request.  This way the front end can make Ajax calls.

Generally we use the GET http request for getting data, POST for creating data, DELETE for deleting data, etc.  There are quite a few HTTP request types, if you are interested or need one of the other types, just look them up.

We are doing nothing but requesting data, so let's create a route for this data.  In an earlier example we were able to use https://icarus.cs.weber.edu/~nb06777/CS4450API/instructors to get a list of instructors using a GET http request.  Lets do the same thing but use https://icarus.cs.weber.edu/~nb06777/CS4450API/questions with a GET http request to get our new data.

Add a new route in api.php (It will add to the FastRoute object that already exists.  Remember, FastRoute was a package we installed using Composer, it will do a TON of the heavy lifting for us)

![Adding a route](/API/README_Images/editingAPI09.png)

Now, the last parameter is a callback function.  We need to make this function and pass it to this route.  We will name it $handleGetAllQuestions.

![Creating a callback function](/API/README_Images/editingAPI10.png)

And now we return the data we fetched in the QuestionsController.

![returning the data we fetched earlier](/API/README_Images/editingAPI11.png)

Now, if we test it out in Postman, you should get an array containing every row converted to a json object.

![using Postman to do an HTTP request to get our data](/API/README_Images/editingAPI12.png)

Success!

Let's add another route but to get only a specific testID.  Add another route with  '/{testID:\d+}' added.  Because we are now accepting a parameter after our endpoint (something like https://icarus.cs.weber.edu/~nb06777/CS4450API/questions/489056823) we need to pass in the $args as shown in the image.

![Add a route to get questions by testID](/API/README_Images/editingAPI13.png)

And let's add another function to our QuestionsController to handle this.

![Adding the ability to get questions by testID in the controller](/API/README_Images/editingAPI14.png)

Now we have a variable like we talked about before.  So we need to stick a flag in the query that we will replace later after we prepare the query using a bindValue() function call.

![binding a variable to the query](/API/README_Images/editingAPI15.png)

Now we can just do as we did before, execute it and return the data.

![returning the data again](/API/README_Images/editingAPI16.png)

Let's try it out in Postman.

![Trying it out again](/API/README_Images/editingAPI17.png)
---

If you would like to see Josh Jensen explain the composer setup process, visit https://www.youtube.com/watch?v=EukLS5fdXCQ
Hopefully it’s still live.  It is a little on the low quality side and he takes a long time to explain.  Hopefully with these two tutorials combined you can get this working.

Josh Jensen is also the one who taught me how to build an API like this except this one has the "tokens" disabled.  Chitester has their own tokens system and I have no idea how theirs works.  Better to leave ours off so it doesn't conflict.  If you have issues getting this working I highly recommend talking to Josh, he's very nice and extremely knowledgeable.
