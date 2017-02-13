/*
	This script abstracts your basic express boilerplate code for creating routes into a single method
	that reads through the routes folder and sets up controllers for all the routes in there.
*/
'use strict';

var fs = require('fs');

function SetupRoutes(app) {
	return new Promise((resolve, reject) => {
		fs.readdir('./routes', function(err, files) {
			if(err)
				return reject(err);

			var index = files.indexOf('routeconfig.js');
			files.splice(index, 1);

			try {
				files.forEach(f => {
					let fileName = f.substr(0, f.length - 3);
					let controller = require(`./${fileName}`);
					app.use(`/${fileName}`, controller);
				});
				app.use('/', require('.'));
			}
			catch(err) {
				reject(err);
			}

			resolve(app);
		});
	});
}

module.exports = SetupRoutes;