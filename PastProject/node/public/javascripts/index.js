    console.log("Javascript loaded");

    var settings = {
        "async": true,
        "crossDomain": true,
        //heroku testing
        //"url": "http://weberevalnodeserver.herokuapp.com/pingraph/",
        //"url": "http://weberevalnodeserver.herokuapp.com/pingraph/getSemesters",
        //"url": "http://weberevalnodeserver.herokuapp.com/pingraph/getDepartments",
        //"url": "http://weberevalnodeserver.herokuapp.com/pingraph/getCourses",
        //local testing
        //"url": "http://localhost:3000/pingraph/getSemesters",
        "url": "http://localhost:3000/pingraph/test"
        //"url": "http://localhost:3000/pingraph/getDepartments",
        //"url": "http://localhost:3000/pingraph/getCourses",
        "method": "POST",
        //"method": "GET",
        "headers": {
            "content-type": "application/json",
            "cache-control": "no-cache",
            //"postman-token": "c9fe3be2-4cbb-adcb-af7d-65f56a17d51d"
        },
        "processData": false,
        "data": "{\n \"yearList\": [\"2016\", \"2015\", \"2014\"]\n }"
        //"data": "{\n \"yearList\": [\"2016\",\"2015\",\"2014\",\"2013\",\"2012\",\"2011\",\"2010\",\"2009\",\"2008\",\"2007\",\"2006\"]\n }"
        /*
        "data": "{\n" +
        " \"yearList\": [\"2016\",\"2015\",\"2014\",\"2013\",\"2012\",\"2011\",\"2010\",\"2009\",\"2008\",\"2007\",\"2006\"],\n" +
        " \"semesterList\": [\"Fall\", \"Spring\", \"Summer\"],\n" +
        " \"departmentList\": [\"CS\"]\n" +
        " }"
        */
        /*
        "data": "{" +
        "   yearList: [2016,2015,2014,2013,2012,2011,2010,2009]," +
        "   semesterList: [Fall, Spring, Summer]," +
        "   departmentList: [CS]" +
        "}";
        */
    }
    
    var test = function() {
        $.ajax(settings).done(function (response) {
            console.log(response);
            for(var i = 0; i < response.length; i++) {
                var div = document.createElement('div');
                div.innerHTML = response[i][Object.keys(response[i])[0]];
                document.body.appendChild(div);
            }
        });
    }

    var test2 = function() {
        console.log(arguments);
        console.log(Array.prototype.slice.call(arguments, 1));
    }

    //test2(1,2,3);