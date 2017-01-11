# EvalSystem

## Pin Graph

* This section contains all the CSS, Javascript, and HTML and PHP required to run locally.

* In addition we have incorporated Jasmine Unit testing to identify any issues within the pin graph. 

* The just of this Pin Graph is to generate the graph with pins of data that represent a single eval where  (1 pin == 1 eval). This pin graph has been modified with stable sorting and with extensive code overhauling to increase performance and reliability across various browsers. 


* Each pin is color coded to represent different visibility attatchments that need to be based off of the current user roll.


* The pin graph as of right now utilizes PHP to connect to the database and retrieve information. It will however need to be replaced with Cold Fusion. As of now each pin is a JSON object that is being called through PHP and being parsed using the JSON parse method. 


### Pin Graph Methods


* generateGraph()- this method genereates the pin graph by sifting through all of the json objects and populating the graph itself with pin objects using KnockOut. 

* sortPinGuiArr()- Each of the sorts on this pin graph is stable and will sort by clicking on one of the table links that the top of the table located below the graph itself. 

* save()- the save method saves each of the pins in the knockout array and will allow for the user to click the pins on the  graph to enter into the associated Eval for the clicked pin object. 


## TODO's

* have the correct page with correct parameters display upon clicking one of the pins. 

* make the ends of the pin graph be dynamic to fit likered scaling to allow for displaying for different colleges

* do not allow information to be clicked if the eval should not be able to be viewed based off of role

* incorporate with pictures to demonstrate pins with data and without data 

* include how the pin is getting its data from various portions of the database 

