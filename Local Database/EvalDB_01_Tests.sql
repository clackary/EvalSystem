	CREATE TABLE Tests(
		ID int NOT NULL PRIMARY KEY,
		testName nvarchar(100) NOT NULL,
		created datetime NOT NULL,
		creatorID int NOT NULL,
		typeID tinyint NULL,
		deleted bit NOT NULL CONSTRAINT DF_Tests_deleted  DEFAULT ((0))
	);
	CREATE NONCLUSTERED INDEX IX_Tests ON Tests(creatorID);
	CREATE NONCLUSTERED INDEX IX_Tests_1 ON Tests(typeID);
	CREATE NONCLUSTERED INDEX IX_Tests_deleted ON Tests(deleted);
	CREATE NONCLUSTERED INDEX IX_Tests_testName ON Tests(testName);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(15344, 'Eval School of Business and Economics', '2006-03-22 09:12:02.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(23249, 'Eval Dept English Onl', '2008-03-28 09:32:47.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(23403, 'Eval College of Science', '2008-04-11 16:21:59.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(27438, 'Independent Study Assessment', '2009-03-10 11:19:37.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(35415, 'Eval College Coast Online', '2010-03-19 12:38:21.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(36271, 'Eval Dental Hygiene Course', '2010-04-14 17:41:50.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(36272, 'Eval Dental Hygiene Faculty', '2010-04-14 17:58:08.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(48944, 'Eval Dept of Communications', '2008-04-04 17:37:49.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(55546, 'Eval Dept of BSAD', '2012-05-23 17:12:06.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(64529, 'Eval Dept of CS - OLD', '2013-03-27 18:46:53.0', 990043607, 5, 1);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(66201, 'Eval Dept of ECON', '2012-05-23 17:12:06.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(69088, 'POLS 4160 Wolfe Quiz 3 Genocide', '2013-10-03 15:14:24.0', 550112467, 1, 1);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(69208, 'Eval Dept of Automotive', '2013-10-02 16:39:32.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(69210, 'Eval Dept of School of Computing', '2013-10-02 16:39:32.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(69211, 'Eval Dept of Engineeringx', '2013-10-02 16:39:32.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(69212, 'Eval Dept of Construction Management', '2013-10-02 16:39:32.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(69213, 'Eval Dept of Engineering Technology', '2013-10-02 16:39:32.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(69215, 'Eval Dept of SST', '2013-10-02 16:39:32.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(69480, 'Eval Dept of GEO', '2013-10-15 12:17:16.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(70459, 'Eval Dept of EDUC', '2013-10-14 12:38:42.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(70474, 'Eval Dept of ZOOL', '2013-10-30 12:09:05.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(74577, 'Eval College of Continuing Education for Concurrent Courses', '2013-10-16 15:27:37.0', 990043607, 5, 0);
	
		INSERT INTO Tests (ID, testName, created, creatorID, typeID, deleted)
		VALUES(82595, 'EVAL College of Related Curriculum', '2015-01-29 14:12:41.0', 990043607, 5, 0);