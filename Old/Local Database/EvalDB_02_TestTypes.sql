	CREATE TABLE TestTypes(
		ID tinyint NOT NULL PRIMARY KEY,
		name nvarchar(40) NOT NULL,
		shortname nvarchar(15) NOT NULL
	);
	
		INSERT INTO TestTypes (ID, name, shortname)
		VALUES(1, 'Online Test', 'Online');
	
		INSERT INTO TestTypes (ID, name, shortname)
		VALUES(2, 'ScanTron Test', 'ScanTron');
	
		INSERT INTO TestTypes (ID, name, shortname)
		VALUES(3, 'Paper Test', 'Paper');
	
		INSERT INTO TestTypes (ID, name, shortname)
		VALUES(4, 'Survey', 'Survey');
	
		INSERT INTO TestTypes (ID, name, shortname)
		VALUES(5, 'Course Evaluation', 'Course Eval');
	
		INSERT INTO TestTypes (ID, name, shortname)
		VALUES(6, 'Download Test', 'Download');
	
		INSERT INTO TestTypes (ID, name, shortname)
		VALUES(7, 'Attendance', 'Attendance');