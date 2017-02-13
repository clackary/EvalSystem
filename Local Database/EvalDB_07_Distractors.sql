	CREATE TABLE Distractors(
		ID int NOT NULL PRIMARY KEY,
		questionID int NOT NULL,
		sequence tinyint NULL,
		text ntext NULL,
		formatID tinyint NOT NULL,
		correct tinyint NOT NULL
	);
	CREATE NONCLUSTERED INDEX IX_Distractors ON Distractors(questionID);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626242, 961901, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626243, 961901, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626244, 961901, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626245, 961901, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626246, 961901, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626247, 961901, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626248, 961901, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626249, 961903, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626250, 961903, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626251, 961903, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626252, 961903, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626253, 961903, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626254, 961903, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626255, 961903, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626256, 961905, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626257, 961905, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626258, 961905, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626259, 961905, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626260, 961905, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626261, 961905, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626262, 961905, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626263, 961907, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626264, 961907, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626265, 961907, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626266, 961907, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626267, 961907, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626268, 961907, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626269, 961907, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626270, 961909, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626271, 961909, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626272, 961909, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626273, 961909, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626274, 961909, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626275, 961909, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626276, 961909, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626277, 961911, 1, '1 (ineffective)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626278, 961911, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626279, 961911, 3, '3 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626280, 961911, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626281, 961911, 5, '5 (effective)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626282, 961912, 1, '1 (ineffective)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626283, 961912, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626284, 961912, 3, '3 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626285, 961912, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626286, 961912, 5, '5 (effective)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626287, 961913, 1, '1 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626288, 961913, 2, '2 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626289, 961913, 3, '3 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626290, 961913, 4, '4 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626291, 961913, 5, '5 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626292, 961914, 1, '0.0 - 2.0', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626293, 961914, 2, '2.1 - 2.5', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626294, 961914, 3, '2.6 - 3.0', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626295, 961914, 4, '3.1 - 3.5', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626296, 961914, 5, '3.6 - 4.0', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626297, 961915, 1, 'Freshman', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626298, 961915, 2, 'Sophomore', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626299, 961915, 3, 'Junior', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626300, 961915, 4, 'Senior', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626301, 961915, 5, 'Other', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626302, 961916, 1, 'A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626303, 961916, 2, 'B', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626304, 961916, 3, 'C', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626305, 961916, 4, 'D', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626306, 961916, 5, 'E', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626307, 961916, 6, 'CR', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3626308, 961916, 7, 'NC', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3644543, 966476, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3644544, 966476, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3644545, 966476, 3, '3 (poor)  ', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3644546, 966476, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3644547, 966476, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3644548, 966476, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(3644549, 966476, 7, '7 (extremely good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686512, 1491008, 1, 'ineffective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686513, 1491008, 2, 'less than effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686514, 1491008, 3, 'satisfactory', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686515, 1491008, 4, 'effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686516, 1491008, 5, 'very effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686517, 1491009, 1, 'ineffective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686518, 1491009, 2, 'less than effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686519, 1491009, 3, 'satisfactory', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686520, 1491009, 4, 'effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686521, 1491009, 5, 'very effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686522, 1491010, 1, 'in my major', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686523, 1491010, 2, 'in my minor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686524, 1491010, 3, 'a general education requirement', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686525, 1491010, 4, 'an elective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686526, 1491010, 5, 'other', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686527, 1491011, 1, 'freshman', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686528, 1491011, 2, 'sophomore', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686529, 1491011, 3, 'junior', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686530, 1491011, 4, 'senior', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686531, 1491011, 5, 'graduate school', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686532, 1491012, 1, '1 (poorly used)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686533, 1491012, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686534, 1491012, 3, '3 (satisfactorily used)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686535, 1491012, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686536, 1491012, 5, '5 (well used)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686537, 1491013, 1, '1 (unenthusiastic)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686538, 1491013, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686539, 1491013, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686540, 1491013, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686541, 1491013, 5, '5 (enthusiastic)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686542, 1491014, 1, '1 (unwilling)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686543, 1491014, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686544, 1491014, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686545, 1491014, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686546, 1491014, 5, '5 (willing)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686547, 1491015, 1, '1 (disrespectful)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686548, 1491015, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686549, 1491015, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686550, 1491015, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686551, 1491015, 5, '5 (respectful)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686552, 1491016, 1, '1 (unclear)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686553, 1491016, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686554, 1491016, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686555, 1491016, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686556, 1491016, 5, '5 (clear)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686557, 1491017, 1, '1 (not helpful)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686558, 1491017, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686559, 1491017, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686560, 1491017, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686561, 1491017, 5, '5 (helpful)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686562, 1491018, 1, '1 (unfair)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686563, 1491018, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686564, 1491018, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686565, 1491018, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686566, 1491018, 5, '5 (fair)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686567, 1491019, 1, '1 (ineffective)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686568, 1491019, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686569, 1491019, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686570, 1491019, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686571, 1491019, 5, '5 (effective)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686572, 1491020, 1, '1 (minimal)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686573, 1491020, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686574, 1491020, 3, '3 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686575, 1491020, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686576, 1491020, 5, '5 (extensive)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686577, 1491021, 1, '1 (minimal)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686578, 1491021, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686579, 1491021, 3, '3 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686580, 1491021, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686581, 1491021, 5, '5 (extensive)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686582, 1491022, 1, '0', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686583, 1491022, 2, '1 - 3', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686584, 1491022, 3, '4 - 6', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686585, 1491022, 4, '7 or more', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686586, 1491023, 1, 'A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686587, 1491023, 2, 'B', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686588, 1491023, 3, 'C', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686589, 1491023, 4, 'D', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5686590, 1491023, 5, 'E', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709232, 1496424, 1, 'extremely poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709233, 1496424, 2, 'very poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709234, 1496424, 3, 'below average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709235, 1496424, 4, 'average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709236, 1496424, 5, 'above average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709237, 1496424, 6, 'very good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709238, 1496424, 7, 'excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709239, 1496425, 1, 'extremely poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709240, 1496425, 2, 'very poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709241, 1496425, 3, 'below average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709242, 1496425, 4, 'average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709243, 1496425, 5, 'above average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709244, 1496425, 6, 'very good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709245, 1496425, 7, 'excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709246, 1496426, 1, 'extremely poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709247, 1496426, 2, 'very poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709248, 1496426, 3, 'below average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709249, 1496426, 4, 'average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709250, 1496426, 5, 'above average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709251, 1496426, 6, 'very good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709252, 1496426, 7, 'excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709253, 1496427, 1, 'extremely poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709254, 1496427, 2, 'very poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709255, 1496427, 3, 'below average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709256, 1496427, 4, 'average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709257, 1496427, 5, 'above average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709258, 1496427, 6, 'very good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709259, 1496427, 7, 'excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709260, 1496428, 1, 'extremely poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709261, 1496428, 2, 'very poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709262, 1496428, 3, 'below average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709263, 1496428, 4, 'average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709264, 1496428, 5, 'above average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709265, 1496428, 6, 'very good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709266, 1496428, 7, 'excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709267, 1496429, 1, 'extremely poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709268, 1496429, 2, 'very poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709269, 1496429, 3, 'below average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709270, 1496429, 4, 'average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709271, 1496429, 5, 'above average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709272, 1496429, 6, 'very good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709273, 1496429, 7, 'excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709274, 1496430, 1, 'extremely poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709275, 1496430, 2, 'very poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709276, 1496430, 3, 'below average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709277, 1496430, 4, 'average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709278, 1496430, 5, 'above average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709279, 1496430, 6, 'very good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709280, 1496430, 7, 'excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709281, 1496431, 1, 'extremely poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709282, 1496431, 2, 'very poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709283, 1496431, 3, 'below average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709284, 1496431, 4, 'average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709285, 1496431, 5, 'above average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709286, 1496431, 6, 'very good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709287, 1496431, 7, 'excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709288, 1496432, 1, 'extremely poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709289, 1496432, 2, 'very poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709290, 1496432, 3, 'below average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709291, 1496432, 4, 'average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709292, 1496432, 5, 'above average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709293, 1496432, 6, 'very good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709294, 1496432, 7, 'excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709295, 1496433, 1, 'extremely poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709296, 1496433, 2, 'very poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709297, 1496433, 3, 'below average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709298, 1496433, 4, 'average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709299, 1496433, 5, 'above average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709300, 1496433, 6, 'very good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709301, 1496433, 7, 'excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709302, 1496434, 1, 'extremely poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709303, 1496434, 2, 'very poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709304, 1496434, 3, 'below average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709305, 1496434, 4, 'average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709306, 1496434, 5, 'above average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709307, 1496434, 6, 'very good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(5709308, 1496434, 7, 'excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975196, 1805634, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975197, 1805634, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975198, 1805634, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975199, 1805634, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975200, 1805634, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975201, 1805635, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975202, 1805635, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975203, 1805635, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975204, 1805635, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975205, 1805635, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975206, 1805636, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975207, 1805636, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975208, 1805636, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975209, 1805636, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975210, 1805636, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975211, 1805637, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975212, 1805637, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975213, 1805637, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975214, 1805637, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975215, 1805637, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975216, 1805638, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975217, 1805638, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975218, 1805638, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975219, 1805638, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975220, 1805638, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975221, 1805639, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975222, 1805639, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975223, 1805639, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975224, 1805639, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975225, 1805639, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975226, 1805640, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975227, 1805640, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975228, 1805640, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975229, 1805640, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975230, 1805640, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975231, 1805641, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975232, 1805641, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975233, 1805641, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975234, 1805641, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975235, 1805641, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975236, 1805642, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975237, 1805642, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975238, 1805642, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975239, 1805642, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975240, 1805642, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975241, 1805643, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975242, 1805643, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975243, 1805643, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975244, 1805643, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975245, 1805643, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975246, 1805644, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975247, 1805644, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975248, 1805644, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975249, 1805644, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975250, 1805644, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975251, 1805645, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975252, 1805645, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975253, 1805645, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975254, 1805645, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975255, 1805645, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975256, 1805646, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975257, 1805646, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975258, 1805646, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975259, 1805646, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975260, 1805646, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975261, 1805647, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975262, 1805647, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975263, 1805647, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975264, 1805647, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(6975265, 1805647, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035756, 2321774, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035757, 2321774, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035758, 2321774, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035759, 2321774, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035760, 2321774, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035761, 2321775, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035762, 2321775, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035763, 2321775, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035764, 2321775, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035765, 2321775, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035766, 2321776, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035767, 2321776, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035768, 2321776, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035769, 2321776, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035770, 2321776, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035771, 2321777, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035772, 2321777, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035773, 2321777, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035774, 2321777, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035775, 2321777, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035776, 2321778, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035777, 2321778, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035778, 2321778, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035779, 2321778, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035780, 2321778, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035781, 2321779, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035782, 2321779, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035783, 2321779, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035784, 2321779, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035785, 2321779, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035786, 2321780, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035787, 2321780, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035788, 2321780, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035789, 2321780, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035790, 2321780, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035791, 2321781, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035792, 2321781, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035793, 2321781, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035794, 2321781, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035795, 2321781, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035796, 2321782, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035797, 2321782, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035798, 2321782, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035799, 2321782, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035800, 2321782, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035801, 2321783, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035802, 2321783, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035803, 2321783, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035804, 2321783, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035805, 2321783, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035806, 2321784, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035807, 2321784, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035808, 2321784, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035809, 2321784, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035810, 2321784, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035811, 2321785, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035812, 2321785, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035813, 2321785, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035814, 2321785, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035815, 2321785, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035816, 2321786, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035817, 2321786, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035818, 2321786, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035819, 2321786, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035820, 2321786, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035821, 2321787, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035822, 2321787, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035823, 2321787, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035824, 2321787, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035825, 2321787, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035826, 2321788, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035827, 2321788, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035828, 2321788, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035829, 2321788, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035830, 2321788, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035831, 2321789, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035832, 2321789, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035833, 2321789, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035834, 2321789, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035835, 2321789, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035836, 2321790, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035837, 2321790, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035838, 2321790, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035839, 2321790, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035840, 2321790, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035841, 2321791, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035842, 2321791, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035843, 2321791, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035844, 2321791, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035845, 2321791, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035846, 2321792, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035847, 2321792, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035848, 2321792, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035849, 2321792, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035850, 2321792, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035851, 2321793, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035852, 2321793, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035853, 2321793, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035854, 2321793, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9035855, 2321793, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312466, 2380591, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312467, 2380591, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312468, 2380591, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312469, 2380591, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312470, 2380591, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312471, 2380592, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312472, 2380592, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312473, 2380592, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312474, 2380592, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312475, 2380592, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312476, 2380593, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312477, 2380593, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312478, 2380593, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312479, 2380593, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312480, 2380593, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312481, 2380594, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312482, 2380594, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312483, 2380594, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312484, 2380594, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312485, 2380594, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312486, 2380595, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312487, 2380595, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312488, 2380595, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312489, 2380595, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312490, 2380595, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312491, 2380596, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312492, 2380596, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312493, 2380596, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312494, 2380596, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312495, 2380596, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312496, 2380597, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312497, 2380597, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312498, 2380597, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312499, 2380597, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312500, 2380597, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312501, 2380598, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312502, 2380598, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312503, 2380598, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312504, 2380598, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312505, 2380598, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312506, 2380599, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312507, 2380599, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312508, 2380599, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312509, 2380599, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312510, 2380599, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312511, 2380600, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312512, 2380600, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312513, 2380600, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312514, 2380600, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312515, 2380600, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312516, 2380601, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312517, 2380601, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312518, 2380601, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312519, 2380601, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312520, 2380601, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312521, 2380602, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312522, 2380602, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312523, 2380602, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312524, 2380602, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312525, 2380602, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312526, 2380603, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312527, 2380603, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312528, 2380603, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312529, 2380603, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312530, 2380603, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312531, 2380604, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312532, 2380604, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312533, 2380604, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312534, 2380604, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312535, 2380604, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312536, 2380605, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312537, 2380605, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312538, 2380605, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312539, 2380605, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312540, 2380605, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312541, 2380606, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312542, 2380606, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312543, 2380606, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312544, 2380606, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312545, 2380606, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312546, 2380607, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312547, 2380607, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312548, 2380607, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312549, 2380607, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312550, 2380607, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312551, 2380608, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312552, 2380608, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312553, 2380608, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312554, 2380608, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312555, 2380608, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312556, 2380609, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312557, 2380609, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312558, 2380609, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312559, 2380609, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312560, 2380609, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312561, 2380610, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312562, 2380610, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312563, 2380610, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312564, 2380610, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312565, 2380610, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312566, 2380611, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312567, 2380611, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312568, 2380611, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312569, 2380611, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312570, 2380611, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312571, 2380612, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312572, 2380612, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312573, 2380612, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312574, 2380612, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312575, 2380612, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312576, 2380614, 1, 'never', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312577, 2380614, 2, 'rarely', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312578, 2380614, 3, 'half of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312579, 2380614, 4, 'most of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312580, 2380614, 5, 'always', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312581, 2380615, 1, 'never', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312582, 2380615, 2, 'rarely', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312583, 2380615, 3, 'half of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312584, 2380615, 4, 'most of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312585, 2380615, 5, 'always', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312586, 2380616, 1, 'never', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312587, 2380616, 2, 'rarely', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312588, 2380616, 3, 'half of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312589, 2380616, 4, 'most of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312590, 2380616, 5, 'always', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312591, 2380617, 1, 'never', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312592, 2380617, 2, 'rarely', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312593, 2380617, 3, 'half of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312594, 2380617, 4, 'most of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312595, 2380617, 5, 'always', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312596, 2380618, 1, 'never', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312597, 2380618, 2, 'rarely', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312598, 2380618, 3, 'half of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312599, 2380618, 4, 'most of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312600, 2380618, 5, 'always', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312601, 2380619, 1, 'never', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312602, 2380619, 2, 'rarely', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312603, 2380619, 3, 'half of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312604, 2380619, 4, 'most of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312605, 2380619, 5, 'always', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312606, 2380620, 1, 'never', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312607, 2380620, 2, 'rarely', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312608, 2380620, 3, 'half of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312609, 2380620, 4, 'most of the time', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(9312610, 2380620, 5, 'always', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844771, 3213201, 1, 'ineffective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844772, 3213201, 2, 'less than effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844773, 3213201, 3, 'satisfactory', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844774, 3213201, 4, 'effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844775, 3213201, 5, 'very effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844776, 3213202, 1, 'ineffective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844777, 3213202, 2, 'less than effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844778, 3213202, 3, 'satisfactory', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844779, 3213202, 4, 'effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844780, 3213202, 5, 'very effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844781, 3213203, 1, 'in my major', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844782, 3213203, 2, 'in my minor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844783, 3213203, 3, 'a general education requirement', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844784, 3213203, 4, 'an elective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844785, 3213203, 5, 'other', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844786, 3213204, 1, 'freshman', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844787, 3213204, 2, 'sophomore', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844788, 3213204, 3, 'junior', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844789, 3213204, 4, 'senior', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844790, 3213204, 5, 'graduate school', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844791, 3213205, 1, '1 (poorly used)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844792, 3213205, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844793, 3213205, 3, '3 (satisfactorily used)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844794, 3213205, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844795, 3213205, 5, '5 (well used)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844796, 3213206, 1, '1 (unenthusiastic)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844797, 3213206, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844798, 3213206, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844799, 3213206, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844800, 3213206, 5, '5 (enthusiastic)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844801, 3213207, 1, '1 (unwilling)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844802, 3213207, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844803, 3213207, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844804, 3213207, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844805, 3213207, 5, '5 (willing)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844806, 3213208, 1, '1 (disrespectful)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844807, 3213208, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844808, 3213208, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844809, 3213208, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844810, 3213208, 5, '5 (respectful)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844811, 3213209, 1, '1 (unclear)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844812, 3213209, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844813, 3213209, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844814, 3213209, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844815, 3213209, 5, '5 (clear)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844816, 3213210, 1, '1 (not helpful)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844817, 3213210, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844818, 3213210, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844819, 3213210, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844820, 3213210, 5, '5 (helpful)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844821, 3213211, 1, '1 (unfair)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844822, 3213211, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844823, 3213211, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844824, 3213211, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844825, 3213211, 5, '5 (fair)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844826, 3213212, 1, '1 (ineffective)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844827, 3213212, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844828, 3213212, 3, '3 (neutral)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844829, 3213212, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844830, 3213212, 5, '5 (effective)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844831, 3213213, 1, '1 (minimal)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844832, 3213213, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844833, 3213213, 3, '3 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844834, 3213213, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844835, 3213213, 5, '5 (extensive)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844836, 3213214, 1, '1 (minimal)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844837, 3213214, 2, '2', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844838, 3213214, 3, '3 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844839, 3213214, 4, '4', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844840, 3213214, 5, '5 (extensive)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844841, 3213215, 1, '0', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844842, 3213215, 2, '1 - 3', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844843, 3213215, 3, '4 - 6', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844844, 3213215, 4, '7 or more', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844845, 3213216, 1, 'A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844846, 3213216, 2, 'B', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844847, 3213216, 3, 'C', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844848, 3213216, 4, 'D', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(12844849, 3213216, 5, 'E', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251331, 3525559, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251332, 3525559, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251333, 3525559, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251334, 3525559, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251335, 3525559, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251336, 3525559, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251337, 3525559, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251338, 3525560, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251339, 3525560, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251340, 3525560, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251341, 3525560, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251342, 3525560, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251343, 3525560, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251344, 3525560, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251345, 3525561, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251346, 3525561, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251347, 3525561, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251348, 3525561, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251349, 3525561, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251350, 3525561, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251351, 3525561, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251352, 3525562, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251353, 3525562, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251354, 3525562, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251355, 3525562, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251356, 3525562, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251357, 3525562, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251358, 3525562, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251359, 3525563, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251360, 3525563, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251361, 3525563, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251362, 3525563, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251363, 3525563, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251364, 3525563, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251365, 3525563, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251366, 3525564, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251367, 3525564, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251368, 3525564, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251369, 3525564, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251370, 3525564, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251371, 3525564, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251372, 3525564, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251373, 3525565, 1, '1 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251374, 3525565, 2, '2 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251375, 3525565, 3, '3 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251376, 3525565, 4, '4 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251377, 3525565, 5, '5 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251378, 3525566, 1, '0.0 - 2.0', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251379, 3525566, 2, '2.1 - 2.5', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251380, 3525566, 3, '2.6 - 3.0', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251381, 3525566, 4, '3.1 - 3.5', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251382, 3525566, 5, '3.6 - 4.0 G. 7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251383, 3525567, 1, 'A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251384, 3525567, 2, 'B', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251385, 3525567, 3, 'C', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251386, 3525567, 4, 'D', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251387, 3525567, 5, 'E', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251388, 3525567, 6, 'CR', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251389, 3525567, 7, 'NC', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251390, 3525568, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251391, 3525568, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251392, 3525568, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251393, 3525568, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251394, 3525568, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251395, 3525568, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251396, 3525568, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251397, 3525569, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251398, 3525569, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251399, 3525569, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251400, 3525569, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251401, 3525569, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251402, 3525569, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(14251403, 3525569, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153937, 3979590, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153938, 3979590, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153939, 3979590, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153940, 3979590, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153941, 3979590, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153942, 3979591, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153943, 3979591, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153944, 3979591, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153945, 3979591, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153946, 3979591, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153947, 3979592, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153948, 3979592, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153949, 3979592, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153950, 3979592, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153951, 3979592, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153952, 3979593, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153953, 3979593, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153954, 3979593, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153955, 3979593, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153956, 3979593, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153957, 3979594, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153958, 3979594, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153959, 3979594, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153960, 3979594, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153961, 3979594, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153962, 3979595, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153963, 3979595, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153964, 3979595, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153965, 3979595, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153966, 3979595, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153967, 3979596, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153968, 3979596, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153969, 3979596, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153970, 3979596, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153971, 3979596, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153972, 3979597, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153973, 3979597, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153974, 3979597, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153975, 3979597, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153976, 3979597, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153977, 3979598, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153978, 3979598, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153979, 3979598, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153980, 3979598, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153981, 3979598, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153982, 3979599, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153983, 3979599, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153984, 3979599, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153985, 3979599, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153986, 3979599, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153987, 3979600, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153988, 3979600, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153989, 3979600, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153990, 3979600, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153991, 3979600, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153992, 3979601, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153993, 3979601, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153994, 3979601, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153995, 3979601, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153996, 3979601, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153997, 3979602, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153998, 3979602, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16153999, 3979602, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154000, 3979602, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154001, 3979602, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154002, 3979603, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154003, 3979603, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154004, 3979603, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154005, 3979603, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154006, 3979603, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154007, 3979604, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154008, 3979604, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154009, 3979604, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154010, 3979604, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154011, 3979604, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154012, 3979605, 1, 'strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154013, 3979605, 2, 'disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154014, 3979605, 3, 'neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154015, 3979605, 4, 'agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154016, 3979605, 5, 'strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154017, 3979606, 1, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154018, 3979606, 2, 'good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154019, 3979606, 3, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154020, 3979606, 4, 'poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154021, 3979606, 5, 'Very poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16154022, 3979606, 6, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555203, 4074026, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555204, 4074026, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555205, 4074026, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555206, 4074026, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555207, 4074026, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555208, 4074026, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555209, 4074026, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555210, 4074027, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555211, 4074027, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555212, 4074027, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555213, 4074027, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555214, 4074027, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555215, 4074027, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555216, 4074027, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555217, 4074028, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555218, 4074028, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555219, 4074028, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555220, 4074028, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555221, 4074028, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555222, 4074028, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555223, 4074028, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555224, 4074029, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555225, 4074029, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555226, 4074029, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555227, 4074029, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555228, 4074029, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555229, 4074029, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555230, 4074029, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555231, 4074030, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555232, 4074030, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555233, 4074030, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555234, 4074030, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555235, 4074030, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555236, 4074030, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555237, 4074030, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555238, 4074031, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555239, 4074031, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555240, 4074031, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555241, 4074031, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555242, 4074031, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555243, 4074031, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555244, 4074031, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555245, 4074032, 1, '1 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555246, 4074032, 2, '2 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555247, 4074032, 3, '3 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555248, 4074032, 4, '4 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555249, 4074032, 5, '5 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555250, 4074033, 1, '0.0 - 2.0', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555251, 4074033, 2, '2.1 - 2.5', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555252, 4074033, 3, '2.6 - 3.0', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555253, 4074033, 4, '3.1 - 3.5', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555254, 4074033, 5, '3.6 - 4.0', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555255, 4074034, 1, 'A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555256, 4074034, 2, 'B', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555257, 4074034, 3, 'C', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555258, 4074034, 4, 'D', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555259, 4074034, 5, 'E', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555260, 4074034, 6, 'CR', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555261, 4074034, 7, 'NC', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555262, 4074035, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555263, 4074035, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555264, 4074035, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555265, 4074035, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555266, 4074035, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555267, 4074035, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555268, 4074035, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555269, 4074036, 1, '1 (extremely poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555270, 4074036, 2, '2 (very poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555271, 4074036, 3, '3 (poor)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555272, 4074036, 4, '4 (average)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555273, 4074036, 5, '5 (good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555274, 4074036, 6, '6 (very good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(16555275, 4074036, 7, '7 (extremely good)', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158209, 4220254, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158210, 4220254, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158211, 4220254, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158212, 4220254, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158213, 4220254, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158214, 4220255, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158215, 4220255, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158216, 4220255, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158217, 4220255, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158218, 4220255, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158219, 4220256, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158220, 4220256, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158221, 4220256, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158222, 4220256, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158223, 4220256, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158224, 4220257, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158225, 4220257, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158226, 4220257, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158227, 4220257, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158228, 4220257, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158229, 4220258, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158230, 4220258, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158231, 4220258, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158232, 4220258, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158233, 4220258, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158234, 4220259, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158235, 4220259, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158236, 4220259, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158237, 4220259, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158238, 4220259, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158239, 4220260, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158240, 4220260, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158241, 4220260, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158242, 4220260, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158243, 4220260, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158244, 4220261, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158245, 4220261, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158246, 4220261, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158247, 4220261, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158248, 4220261, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158249, 4220262, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158250, 4220262, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158251, 4220262, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158252, 4220262, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158253, 4220262, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158254, 4220263, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158255, 4220263, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158256, 4220263, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158257, 4220263, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158258, 4220263, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158259, 4220264, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158260, 4220264, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158261, 4220264, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158262, 4220264, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158263, 4220264, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158264, 4220265, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158265, 4220265, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158266, 4220265, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158267, 4220265, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158268, 4220265, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158269, 4220266, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158270, 4220266, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158271, 4220266, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158272, 4220266, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158273, 4220266, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158274, 4220267, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158275, 4220267, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158276, 4220267, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158277, 4220267, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158278, 4220267, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158279, 4220268, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158280, 4220268, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158281, 4220268, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158282, 4220268, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158283, 4220268, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158284, 4220269, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158285, 4220269, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158286, 4220269, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158287, 4220269, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158288, 4220269, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158289, 4220270, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158290, 4220270, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158291, 4220270, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158292, 4220270, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158293, 4220270, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158294, 4220270, 6, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158518, 4220336, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158519, 4220336, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158520, 4220336, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158521, 4220336, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158522, 4220336, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158523, 4220337, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158524, 4220337, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158525, 4220337, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158526, 4220337, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158527, 4220337, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158528, 4220338, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158529, 4220338, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158530, 4220338, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158531, 4220338, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158532, 4220338, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158533, 4220339, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158534, 4220339, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158535, 4220339, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158536, 4220339, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158537, 4220339, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158538, 4220340, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158539, 4220340, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158540, 4220340, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158541, 4220340, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158542, 4220340, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158543, 4220341, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158544, 4220341, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158545, 4220341, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158546, 4220341, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158547, 4220341, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158548, 4220342, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158549, 4220342, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158550, 4220342, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158551, 4220342, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158552, 4220342, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158553, 4220343, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158554, 4220343, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158555, 4220343, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158556, 4220343, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158557, 4220343, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158558, 4220344, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158559, 4220344, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158560, 4220344, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158561, 4220344, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158562, 4220344, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158563, 4220345, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158564, 4220345, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158565, 4220345, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158566, 4220345, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158567, 4220345, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158568, 4220346, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158569, 4220346, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158570, 4220346, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158571, 4220346, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158572, 4220346, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158573, 4220347, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158574, 4220347, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158575, 4220347, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158576, 4220347, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158577, 4220347, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158578, 4220348, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158579, 4220348, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158580, 4220348, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158581, 4220348, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158582, 4220348, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158583, 4220349, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158584, 4220349, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158585, 4220349, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158586, 4220349, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158587, 4220349, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158588, 4220350, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158589, 4220350, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158590, 4220350, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158591, 4220350, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158592, 4220350, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158593, 4220351, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158594, 4220351, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158595, 4220351, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158596, 4220351, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158597, 4220351, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158598, 4220352, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158599, 4220352, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158600, 4220352, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158601, 4220352, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158602, 4220352, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158603, 4220352, 6, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158604, 4220353, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158605, 4220353, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158606, 4220353, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158607, 4220353, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158608, 4220353, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158609, 4220354, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158610, 4220354, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158611, 4220354, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158612, 4220354, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158613, 4220354, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158614, 4220355, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158615, 4220355, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158616, 4220355, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158617, 4220355, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158618, 4220355, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158619, 4220356, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158620, 4220356, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158621, 4220356, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158622, 4220356, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158623, 4220356, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158624, 4220357, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158625, 4220357, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158626, 4220357, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158627, 4220357, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158628, 4220357, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158629, 4220358, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158630, 4220358, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158631, 4220358, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158632, 4220358, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158633, 4220358, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158634, 4220359, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158635, 4220359, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158636, 4220359, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158637, 4220359, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158638, 4220359, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158639, 4220360, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158640, 4220360, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158641, 4220360, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158642, 4220360, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158643, 4220360, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158644, 4220361, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158645, 4220361, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158646, 4220361, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158647, 4220361, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158648, 4220361, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158649, 4220362, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158650, 4220362, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158651, 4220362, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158652, 4220362, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158653, 4220362, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158654, 4220363, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158655, 4220363, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158656, 4220363, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158657, 4220363, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158658, 4220363, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158659, 4220364, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158660, 4220364, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158661, 4220364, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158662, 4220364, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158663, 4220364, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158664, 4220365, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158665, 4220365, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158666, 4220365, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158667, 4220365, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158668, 4220365, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158669, 4220366, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158670, 4220366, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158671, 4220366, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158672, 4220366, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158673, 4220366, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158674, 4220367, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158675, 4220367, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158676, 4220367, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158677, 4220367, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158678, 4220367, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158679, 4220368, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158680, 4220368, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158681, 4220368, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158682, 4220368, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158683, 4220368, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158684, 4220369, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158685, 4220369, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158686, 4220369, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158687, 4220369, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158688, 4220369, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158689, 4220369, 6, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158690, 4220370, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158691, 4220370, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158692, 4220370, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158693, 4220370, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158694, 4220370, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158695, 4220371, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158696, 4220371, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158697, 4220371, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158698, 4220371, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158699, 4220371, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158700, 4220372, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158701, 4220372, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158702, 4220372, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158703, 4220372, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158704, 4220372, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158705, 4220373, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158706, 4220373, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158707, 4220373, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158708, 4220373, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158709, 4220373, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158710, 4220374, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158711, 4220374, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158712, 4220374, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158713, 4220374, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158714, 4220374, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158715, 4220375, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158716, 4220375, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158717, 4220375, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158718, 4220375, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158719, 4220375, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158720, 4220376, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158721, 4220376, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158722, 4220376, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158723, 4220376, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158724, 4220376, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158725, 4220377, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158726, 4220377, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158727, 4220377, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158728, 4220377, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158729, 4220377, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158730, 4220378, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158731, 4220378, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158732, 4220378, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158733, 4220378, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158734, 4220378, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158735, 4220379, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158736, 4220379, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158737, 4220379, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158738, 4220379, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158739, 4220379, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158740, 4220380, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158741, 4220380, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158742, 4220380, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158743, 4220380, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158744, 4220380, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158745, 4220381, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158746, 4220381, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158747, 4220381, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158748, 4220381, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158749, 4220381, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158750, 4220382, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158751, 4220382, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158752, 4220382, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158753, 4220382, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158754, 4220382, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158755, 4220383, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158756, 4220383, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158757, 4220383, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158758, 4220383, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158759, 4220383, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158760, 4220384, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158761, 4220384, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158762, 4220384, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158763, 4220384, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158764, 4220384, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158765, 4220385, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158766, 4220385, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158767, 4220385, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158768, 4220385, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158769, 4220385, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158770, 4220386, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158771, 4220386, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158772, 4220386, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158773, 4220386, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158774, 4220386, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158775, 4220386, 6, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158776, 4220387, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158777, 4220387, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158778, 4220387, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158779, 4220387, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158780, 4220387, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158781, 4220388, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158782, 4220388, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158783, 4220388, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158784, 4220388, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158785, 4220388, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158786, 4220389, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158787, 4220389, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158788, 4220389, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158789, 4220389, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158790, 4220389, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158791, 4220390, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158792, 4220390, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158793, 4220390, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158794, 4220390, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158795, 4220390, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158796, 4220391, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158797, 4220391, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158798, 4220391, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158799, 4220391, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158800, 4220391, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158801, 4220392, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158802, 4220392, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158803, 4220392, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158804, 4220392, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158805, 4220392, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158806, 4220393, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158807, 4220393, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158808, 4220393, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158809, 4220393, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158810, 4220393, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158811, 4220394, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158812, 4220394, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158813, 4220394, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158814, 4220394, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158815, 4220394, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158816, 4220395, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158817, 4220395, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158818, 4220395, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158819, 4220395, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158820, 4220395, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158821, 4220396, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158822, 4220396, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158823, 4220396, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158824, 4220396, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158825, 4220396, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158826, 4220397, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158827, 4220397, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158828, 4220397, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158829, 4220397, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158830, 4220397, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158831, 4220398, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158832, 4220398, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158833, 4220398, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158834, 4220398, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158835, 4220398, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158836, 4220399, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158837, 4220399, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158838, 4220399, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158839, 4220399, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158840, 4220399, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158841, 4220400, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158842, 4220400, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158843, 4220400, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158844, 4220400, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158845, 4220400, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158846, 4220401, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158847, 4220401, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158848, 4220401, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158849, 4220401, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158850, 4220401, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158851, 4220402, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158852, 4220402, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158853, 4220402, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158854, 4220402, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158855, 4220402, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158856, 4220403, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158857, 4220403, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158858, 4220403, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158859, 4220403, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158860, 4220403, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158861, 4220403, 6, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158948, 4220421, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158949, 4220421, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158950, 4220421, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158951, 4220421, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158952, 4220421, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158953, 4220422, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158954, 4220422, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158955, 4220422, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158956, 4220422, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158957, 4220422, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158958, 4220423, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158959, 4220423, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158960, 4220423, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158961, 4220423, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158962, 4220423, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158963, 4220424, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158964, 4220424, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158965, 4220424, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158966, 4220424, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158967, 4220424, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158968, 4220425, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158969, 4220425, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158970, 4220425, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158971, 4220425, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158972, 4220425, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158973, 4220426, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158974, 4220426, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158975, 4220426, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158976, 4220426, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158977, 4220426, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158978, 4220427, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158979, 4220427, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158980, 4220427, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158981, 4220427, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158982, 4220427, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158983, 4220428, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158984, 4220428, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158985, 4220428, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158986, 4220428, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158987, 4220428, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158988, 4220429, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158989, 4220429, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158990, 4220429, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158991, 4220429, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158992, 4220429, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158993, 4220430, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158994, 4220430, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158995, 4220430, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158996, 4220430, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158997, 4220430, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158998, 4220431, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17158999, 4220431, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159000, 4220431, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159001, 4220431, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159002, 4220431, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159003, 4220432, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159004, 4220432, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159005, 4220432, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159006, 4220432, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159007, 4220432, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159008, 4220433, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159009, 4220433, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159010, 4220433, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159011, 4220433, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159012, 4220433, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159013, 4220434, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159014, 4220434, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159015, 4220434, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159016, 4220434, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159017, 4220434, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159018, 4220435, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159019, 4220435, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159020, 4220435, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159021, 4220435, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159022, 4220435, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159023, 4220436, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159024, 4220436, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159025, 4220436, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159026, 4220436, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159027, 4220436, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159028, 4220437, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159029, 4220437, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159030, 4220437, 3, 'Neutral', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159031, 4220437, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159032, 4220437, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17159033, 4220437, 6, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194488, 4229164, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194489, 4229164, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194490, 4229164, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194491, 4229164, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194492, 4229164, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194493, 4229164, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194494, 4229164, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194495, 4229165, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194496, 4229165, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194497, 4229165, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194498, 4229165, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194499, 4229165, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194500, 4229165, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194501, 4229165, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194502, 4229166, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194503, 4229166, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194504, 4229166, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194505, 4229166, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194506, 4229166, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194507, 4229166, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194508, 4229166, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194509, 4229167, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194510, 4229167, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194511, 4229167, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194512, 4229167, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194513, 4229167, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194514, 4229167, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194515, 4229167, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194516, 4229168, 1, 'Extremely Uninterested', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194517, 4229168, 2, 'Uninterested', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194518, 4229168, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194519, 4229168, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194520, 4229168, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194521, 4229168, 6, 'Interested', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194522, 4229168, 7, 'Extremely Interested', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194523, 4229169, 1, 'Extremely Unreceptive', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194524, 4229169, 2, 'Unreceptive', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194525, 4229169, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194526, 4229169, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194527, 4229169, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194528, 4229169, 6, 'Receptive', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194529, 4229169, 7, 'Extremely Receptive', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194530, 4229170, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194531, 4229170, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194532, 4229170, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194533, 4229170, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194534, 4229170, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194535, 4229170, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194536, 4229170, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194537, 4229171, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194538, 4229171, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194539, 4229171, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194540, 4229171, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194541, 4229171, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194542, 4229171, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194543, 4229171, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194544, 4229172, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194545, 4229172, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194546, 4229172, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194547, 4229172, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194548, 4229172, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194549, 4229172, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194550, 4229172, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194551, 4229173, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194552, 4229173, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194553, 4229173, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194554, 4229173, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194555, 4229173, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194556, 4229173, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194557, 4229173, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194558, 4229174, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194559, 4229174, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194560, 4229174, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194561, 4229174, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194562, 4229174, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194563, 4229174, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17194564, 4229174, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421591, 4283329, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421592, 4283329, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421593, 4283329, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421594, 4283329, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421595, 4283329, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421596, 4283330, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421597, 4283330, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421598, 4283330, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421599, 4283330, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421600, 4283330, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421601, 4283331, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421602, 4283331, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421603, 4283331, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421604, 4283331, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421605, 4283331, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421606, 4283332, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421607, 4283332, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421608, 4283332, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421609, 4283332, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421610, 4283332, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421611, 4283333, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421612, 4283333, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421613, 4283333, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421614, 4283333, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421615, 4283333, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421616, 4283335, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421617, 4283335, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421618, 4283335, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421619, 4283335, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421620, 4283335, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421621, 4283336, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421622, 4283336, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421623, 4283336, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421624, 4283336, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421625, 4283336, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421626, 4283337, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421627, 4283337, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421628, 4283337, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421629, 4283337, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421630, 4283337, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421631, 4283338, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421632, 4283338, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421633, 4283338, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421634, 4283338, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421635, 4283338, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421636, 4283339, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421637, 4283339, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421638, 4283339, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421639, 4283339, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421640, 4283339, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421641, 4283340, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421642, 4283340, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421643, 4283340, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421644, 4283340, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421645, 4283340, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421646, 4283342, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421647, 4283342, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421648, 4283342, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421649, 4283342, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421650, 4283342, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421651, 4283343, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421652, 4283343, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421653, 4283343, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421654, 4283343, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421655, 4283343, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421656, 4283344, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421657, 4283344, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421658, 4283344, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421659, 4283344, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421660, 4283344, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421661, 4283345, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421662, 4283345, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421663, 4283345, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421664, 4283345, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421665, 4283345, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421666, 4283346, 1, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421667, 4283346, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421668, 4283346, 3, 'Neither Agree nor Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421669, 4283346, 4, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17421670, 4283346, 5, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423050, 4283840, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423051, 4283840, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423052, 4283840, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423053, 4283840, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423054, 4283840, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423055, 4283840, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423056, 4283840, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423057, 4283840, 8, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423058, 4283841, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423059, 4283841, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423060, 4283841, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423061, 4283841, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423062, 4283841, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423063, 4283841, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423064, 4283841, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423065, 4283841, 8, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423066, 4283842, 1, 'Extremely Uneffective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423067, 4283842, 2, 'Uneffective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423068, 4283842, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423069, 4283842, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423070, 4283842, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423071, 4283842, 6, 'Effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423072, 4283842, 7, 'Extremely Effective', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423073, 4283842, 8, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423074, 4283843, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423075, 4283843, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423076, 4283843, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423077, 4283843, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423078, 4283843, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423079, 4283843, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423080, 4283843, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423081, 4283843, 8, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423082, 4283844, 1, 'Extremely Uninterested', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423083, 4283844, 2, 'Uninterested', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423084, 4283844, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423085, 4283844, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423086, 4283844, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423087, 4283844, 6, 'Interested', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423088, 4283844, 7, 'Extremely Interested', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423089, 4283844, 8, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423090, 4283845, 1, 'Extremely Unreceptive', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423091, 4283845, 2, 'Unreceptive', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423092, 4283845, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423093, 4283845, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423094, 4283845, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423095, 4283845, 6, 'Receptive', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423096, 4283845, 7, 'Extremely Receptive', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423097, 4283845, 8, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423098, 4283846, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423099, 4283846, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423100, 4283846, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423101, 4283846, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423102, 4283846, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423103, 4283846, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423104, 4283846, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423105, 4283846, 8, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423106, 4283847, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423107, 4283847, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423108, 4283847, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423109, 4283847, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423110, 4283847, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423111, 4283847, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423112, 4283847, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423113, 4283847, 8, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423114, 4283848, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423115, 4283848, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423116, 4283848, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423117, 4283848, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423118, 4283848, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423119, 4283848, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423120, 4283848, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423121, 4283848, 8, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423122, 4283849, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423123, 4283849, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423124, 4283849, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423125, 4283849, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423126, 4283849, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423127, 4283849, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423128, 4283849, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423129, 4283849, 8, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423130, 4283850, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423131, 4283850, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423132, 4283850, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423133, 4283850, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423134, 4283850, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423135, 4283850, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423136, 4283850, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423137, 4283850, 8, 'N/A', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423138, 4283852, 1, 'Extremely Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423139, 4283852, 2, 'Poor', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423140, 4283852, 3, 'Below Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423141, 4283852, 4, 'Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423142, 4283852, 5, 'Above Average', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423143, 4283852, 6, 'Very Good', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(17423144, 4283852, 7, 'Excellent', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335888, 4500446, 1, 'Male', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335889, 4500446, 2, 'Female', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335890, 4500447, 1, 'sophomore', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335891, 4500447, 2, 'junior', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335892, 4500447, 3, 'senior', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335898, 4500449, 1, 'Strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335899, 4500449, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335900, 4500449, 3, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335901, 4500449, 4, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335902, 4500449, 5, 'No opinion', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335903, 4500450, 1, 'Strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335904, 4500450, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335905, 4500450, 3, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335906, 4500450, 4, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335907, 4500450, 5, 'No opinion', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335908, 4500451, 1, 'Strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335909, 4500451, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335910, 4500451, 3, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335911, 4500451, 4, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335912, 4500451, 5, 'No opinion', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335913, 4500452, 1, 'Strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335914, 4500452, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335915, 4500452, 3, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335916, 4500452, 4, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335917, 4500452, 5, 'No opinion', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335918, 4500453, 1, 'Strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335919, 4500453, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335920, 4500453, 3, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335921, 4500453, 4, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335922, 4500453, 5, 'No opinion', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335923, 4500454, 1, 'Strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335924, 4500454, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335925, 4500454, 3, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335926, 4500454, 4, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335927, 4500454, 5, 'No opinion', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335928, 4500455, 1, 'Strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335929, 4500455, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335930, 4500455, 3, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335931, 4500455, 4, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335932, 4500455, 5, 'No opinion', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335933, 4500456, 1, 'Strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335934, 4500456, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335935, 4500456, 3, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335936, 4500456, 4, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335937, 4500456, 5, 'No opinion', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335938, 4500457, 1, 'Strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335939, 4500457, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335940, 4500457, 3, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335941, 4500457, 4, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335942, 4500457, 5, 'No opinion', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335943, 4500458, 1, 'Strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335944, 4500458, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335945, 4500458, 3, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335946, 4500458, 4, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335947, 4500458, 5, 'No opinion', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335948, 4500459, 1, 'Strongly disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335949, 4500459, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335950, 4500459, 3, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335951, 4500459, 4, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335952, 4500459, 5, 'No opinion', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335953, 4500462, 1, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335954, 4500462, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335955, 4500463, 1, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335956, 4500463, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335957, 4500464, 1, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335958, 4500464, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335959, 4500465, 1, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335960, 4500465, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335961, 4500466, 1, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(18335962, 4500466, 2, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085463, 4919038, 1, 'Strongly Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085464, 4919038, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085465, 4919038, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085466, 4919038, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085467, 4919038, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085468, 4919040, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085469, 4919040, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085470, 4919040, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085471, 4919040, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085472, 4919040, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085473, 4919041, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085474, 4919041, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085475, 4919041, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085476, 4919041, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085477, 4919041, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085478, 4919042, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085479, 4919042, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085480, 4919042, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085481, 4919042, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085482, 4919042, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085483, 4919043, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085484, 4919043, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085485, 4919043, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085486, 4919043, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085487, 4919043, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085488, 4919044, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085489, 4919044, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085490, 4919044, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085491, 4919044, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085492, 4919044, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085493, 4919045, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085494, 4919045, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085495, 4919045, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085496, 4919045, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085497, 4919045, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085498, 4919046, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085499, 4919046, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085500, 4919046, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085501, 4919046, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085502, 4919046, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085503, 4919047, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085504, 4919047, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085505, 4919047, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085506, 4919047, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085507, 4919047, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085508, 4919048, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085509, 4919048, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085510, 4919048, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085511, 4919048, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085512, 4919048, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085513, 4919049, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085514, 4919049, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085515, 4919049, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085516, 4919049, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085517, 4919049, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085518, 4919050, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085519, 4919050, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085520, 4919050, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085521, 4919050, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085522, 4919050, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085523, 4919051, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085524, 4919051, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085525, 4919051, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085526, 4919051, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085527, 4919051, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085528, 4919052, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085529, 4919052, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085530, 4919052, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085531, 4919052, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085532, 4919052, 5, 'Strongly Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085590, 4919039, 1, 'Strongly agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085591, 4919039, 2, 'Agree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085592, 4919039, 3, 'Undecided', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085593, 4919039, 4, 'Disagree', 0, 1);
	
		INSERT INTO Distractors (ID, questionID, sequence, text, correct, formatID)
		VALUES(20085594, 4919039, 5, 'Strongly Disagree', 0, 1);