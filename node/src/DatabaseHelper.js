/*
    Libraries
*/
var sql = require('mssql');
var q = require('q');
var configvars = require('config.json')('./configvars.json');
/*
    DatabaseHelper Class
*/
var DatabaseHelper = (function() {
    
    /*
        CONSTRUCTOR: DatabaseHelper

        Extracts configuration variables from the configvars.json
    */
    function DatabaseHelper() {
        Object.defineProperties(this, {
            "config": {
                value: configvars.DatabaseConfig,
                writable: true
            }
        });
    };
    
    DatabaseHelper.prototype = Object.create({}, {
        
        /*
            METHOD: openConnection

            Params:

            Returns: Promise

            Behavior: Opens a connection to the sql server instance.
        */
        "openConnection": {
            enumerable: false,
            configurable: false,
            writable: false,
            value: function() {
                var deferred = q.defer();

                q.when(sql.connect(this.config), function() {
                    console.log("DB CONNECTION SUCCESSFUL");
                    deferred.resolve("Successful Connection");
                }).catch(function(err) {
                    console.log("ERROR ON DB CONNECTION: ", err);
                    deferred.reject(err);
                });
            
                return deferred.promise;
            }
        },
        /*
            METHOD: getSemesters

            Params: String yearList

            Returns: Promise

            Behavior: Takes a comma delineated string in the following format ... 
                yearList: '2017, 2016, 2015'
            ...and calls the sp_GetSemesters stored procedure in the database. sp_GetSemesters should
            return a recordset that contains a list of semesters at which point the promise resolves
            and returns that record set or rejects and returns an error in the case that the stored
            stored procedure did no execute properly.
        */
        "getSemesters": {
            enumerable: false,
            configurable: false,
            writable: false,
            value: function(yearList) {
                var deferred = q.defer();

                q.when(new sql.Request()
                    .input('YearList', sql.NVarChar, yearList)
                    .execute('sp_GetSemesters'), 
                function(recordsets) {
                    deferred.resolve(recordsets[0]);
                })
                .catch(function(err) {
                    deferred.reject(err);
                });

                return deferred.promise;
            }
        },
        /*
            METHOD: getDepartments

            Params: String yearList, String semesterList

            Returns: Promise

            Behavior: Takes two comma delineated String in the following formats ... 
                yearList: '2017, 2016, 2015'
                semesterList: 'Spring, Summer, Fall'
            ...and calls the sp_GetDepartments stored procedure in the database. sp_GetDepartments should
            return a recordset that contains a list of departments at which point the promise resolves
            and returns that record set or rejects and returns an error in the case that the stored
            stored procedure did no execute properly.
        */
        "getDepartments": {
            enumerable: false,
            configurable: false,
            writable: false,
            value: function(yearList, semesterList) {
                var deferred = q.defer();

                q.when(new sql.Request()
                    .input('YearList', sql.NVarChar, yearList)
                    .input('SemesterList', sql.NVarChar, semesterList)
                    .execute('sp_GetDepartments'), 
                function(recordsets) {
                    deferred.resolve(recordsets[0]);
                })
                .catch(function(err) {
                    deferred.reject(err);
                });

                return deferred.promise;
            }
        },
        /*
            METHOD: getCourses

            Params: String yearList, String semesterList, String departmentList

            Returns: Promise

            Behavior: Takes three comma delineated String in the following formats ... 
                yearList: '2017, 2016, 2015'
                semesterList: 'Spring, Summer, Fall'
                departmentList: 'CS, MATH, ENG'
            ...and calls the sp_GetCourses stored procedure in the database. sp_GetCourses should
            return a recordset that contains a list of Courses at which point the promise resolves
            and returns that record set or rejects and returns an error in the case that the stored
            stored procedure did no execute properly.
        */
        "getCourses": {
            enumerable: false,
            configurable: false,
            writable: false,
            value: function(yearList, semesterList, departmentList) {
                var deferred = q.defer();

                q.when(new sql.Request()
                    .input('YearList', sql.NVarChar, yearList)
                    .input('SemesterList', sql.NVarChar, semesterList)
                    .input('DepartmentList', sql.NVarChar, departmentList)
                    .execute('sp_GetCourses'),
                function(recordsets) {
                    deferred.resolve(recordsets[0]);
                })
                .catch(function(err) {
                    deferred.reject(err);
                });

                return deferred.promise;
            }
        },
//<<<<<<< HEAD
        /*
            UNUSED

            METHOD: getPinGraphData

            Params: N/A

            Returns: N/A

            Behavior: N/A



            INTENTED PURPOSE: This method should grab data required for the front end pingraph

            TODO: Figure out what data is required for the front end pingraph and what params are 
            needed to query for that data. Build stored procedure in database and call it from
            this method wrapped in a promise.
        */
        "getPinGraphData": {
//=======
//        "": {
//>>>>>>> 63ea23e94ba2e6f84531e015a4889ba96c4c51d8
            enumerable: false,
            configurable: false,
            writable: false,
            value: function() {
                
                var query = 
                    /*
                    "SELECT " +
                    "instructorid, subjectcode + ' ' + courseNumber AS course, " +
                    "year, semester, 'score', 'permission', bannerCRN AS crn " +
                    "FROM CourseSections";
                    */
                    "SELECT DISTINCT [Year] " +
                    "FROM CourseSections";
                    
                
                return executeQuery(query);
            }
        },
        /*
            METHOD: closeConnection

            Params:

            Returns:

            Behavior: Closes the current connection connection to the sql server instance.
        */
        "closeConnection": {
            enumerable: false,
            configurable: false,
            writable: false,
            value: function() {
                console.log("CLOSING CONNECTION");
                sql.close();
            }
        }
    });

    /*
            UNUSED

            HELPER METHOD: executeQuery

            Params: String query

            Returns: Promise

            Behavior: This method takes a valid T-SQL query in string format and executes it.A
            On a successful execution it resolves the promise and returns the recordset from
            the query. On an unsuccessful execution is rejects the promise and returns an error.
    */
    function executeQuery(query) {
        var deferred = q.defer();
        var seriesCollection;
            
        console.log("OPENING CONNECTION");

        q.when(new sql.Request().query(query), function(recordset) {
            deferred.resolve(recordset);
        }).catch(function(err) {
            deferred.reject(err);
        });

        return deferred.promise;
    }
   
    return DatabaseHelper;
})();

module.exports = DatabaseHelper;