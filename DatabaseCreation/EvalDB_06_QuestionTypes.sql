	CREATE TABLE QuestionTypes(
		ID tinyint NOT NULL PRIMARY KEY,
		name nvarchar(40) NOT NULL
	);
	
		INSERT INTO QuestionTypes (ID, name)
		VALUES(1, 'Multiple Choice');
	
		INSERT INTO QuestionTypes (ID, name)
		VALUES(2, 'Multiple Response');
	
		INSERT INTO QuestionTypes (ID, name)
		VALUES(3, 'Short Answer');
	
		INSERT INTO QuestionTypes (ID, name)
		VALUES(4, 'Essay');
	
		INSERT INTO QuestionTypes (ID, name)
		VALUES(5, 'Matching');
	
		INSERT INTO QuestionTypes (ID, name)
		VALUES(6, 'Sequencing');
	
		INSERT INTO QuestionTypes (ID, name)
		VALUES(7, 'File Upload');
	
		INSERT INTO QuestionTypes (ID, name)
		VALUES(8, 'FormBuilder');