	CREATE TABLE SectionTests(
		ID int NOT NULL PRIMARY KEY,
		testID int NOT NULL,
		deliveryID int NOT NULL
	);
	CREATE NONCLUSTERED INDEX IX_SectionTests_deliveryID ON SectionTests(deliveryID);
	CREATE NONCLUSTERED INDEX IX_SectionTests_testID ON SectionTests(testID);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(16059, 15344, 15366);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(23941, 23249, 23248);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(24093, 23403, 23400);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(28117, 27438, 27424);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(36053, 35415, 35358);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(36883, 36271, 36188);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(36884, 36272, 36189);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(49519, 48944, 48824);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(56121, 55546, 55426);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(65102, 64529, 64407);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(66774, 66201, 66079);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(69661, 69088, 68966);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(69781, 69208, 69086);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(69783, 69210, 69088);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(69784, 69211, 69089);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(69785, 69212, 69090);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(69786, 69213, 69091);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(69788, 69215, 69093);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(70053, 69480, 69358);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(71032, 70459, 70337);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(71047, 70474, 70352);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(75150, 74577, 74455);
	
		INSERT INTO SectionTests (ID, testID, deliveryID)
		VALUES(83168, 82595, 82473);