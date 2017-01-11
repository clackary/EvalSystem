/*
    Libraries
*/
var express = require('express');
var router = express.Router();
var DatabaseHelper = require('../src/DatabaseHelper');
//var dbCall = require('../src/dbCall');

/*
    Route for getting semesters
    
    PARAMS
    {
        "yearList": [@year, @anotheryear]
    }
    
    RETURN
    [
        'Spring',
        'Summer',
        'Fall'
    ]
*/
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

/*
    Route for getting departments

    PARAMS
    {
        "yearList": [@year, @anotherYear],
        "semesterList": [@semester, @anotherSemester]
    }
    
    RETURN
    [
        'CS',
        'MATH',
        'ENGL'
    ]
*/
router.post('/getDepartments', function(req, res, next) {
    var db = new DatabaseHelper();
    
    var reqBody = req.body;
    var yearList = reqBody.yearList;
    var semesterList = reqBody.semesterList;

    db.openConnection()
    .then(function() {
        db.getDepartments(yearList, semesterList)
        .then(function(records) {
            res.json(records);
        }).catch(function(err) {
            console.log(err);
        });
    }).catch(function(err) {
        console.log(err);
    });
});

/*
    Route for getting courses

    PARAMS
    {
        "yearList": [@year, @anotherYear],
        "semesterList": [@semester, @anotherSemester],
        "departmentList": [@department, @anotherDepartment]
    }
    
    RETURN
    [
        'CS 1010',
        'MATH 2010',
        'ENGL 3010'
    ]
*/
router.post('/getCourses', function(req, res, next) {
    var db = new DatabaseHelper();

    var reqBody = req.body;
    var yearList = reqBody.yearList;
    var semesterList = reqBody.semesterList;
    var departmentList = reqBody.departmentList;

    db.openConnection()
    .then(function() {
        db.getCourses(yearList, semesterList, departmentList)
        .then(function(records) {
            res.json(records);
        }).catch(function(err) {
            console.log(err);
        });
    }).catch(function(err) {
        console.log(err);
    });
});
/*
    Route for getting pingraph data after everything else has been satisfied

    PARAMS
    {
        "courseList": [@course, @anotherCourse],
        "userID": @UserID
    }
    
    RETURN
    [
        TestId  teacher coursescatalogYear  calendarYear    semesters   semesterNumber  Score       permission  bannerCRN   LikertMin   LikertMax
        69210           CS1010              2013            Fall        2               3.431734    3           20924       0           4
    ]
*/
router.post('/getPingraphData', function(req, res, next) {
    var db = new DatabaseHelper();

    db.openConnection()
    .then(function() {
        db.getPinGraphData(courseList, userID)
        .then(function(records) {
            res.json(records);
        }).catch(function(err) {
            console.log(err);
        });
    }).catch(function(err) {
        console.log(err);
    });
});

router.post('/test', function(req, res, next) {
    res.render('test');
});

module.exports = router;