/*
    This is a default route built by express. I am leaving it here so it can be modified if it 
    is chosen for project to be integrated with another app codebase.
*/

/*
    Libraries
*/
var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Weber Eval System' });
});

module.exports = router;