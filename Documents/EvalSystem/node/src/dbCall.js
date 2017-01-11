/*
Purpose of this function was to call a method on DatabaseHelper dynamically.
I haven't yet gotten it to work with stored procedures, perhaps future developers can take a crack at it.
*/
var q = require('q');

function dbCall(db, method) {
    var deferred = q.defer();
    
    q.when(db.openConnection()
        .then(function() {
            db[method].apply(this, Array.prototype.slice.call(arguments, 2))
            .then(function(recordset) {
                deferred.resolve(recordset);
                db.closeConnection();
            })
            .catch(function(err) {
                console.log(err);
            });
        })
        .catch(function(err) {
            deferred.reject(err);
        })
    );

    return deferred.promise;
}

module.exports = dbCall;