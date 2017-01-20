WeberEvalNodeServer
===================

Authors: Jake McBride, Grant Kakazu, Jacob Doktor, Mike Larsen

Version Log: 0.0.1 on 8/8/2016 -Basic web server able to respond to client requests with data from an MSSQL database.

Github: https://github.com/michaellarsen10/EvalSystem_SE3

Introduction
============

Greetings!
--------

Hello reader, we are going to cover some basics about what the heck you are looking at in this folder and what we it is used for. Let's jump right in!

Node
----

This folder contains a Node server.

What is node? Node is a JavaScript runtime. It is a way to run Javascript WITHOUT a browser. More specifically it is a C++ program that uses an embedded V8 engine (also written in C++) to compile JavaScript code straight into machine code. The cool part about Node is that it's open source! This means you can actually extend Node to do things that aren't in the ECMA standards or add functionality that isn't in it's standard libs. Right out the gate node includes some useful libs for HTTP, READING FILES, DNS, Encryption and Decryption, and much more. Sound overwhelming? Don't worry you won't be extending any node. It's just good to know that you can. You'll just be learning how to extend this server in this directory.

_If you wish to read more into how node compares to other technologies, I reccomend this article that compares it to ASP.NET: https://gist.github.com/ilyaigpetrov/f6df3e6f825ae1b5c7e2_

The Server
----------

The basic of the Server - actually a web server but we'll just call it Server - is as follows. The Server gets requests from the Client through what's called **routes**. It will then execute some code depending which **route** is called and at some point give a response to the Client. At some point in the middle, the Server might do some calculations with the inputs given to it by the Client or in most cases (currently all at this time of writing), it will act as a middle man for the Client and Database by reaching out to the database and getting the data we need.

That's it. Simple.

To reiterate: a use case would be as follows...

**Client** - makes request -> **Server** - connects to and queries data from -> **Database** - returns data to -> **Server** - responds to -> **Client**

How It Works
------------

If one wanted, you could write your server code from scratch. However, as is true in most cases, we use a Library to handle all the boiler plate for us; No need to re-invent the wheel (unless that's our actual purpose). The library we are using is called **Express**.

_You can find documentation on express here: https://expressjs.com/_

Parts of the Server
===================

First, a Little Abstraction
--------------------------

We will be covering the parts of the server - BUT - instead of getting granular and explaining every little detail, we are going to abstract ourselves away from a down and dirty raw server written in Node and just look at what parts are needed to extend the Server.

Routes
------

Routes are sections of code where we will define our Server's endpoints or URI (_https://expressjs.com/en/starter/basic-routing.html_).

Routes exist in the **routes** directory. A route looks like this...

```
var express = require('express');
var router = express.Router();
var DatabaseHelper = require('../src/DatabaseHelper');
```

```
router.post('/getSemesters', function(req, res, next) {
    var db = new DatabaseHelper();
    
    var reqBody = req.body;
    var yearList = reqBody.yearList;
    
    db.openConnection()
    .then(function() {
        db.getSemesters(yearList)
        .then(function(records) {
            res.json(records);
        }).catch(function(err) {
            console.log(err);
        });
    }).catch(function(err) {
        console.log(err);
    });
});
```

I have broken out the code above into two sections. 

The first section is where we create some objects that we need to use to build our route or execute code based upon parameters the client gives to us. We use the **require** method built in Node to create an **Express** object, then we call the **Router** method on the **Express** object to create our **Router** object. We then call the **Require** method again to bring in our DatabaseHelper module (can also be referred to as a class though it is written in ES5 instead of ES6 or TypeScript).

_A good tutorial on how **require** works, and much of Node for that matter, is here: https://www.udemy.com/understand-nodejs/learn/v4/overview_

The second section is where we define a route. We call the **Post** method on the **Router** object to create our route. **Post** takes two parameters. The first is the relative path that we want to have our endpoint/URI at, and the second is a callback containing the 3 parameters: the request object, a response object, and 

