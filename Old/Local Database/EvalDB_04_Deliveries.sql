	CREATE TABLE Deliveries(
		ID int NOT NULL PRIMARY KEY,
		courseID int NULL,
		availableFrom datetime NOT NULL,
		availableUntil datetime NOT NULL,
		feedbackDuringReview bit NOT NULL CONSTRAINT DF_Deliveries_feedbackDuringReview  DEFAULT (1),
		feedbackDuringTest bit NOT NULL CONSTRAINT DF_Deliveries_feedbackDuringTest  DEFAULT (0),
		feedbackGiveScore bit NOT NULL CONSTRAINT DF_Deliveries_feedbackGiveScore  DEFAULT (1),
		feedbackSummaryEmail bit NOT NULL CONSTRAINT DF_Deliveries_feedbackSummaryEmail  DEFAULT (1),
		inAndOutLink nvarchar(80) NULL,
		instructions text NULL,
		maxLimitDuration int NULL,
		reviewEnabled bit NOT NULL CONSTRAINT DF_Deliveries_reviewEnabled  DEFAULT (1),
		reviewAnywhere bit NOT NULL CONSTRAINT DF_Deliveries_reviewAnywhere  DEFAULT (0),
		reviewOnlyAfterTest bit NOT NULL CONSTRAINT DF_Deliveries_reviewOnlyAfterTest  DEFAULT (0),
		reviewOnlyMissedQuestions bit NOT NULL CONSTRAINT DF_Deliveries_reviewOnlyMissedQuestions  DEFAULT (1),
		reviewTimeLimit nvarchar(30) NULL,
		gradebookCode nvarchar(30) NULL,
		gradebookSendPercentage bit NOT NULL CONSTRAINT DF_Deliveries_gradebookSendPercentage  DEFAULT (1),
		projectedDuration int NULL,
		randomizeQuestions bit NOT NULL CONSTRAINT DF_Deliveries_randomizeQuestions  DEFAULT (1),
		randomizeDistractors bit NOT NULL CONSTRAINT DF_Deliveries_randomizeDistractors  DEFAULT (0),
		randomizeCategories bit NOT NULL CONSTRAINT DF_Deliveries_randomizeCategories  DEFAULT (0),
		securityConfidentialIDs bit NOT NULL CONSTRAINT DF_Deliveries_securityConfidentialIDs  DEFAULT (0),
		securityGoBack bit NOT NULL CONSTRAINT DF_Deliveries_securityGoBack  DEFAULT (1),
		securityOncePerID bit NOT NULL CONSTRAINT DF_Deliveries_securityOncePerID  DEFAULT (1),
		securityPassword nvarchar(15) NULL,
		securityTakeAnonymously bit NOT NULL CONSTRAINT DF_Deliveries_securityTakeAnonymously  DEFAULT (0),
		securityTakeWithID bit NOT NULL CONSTRAINT DF_Deliveries_securityTakeWithID  DEFAULT (1),
		securityIDList bit NOT NULL CONSTRAINT DF_Deliveries_securityIDList  DEFAULT (0),
		sectionDeliveries bit NOT NULL CONSTRAINT DF_Deliveries_sectionDeliveries  DEFAULT (0),
		testBankSubSet int NULL,
		autosend bit NULL,
		scoringremovespaces bit NULL,
		pointsToAdd tinyint NULL,
		scoringMethod tinyint NULL,
		timedTest int NULL,
		consent bit NULL,
		reviewPassword bit NULL,
		missedQuestions bit NULL,
		securityAttemptsPerID tinyint NULL,
		showAllQuestions bit NOT NULL DEFAULT ((0)),
		multResponseScoringMethod tinyint NULL DEFAULT ((0)),
		questionsAllAtOnce bit NULL,
		faceToface bit NULL,
		online bit NULL,
		indepStudy bit NULL,
		insteadOf bit NULL,
		gradesLastSent datetime NULL,
		reviewShowCorrectAnswers bit NULL,
		cueSheets varchar(16) NULL,
		notes varchar(16) NULL,
		scratchPaper bit NULL,
		openBook bit NULL,
		englishDictionary bit NULL,
		paperForeignDict bit NULL,
		electronicForeignDict bit NULL,
		calculator4Function bit NULL,
		calculatorScientific bit NULL,
		calculatorGraphing bit NULL,
		calculatorFinancial bit NULL,
		calculatorCenterProvided bit NULL,
		writeOnExam bit NULL,
		restroomBreak bit NULL,
		feedbackGiveScorePercent bit NULL,
		feedbackGiveScoreAfterTestRun bit NULL,
		feedbackStudentReport bit NULL,
		feedbackStudentReportAfterTestRun bit NULL,
		fee varchar(12) NULL,
		feedbackShowStudentResponses bit NULL,
		feedbackShowCorrectAnswers bit NULL,
		studentComments bit NULL,
		staffinstructions text NULL,
		notestoself text NULL
	);
	CREATE NONCLUSTERED INDEX IX_Deliveries ON Deliveries(courseID);
	CREATE NONCLUSTERED INDEX IX_Deliveries_availableFrom ON Deliveries(availableFrom);
	CREATE NONCLUSTERED INDEX IX_Deliveries_availableUntil ON Deliveries(availableUntil);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(15366, '2016-11-28 00:00:00.0', '2016-12-15 23:59:00.0', 0, 1, NULL, 0);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(23248, '2016-11-21 00:01:00.0', '2016-12-16 23:59:00.0', 0, 0, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(23400, '2016-11-28 00:00:00.0', '2016-12-15 23:59:00.0', 0, 1, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(27424, '2009-03-10 00:00:00.0', '2020-08-15 23:59:00.0', NULL, NULL, 1, 0);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(35358, '2016-11-28 00:00:00.0', '2016-12-15 23:59:00.0', 0, 1, NULL, NULL);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(36188, '2016-11-28 00:00:00.0', '2016-12-15 23:59:00.0', 1, 0, NULL, NULL);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(36189, '2016-11-28 00:00:00.0', '2016-12-15 23:59:00.0', 1, 0, NULL, NULL);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(48824, '2016-11-28 07:30:00.0', '2016-12-15 23:59:00.0', 0, 0, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(55426, '2016-11-14 07:30:00.0', '2016-12-20 23:59:00.0', 0, 0, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(64407, '2013-07-29 00:00:00.0', '2013-08-11 23:59:00.0', 0, 0, NULL, NULL);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(66079, '2016-11-27 14:39:00.0', '2016-12-19 23:59:00.0', 0, 0, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(68966, '2013-10-03 00:00:00.0', '2013-10-07 22:00:00.0', NULL, NULL, NULL, NULL);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(69086, '2017-01-09 00:00:00.0', '2017-04-30 23:59:00.0', 0, 0, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(69088, '2016-11-21 00:00:00.0', '2016-12-09 23:59:00.0', 1, 1, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(69089, '2016-11-21 00:01:00.0', '2016-12-12 23:59:00.0', 0, 0, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(69090, '2016-11-28 00:00:00.0', '2016-12-15 23:59:00.0', 1, 1, 0, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(69091, '2016-11-28 00:00:00.0', '2016-12-15 23:59:00.0', 1, 1, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(69093, '2016-11-28 00:00:00.0', '2016-12-15 23:59:00.0', 1, 1, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(69358, '2016-11-28 00:00:00.0', '2016-12-15 23:59:00.0', 1, 1, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(70337, '2016-11-22 22:59:00.0', '2016-12-19 23:59:00.0', 0, 0, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(70352, '2016-11-28 00:00:00.0', '2016-12-15 23:59:00.0', 1, 0, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(74455, '2016-11-29 00:00:00.0', '2017-03-03 23:59:00.0', 0, 0, NULL, 1);
	
		INSERT INTO Deliveries (ID, availableFrom, availableUntil, facetoface, online, indepstudy, insteadof)
		VALUES(82473, '2016-10-12 00:00:00.0', '2016-12-20 23:59:00.0', 0, 0, NULL, 1);