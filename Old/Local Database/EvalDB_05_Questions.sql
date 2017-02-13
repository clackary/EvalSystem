	CREATE TABLE Questions(
		ID int NOT NULL PRIMARY KEY,
		testID int NOT NULL,
		sequence smallint NOT NULL,
		text ntext NULL,
		formatID tinyint NULL,
		typeID tinyint NOT NULL,
		weight real NULL,
		categoryID int NULL,
		bonus bit NULL
	);
	CREATE NONCLUSTERED INDEX IX_Questions ON Questions(testID);
	CREATE NONCLUSTERED INDEX IX_Questions_2 ON Questions(typeID);
	CREATE NONCLUSTERED INDEX IX_Questions_3 ON Questions(categoryID);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961900, 15344, 2, 'Please provide any comments you''d like regarding organization and administration.<style>.qnum{visibility:hidden}</style>', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961901, 15344, 3, '<b>2. Explanation of the material and management of the class (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good").</b><style>.qnum{visibility:hidden}</style>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961902, 15344, 4, 'Please provide any comments you''d like regarding explanation of material and management of the class.<style>.qnum{visibility:hidden}</style>', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961903, 15344, 5, '<b>3. Willingness to respond to students inside and outside the classroom (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good").</b><style>.qnum{visibility:hidden}</style>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961904, 15344, 6, 'Please provide any comments you''d like regarding your instructor''s willingness to respond to students.<style>.qnum{visibility:hidden}</style>', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961905, 15344, 7, '<b>4. Respect for students (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good").</b><style>.qnum{visibility:hidden}</style>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961906, 15344, 8, 'Please provide any comments you''d like regarding your instructor''s respect for students.<style>.qnum{visibility:hidden}</style>', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961907, 15344, 9, '<b>5. Stimulates a desire for learning (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good").</b><style>.qnum{visibility:hidden}</style>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961908, 15344, 10, 'Please provide any comments you''d like regarding your instructor''s ability to stimulate a desire for learning.<style>.qnum{visibility:hidden}</style>', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961909, 15344, 11, '<b>6. Instructor''s contribution to make this course a valuable learning experience (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good").</b><style>.qnum{visibility:hidden}</style>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961910, 15344, 12, 'Please provide any comments you''d like regarding your instructor''s contribution to your learning experience.<style>.qnum{visibility:hidden}</style>', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961911, 15344, 13, '<b>7. Overall, the COURSE was:</b><style>.qnum{visibility:hidden}</style>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961912, 15344, 14, '<b>8. Overall, the INSTRUCTOR was:</b><style>.qnum{visibility:hidden}</style>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961913, 15344, 15, '<b>9. Your level of effort in this course:</b><style>.qnum{visibility:hidden}</style>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961914, 15344, 16, '<b>10. Your cumulative GPA:</b><style>.qnum{visibility:hidden}</style>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961915, 15344, 17, '<b>11. Your academic classification:</b><style>.qnum{visibility:hidden}</style>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961916, 15344, 18, '<b>12. Your expected grade in this course:</b><style>.qnum{visibility:hidden}</style>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(961917, 15344, 19, '<b>13. Please feel free to write any additional comments about this course or instructor. Remember, the instructor will not see these comments until after grades have been determined.</b><style>.qnum{visibility:hidden}</style>', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(966476, 15344, 1, '<b>1. The organization and administration of the course (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good").</b>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491008, 23249, 1, 'Overall, this COURSE was:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491009, 23249, 2, 'Overall, this INSTRUCTOR was:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491010, 23249, 3, 'This course is:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491011, 23249, 4, 'Current class standing:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491012, 23249, 5, 'Rate your instructor''s use of the course management system in laying out an easily navigable, easy to follow course (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491013, 23249, 6, 'Rate your instructor''s level of enthusiasm toward the subject (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491014, 23249, 7, 'Rate your instructor''s willingness to communicate with you throughout the semester (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491015, 23249, 8, 'Rate your instructor''s interaction with you as a student (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491016, 23249, 9, 'The criteria for assessing coursework were clear (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491017, 23249, 10, 'Rate the feedback provided on your coursework (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491018, 23249, 11, 'Rate the fairness of the grading (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491019, 23249, 12, 'Rate the effectiveness of online activities in helping you learn the subject (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491020, 23249, 13, 'Compared to other classes, the amount of work I put into this class was (rate on a scale of 1 to 5):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491021, 23249, 14, 'Rate your growth in understanding the subject matter after taking this course (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491022, 23249, 15, 'Number of times I accessed or logged into the course in a typical week:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491023, 23249, 16, 'The grade I expect to receive in this class is:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491024, 23249, 17, 'What did you find of most value in this class? Click in the box below and type in your response.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1491025, 23249, 18, 'What would you change? Click in the box below and type in your response.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1496424, 23403, 1, 'How do you rate the agreement between course objectives and topic coverage?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1496425, 23403, 2, 'How do you rate the organization of the course website?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1496426, 23403, 3, 'Were the teaching methods and techniques effective for you?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1496427, 23403, 4, 'Does the instructor stimulate and challenge you to think and to question?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1496428, 23403, 5, 'How interested is the instructor in helping you to understand the subject being taught?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1496429, 23403, 6, 'How responsive is the instructor to your e-mails and/or phone calls?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1496430, 23403, 7, 'How would you rate the fairness and effectiveness of the grading policies and procedures?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1496431, 23403, 8, 'How would you rate the interest of the instructor in the teaching of this course?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1496432, 23403, 9, 'Considering all the above items, what is your overall rating of this instructor?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1496433, 23403, 10, 'How would you rate this instructor in comparison with all others you have had at the university?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1496434, 23403, 11, 'Overall, what is your evaluation of this course?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1496435, 23403, 12, 'Please use this space to provide any additional comments about this class.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805634, 27438, 1, 'Overall, this course was effective.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805635, 27438, 2, 'Overall, this instructor was effective.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805636, 27438, 3, 'The instructor provided timely feedback.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805637, 27438, 4, 'The instructor''s feedback was helpful and meaningful.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805638, 27438, 5, 'The course lessons, assignments, and activities motivated me to learn the course material.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805639, 27438, 6, 'The syllabus clearly explained course objectives.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805640, 27438, 7, 'The lessons, assignments and activities motivated me to learn the course materials.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805641, 27438, 8, 'The course was clearly organized and easy to follow.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805642, 27438, 9, 'I was satisfied with the technology used in the course.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805643, 27438, 10, 'The module clearly explained the policies and procedures for Independent Study courses.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805644, 27438, 11, 'When I contacted the Independent Study office by telephone, I was assisted or my call was returned.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805645, 27438, 12, 'When I contacted the Independent Study office by e-mail, I received a timely response.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805646, 27438, 13, 'I would take another Independent Study course.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1805647, 27438, 14, 'Overall, the Indpendent Study office staff were helpful.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1822036, 27438, 15, 'If you did not complete this course, please explain why.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1822037, 27438, 16, 'If you did not complete this course, what could the Independent Study Office have done to assist you?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1822038, 27438, 17, 'What other Independent Study courses would you like to see offered?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(1822039, 27438, 18, 'Comments on Independent Study in general and/or suggestions on how to improve services.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321774, 35415, 1, 'The instructor followed the syllabus that outlined the course.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321775, 35415, 2, 'The syllabus clearly defined the objectives for the course.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321776, 35415, 3, 'The instructor used the course objectives and/or study guide to help focus my learning.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321777, 35415, 4, 'The instructor answered questions clearly via email, phone, or online discussion.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321778, 35415, 5, 'The instructor used techniques such as chats, discussion, audio, or video lectures that enhanced my learning.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321779, 35415, 6, 'The instructor challenged me to apply problem-solving skills and to think analytically.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321780, 35415, 7, 'The assignments and tests provided an appropriate measure of my learning in the course.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321781, 35415, 8, 'The instructor provided me constructive feedback.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321782, 35415, 9, 'The instructor used techniques that adequately prepared me to take the examinations or complete other evaluation activities.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321783, 35415, 10, 'The course materials were clear and understandable.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321784, 35415, 11, 'This course increased my knowledge of the subject matter.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321785, 35415, 12, 'The instructor provided feedback in a timely manner.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321786, 35415, 13, 'The instructor''s outline provided me enough information at the beginning of the course to get started.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321787, 35415, 14, 'The instructor referred me to appropriate technical support when I needed it during this course.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321788, 35415, 15, 'The syllabus clearly stated the expected course outcomes.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321789, 35415, 16, 'The syllabus was effective in identifying assignments and explaining the testing criteria.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321790, 35415, 17, 'The required textbook(s) in support of the course is effective for individualized instruction.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321791, 35415, 18, 'The support materials are clear and effective.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321792, 35415, 19, 'The process used to determine my grade was clearly stated in the syllabus.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321793, 35415, 20, 'The assignments are relevant to the course objectives.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321794, 35415, 21, 'Comment on the examinations as to difficulty, fairness, etc.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321795, 35415, 22, 'What improvements would you suggest for this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2321796, 35415, 23, 'What did you particularly like about this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380591, 36271, 1, 'The course objectives were clearly stated.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380592, 36271, 2, 'Assessment of student learning was consistent with topics covered in course activities.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380593, 36271, 3, 'The course was well-organized.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380594, 36271, 4, 'Overall, this was an effective course.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380595, 36271, 5, 'The instructor was enthusiastic about the subject matter.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380596, 36271, 6, 'The instructor presented the subject matter clearly.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380597, 36271, 7, 'The instructor used class time productively.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380598, 36271, 8, 'The instructor provided extra help when/if needed.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380599, 36271, 9, 'Overall, the instructor''s teaching was effective.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380600, 36271, 10, 'This instructor used course activities that adequately prepared me to take examinations..', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380601, 36271, 11, 'This instructor was prepared for class sessions..', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380602, 36271, 12, 'This instructor encouraged my participation in class activities.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380603, 36271, 13, 'This instructor delivered.class presentations that maintained my interest.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380604, 36271, 14, 'The instructor adhered to scheduled class times.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380605, 36271, 15, 'This instructor provided feedback in a timely manner.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380606, 36271, 16, 'This instructor was knowledgeable in the subject matter.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380607, 36271, 17, 'This instructor provided constructive feedback on my progress.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380608, 36271, 18, 'This instructor measured my progress in relation to the established course expectations..', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380609, 36271, 19, 'This instructor challenged me to apply problem-solving skills and to think analytically.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380610, 36271, 20, 'This instructor used teaching techniques that enhanced learning (such as audiovisual aides, case studies discussions, papers, projects, assignments, etc.).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380611, 36271, 21, 'This instructor answered questions clearly.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380612, 36271, 22, 'This instructor presented and followed a syllabus that outlined the course and defined course expectations.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380613, 36271, 23, 'If you have any additional comments, click in the box below and type them in.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380614, 36272, 1, 'The Dumke College of Health Professions endorses Weber States strong commitment to inclusivity and unity of all peoples regardless of their ethnicity, gender, religion, sexual orientation, marital status, age, or disability.  So that we may assess and improve our sensitivity in these areas, we ask you to rate the instructor in the following seven items.  Please note that if you dont have enough information or are unable to answer for any reason, leave the item blank.<br><br> The instructor is consistently respectful of peoples ethnicity.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380615, 36272, 2, 'The instructor is consistently respectful of peoples gender.  (If you cant answer, skip to the next item.)', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380616, 36272, 3, 'The instructor is consistently respectful of peoples religion.  (If you cant answer, skip to the next item.)', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380617, 36272, 4, 'The instructor is consistently respectful of peoples sexual orientation.  (If you cant answer, skip to the next item.)', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380618, 36272, 5, 'The instructor is consistently respectful of peoples marital status.  (If you cant answer, skip to the next item.)', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380619, 36272, 6, 'The instructor is consistently respectful of peoples age.  (If you cant answer, skip to the next item.)', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380620, 36272, 7, 'The instructor is consistently respectful of peoples disabilities.  (If you cant answer, skip to the next item.)', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(2380621, 36272, 8, 'If theres anything more youd like to say about this instructors respect for peoples ethnicity, gender, religion, sexual orientation, marital status, age, disability, or related areas, please click in the box below and type your comments.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213201, 48944, 1, 'Overall, this COURSE was:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213202, 48944, 2, 'Overall, this INSTRUCTOR was:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213203, 48944, 3, 'This course is:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213204, 48944, 4, 'Current class standing:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213205, 48944, 5, 'Rate your instructor''s use of class time (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213206, 48944, 6, 'Rate your instructor''s level of enthusiasm toward the subject (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213207, 48944, 7, 'Rate your instructor''s willingness to communicate with you outside of class time (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213208, 48944, 8, 'Rate your instructor''s interaction with you as a student (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213209, 48944, 9, 'The criteria for assessing coursework were clear (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213210, 48944, 10, 'Rate the feedback provided on your coursework (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213211, 48944, 11, 'Rate the fairness of the grading (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213212, 48944, 12, 'Rate the effectiveness of classroom activities in helping you learn the subject (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213213, 48944, 13, 'Compared to other classes, the amount of work I put into this class was (rate on a scale of 1 to 5):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213214, 48944, 14, 'Rate your growth in understanding the subject matter after taking this course (rate on a scale of 1 to 5).', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213215, 48944, 15, 'Number of class periods I missed:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213216, 48944, 16, 'The grade I expect to receive in this class is:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213217, 48944, 17, 'What did you find of most value in this class? Click in the box below and type in your response.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3213218, 48944, 18, 'What would you change? Click in the box below and type in your response.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3525559, 55546, 1, 'The organization and administration of the course (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3525560, 55546, 2, 'Explanation of the material and management of the class. (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3525561, 55546, 3, 'Willingness to respond to students inside and outside the classroom (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3525562, 55546, 4, 'Respect for students (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3525563, 55546, 5, 'Stimulates a desire for learning (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3525564, 55546, 6, 'Instructor’s contribution to make this course a valuable learning experience (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3525565, 55546, 7, 'Your level of effort in this course:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3525566, 55546, 8, 'Your cumulative GPA:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3525567, 55546, 9, 'Grade you expect in this course:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3525568, 55546, 10, 'Overall this COURSE was (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3525569, 55546, 11, 'Overall this INSTRUCTOR was (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3525570, 55546, 12, 'Please feel free to write any additional comments about this course or instructor in the space provided.  Remember, the instructor will not see these comments until after final grades have been determined.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979590, 64529, 1, 'The instructor created a stimulating learning environment.', 1, 1.0, 218692, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979591, 64529, 2, 'The instructor was knowledgeable in the course subject material.', 1, 1.0, 218692, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979592, 64529, 3, 'The instructor communicated clearly and was easy to understand.', 1, 1.0, 218692, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979593, 64529, 4, 'The instructor was respectful and cared about me personally as a student.', 1, 1.0, 218692, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979594, 64529, 5, 'The instructor was available and responded to inquiries in a timely manner.', 1, 1.0, 218692, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979595, 64529, 6, 'The instructor was timely in returning grades for assignments and/or tests.', 1, 1.0, 218692, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979596, 64529, 7, 'I was given sufficient resources and reference material throughout the course.', 1, 1.0, 218693, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979597, 64529, 8, 'The course content was professional and of high quality.', 1, 1.0, 218693, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979598, 64529, 9, 'This course increased my knowledge of the subject matter.', 1, 1.0, 218693, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979599, 64529, 10, 'The course content prepared me for the assignments and tests.', 1, 1.0, 218693, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979600, 64529, 11, 'I was appropriately challenged in this course.', 1, 1.0, 218693, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979601, 64529, 12, 'Course objectives were clearly communicated.', 1, 1.0, 218694, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979602, 64529, 13, 'Course content and time was well spent in support of the objectives.', 1, 1.0, 218694, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979603, 64529, 14, 'The course as a whole followed a logical pattern of organization.', 1, 1.0, 218694, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979604, 64529, 15, 'I feel the grading criteria for this course was fair.', 1, 1.0, 218694, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979605, 64529, 16, 'I felt the course was an effective use of my time.', 1, 0.0, 218695, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979606, 64529, 17, 'Please rate the quality of the texbook used in the course (choose N/A if no book was used)', 1, 0.0, 218695, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979607, 64529, 18, 'What did you particularly like about this course?', 4, 0.0, 218696, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979608, 64529, 19, 'What improvements would you suggest for this course?', 4, 0.0, 218696, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(3979609, 64529, 20, 'Please feel free to write any additional comments about this course or instructor.', 4, 0.0, 218696, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4074026, 66201, 1, 'The organization and administration of the course (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4074027, 66201, 2, 'Explanation of the material and management of the class. (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4074028, 66201, 3, 'Willingness to respond to students inside and outside the classroom (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4074029, 66201, 4, 'Respect for students (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4074030, 66201, 5, 'Stimulates a desire for learning (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4074031, 66201, 6, 'Instructor’s contribution to make this course a valuable learning experience (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4074032, 66201, 7, 'Your level of effort in this course:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4074033, 66201, 8, 'Your cumulative GPA:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4074034, 66201, 9, 'Grade you expect in this course:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4074035, 66201, 10, 'Overall this COURSE was (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4074036, 66201, 11, 'Overall this INSTRUCTOR was (rate on a scale of 1 - 7 where 1 is "extremely poor" and 7 is "extremely good"):', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4074037, 66201, 12, 'Please feel free to write any additional comments about this course or instructor in the space provided.  Remember, the instructor will not see these comments until after final grades have been determined.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4215034, 69088, 1, 'Choose one genocide discussed within the last 2 weeks (settler, colonization, Armenian) and discuss 2-3 “stages” of genocide found within these case studies.', 4, 10.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4215035, 69088, 2, 'What would you consider to be the “first” genocide? Use evidence to back up your claim and please note that you will need to defend your answer, which means knowing why the other genocides discussed during this time frame were not the “first”.  (Answer Only 5 Questions)', 4, 10.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4215036, 69088, 3, 'Can settler colonization and subsequent government actions be considered a genocide?  Use explicit examples to back up your claim (such as information given in presentations.)   (Answer Only 5 Questions)', 4, 10.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4215037, 69088, 4, 'If you were the Turkish government, what arguments would you make on why the Turkish tragedy was not genocide?  (Answer Only 5 Questions)', 4, 10.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4215038, 69088, 5, 'If you were the Armenian community engaged in a court battle, what evidence would you use to argue that it was genocide?  (Answer Only 5 Questions)', 4, 10.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4215039, 69088, 6, 'What impact did the Armenian genocide have on the wider international community (legal, political, etc.)  (Answer Only 5 Questions)', 4, 10.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4215040, 69088, 7, 'What are some of the “roots” of the Armenian genocide?  (Answer Only 5 Questions)', 4, 10.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220254, 69208, 1, 'The instructor created a stimulating learning environment.', 1, 1.0, 247170, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220255, 69208, 2, 'The instructor was knowledgeable in the course subject material.', 1, 1.0, 247170, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220256, 69208, 3, 'The instructor communicated clearly and was easy to understand.', 1, 1.0, 247170, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220257, 69208, 4, 'The instructor was respectful and cared about me personally as a student.', 1, 1.0, 247170, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220258, 69208, 5, 'The instructor was available and responded to inquiries in a timely manner.', 1, 1.0, 247170, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220259, 69208, 6, 'The instructor was timely in returning grades for assignments and/or tests.', 1, 1.0, 247170, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220260, 69208, 7, 'I was given sufficient resources and reference material throughout the course.', 1, 1.0, 247171, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220261, 69208, 8, 'The course content was professional and of high quality.', 1, 1.0, 247171, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220262, 69208, 9, 'This course increased my knowledge of the subject matter.', 1, 1.0, 247171, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220263, 69208, 10, 'The course content prepared me for the assignments and tests.', 1, 1.0, 247171, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220264, 69208, 11, 'I was appropriately challenged in this course.', 1, 1.0, 247171, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220265, 69208, 12, 'Course objectives were clearly communicated.', 1, 1.0, 247172, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220266, 69208, 13, 'Course content and time was well spent in support of the objectives.', 1, 1.0, 247172, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220267, 69208, 14, 'The course as a whole followed a logical pattern of organization.', 1, 1.0, 247172, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220268, 69208, 15, 'I feel the grading criteria for this course was fair.', 1, 1.0, 247172, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220269, 69208, 16, 'I felt the course was an effective use of my time.', 1, 1.0, 247173, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220270, 69208, 17, 'I felt the textbook used in this course was effective at delivering the material needed for class. (choose N/A if no book was used)', 1, 1.0, 247173, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220336, 69210, 1, 'The instructor created a stimulating learning environment.', 1, 1.0, 247174, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220337, 69210, 2, 'The instructor was knowledgeable in the course subject material.', 1, 1.0, 247174, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220338, 69210, 3, 'The instructor communicated clearly and was easy to understand.', 1, 1.0, 247174, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220339, 69210, 4, 'The instructor was respectful and cared about me personally as a student.', 1, 1.0, 247174, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220340, 69210, 5, 'The instructor was available and responded to inquiries in a timely manner.', 1, 1.0, 247174, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220341, 69210, 6, 'The instructor was timely in returning grades for assignments and/or tests.', 1, 1.0, 247174, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220342, 69210, 7, 'I was given sufficient resources and reference material throughout the course.', 1, 1.0, 247175, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220343, 69210, 8, 'The course content was professional and of high quality.', 1, 1.0, 247175, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220344, 69210, 9, 'This course increased my knowledge of the subject matter.', 1, 1.0, 247175, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220345, 69210, 10, 'The course content prepared me for the assignments and tests.', 1, 1.0, 247175, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220346, 69210, 11, 'I was appropriately challenged in this course.', 1, 1.0, 247175, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220347, 69210, 12, 'Course objectives were clearly communicated.', 1, 1.0, 247176, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220348, 69210, 13, 'Course content and time was well spent in support of the objectives.', 1, 1.0, 247176, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220349, 69210, 14, 'The course as a whole followed a logical pattern of organization.', 1, 1.0, 247176, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220350, 69210, 15, 'I feel the grading criteria for this course was fair.', 1, 1.0, 247176, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220351, 69210, 16, 'I felt the course was an effective use of my time.', 1, 1.0, 247177, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220352, 69210, 17, 'I felt the textbook used in this course was effective at delivering the material needed for class. (choose N/A if no book was used)', 1, 1.0, 247177, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220353, 69211, 1, 'The instructor created a stimulating learning environment.', 1, 1.0, 247178, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220354, 69211, 2, 'The instructor was knowledgeable in the course subject material.', 1, 1.0, 247178, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220355, 69211, 3, 'The instructor communicated clearly and was easy to understand.', 1, 1.0, 247178, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220356, 69211, 4, 'The instructor was respectful and cared about me personally as a student.', 1, 1.0, 247178, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220357, 69211, 5, 'The instructor was available and responded to inquiries in a timely manner.', 1, 1.0, 247178, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220358, 69211, 6, 'The instructor was timely in returning grades for assignments and/or tests.', 1, 1.0, 247178, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220359, 69211, 7, 'I was given sufficient resources and reference material throughout the course.', 1, 1.0, 247179, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220360, 69211, 8, 'The course content was professional and of high quality.', 1, 1.0, 247179, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220361, 69211, 9, 'This course increased my knowledge of the subject matter.', 1, 1.0, 247179, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220362, 69211, 10, 'The course content prepared me for the assignments and tests.', 1, 1.0, 247179, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220363, 69211, 11, 'I was appropriately challenged in this course.', 1, 1.0, 247179, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220364, 69211, 12, 'Course objectives were clearly communicated.', 1, 1.0, 247180, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220365, 69211, 13, 'Course content and time was well spent in support of the objectives.', 1, 1.0, 247180, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220366, 69211, 14, 'The course as a whole followed a logical pattern of organization.', 1, 1.0, 247180, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220367, 69211, 15, 'I feel the grading criteria for this course was fair.', 1, 1.0, 247180, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220368, 69211, 16, 'I felt the course was an effective use of my time.', 1, 1.0, 247181, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220369, 69211, 17, 'I felt the textbook used in this course was effective at delivering the material needed for class. (choose N/A if no book was used)', 1, 1.0, 247181, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220370, 69212, 1, 'The instructor created a stimulating learning environment.', 1, 1.0, 247190, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220371, 69212, 2, 'The instructor was knowledgeable in the course subject material.', 1, 1.0, 247190, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220372, 69212, 3, 'The instructor communicated clearly and was easy to understand.', 1, 1.0, 247190, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220373, 69212, 4, 'The instructor was respectful and cared about me personally as a student.', 1, 1.0, 247190, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220374, 69212, 5, 'The instructor was available and responded to inquiries in a timely manner.', 1, 1.0, 247190, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220375, 69212, 6, 'The instructor was timely in returning grades for assignments and/or tests.', 1, 1.0, 247190, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220376, 69212, 7, 'I was given sufficient resources and reference material throughout the course.', 1, 1.0, 247191, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220377, 69212, 8, 'The course content was professional and of high quality.', 1, 1.0, 247191, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220378, 69212, 9, 'This course increased my knowledge of the subject matter.', 1, 1.0, 247191, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220379, 69212, 10, 'The course content prepared me for the assignments and tests.', 1, 1.0, 247191, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220380, 69212, 11, 'I was appropriately challenged in this course.', 1, 1.0, 247191, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220381, 69212, 12, 'Course objectives were clearly communicated.', 1, 1.0, 247192, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220382, 69212, 13, 'Course content and time was well spent in support of the objectives.', 1, 1.0, 247192, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220383, 69212, 14, 'The course as a whole followed a logical pattern of organization.', 1, 1.0, 247192, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220384, 69212, 15, 'I feel the grading criteria for this course was fair.', 1, 1.0, 247192, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220385, 69212, 16, 'I felt the course was an effective use of my time.', 1, 1.0, 247193, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220386, 69212, 17, 'I felt the textbook used in this course was effective at delivering the material needed for class. (choose N/A if no book was used)', 1, 1.0, 247193, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220387, 69213, 1, 'The instructor created a stimulating learning environment.', 1, 1.0, 247182, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220388, 69213, 2, 'The instructor was knowledgeable in the course subject material.', 1, 1.0, 247182, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220389, 69213, 3, 'The instructor communicated clearly and was easy to understand.', 1, 1.0, 247182, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220390, 69213, 4, 'The instructor was respectful and cared about me personally as a student.', 1, 1.0, 247182, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220391, 69213, 5, 'The instructor was available and responded to inquiries in a timely manner.', 1, 1.0, 247182, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220392, 69213, 6, 'The instructor was timely in returning grades for assignments and/or tests.', 1, 1.0, 247182, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220393, 69213, 7, 'I was given sufficient resources and reference material throughout the course.', 1, 1.0, 247183, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220394, 69213, 8, 'The course content was professional and of high quality.', 1, 1.0, 247183, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220395, 69213, 9, 'This course increased my knowledge of the subject matter.', 1, 1.0, 247183, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220396, 69213, 10, 'The course content prepared me for the assignments and tests.', 1, 1.0, 247183, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220397, 69213, 11, 'I was appropriately challenged in this course.', 1, 1.0, 247183, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220398, 69213, 12, 'Course objectives were clearly communicated.', 1, 1.0, 247184, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220399, 69213, 13, 'Course content and time was well spent in support of the objectives.', 1, 1.0, 247184, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220400, 69213, 14, 'The course as a whole followed a logical pattern of organization.', 1, 1.0, 247184, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220401, 69213, 15, 'I feel the grading criteria for this course was fair.', 1, 1.0, 247184, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220402, 69213, 16, 'I felt the course was an effective use of my time.', 1, 1.0, 247185, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220403, 69213, 17, 'I felt the textbook used in this course was effective at delivering the material needed for class. (choose N/A if no book was used)', 1, 1.0, 247185, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220421, 69215, 1, 'The instructor created a stimulating learning environment.', 1, 1.0, 247186, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220422, 69215, 2, 'The instructor was knowledgeable in the course subject material.', 1, 1.0, 247186, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220423, 69215, 3, 'The instructor communicated clearly and was easy to understand.', 1, 1.0, 247186, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220424, 69215, 4, 'The instructor was respectful and cared about me personally as a student.', 1, 1.0, 247186, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220425, 69215, 5, 'The instructor was available and responded to inquiries in a timely manner.', 1, 1.0, 247186, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220426, 69215, 6, 'The instructor was timely in returning grades for assignments and/or tests.', 1, 1.0, 247186, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220427, 69215, 7, 'I was given sufficient resources and reference material throughout the course.', 1, 1.0, 247187, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220428, 69215, 8, 'The course content was professional and of high quality.', 1, 1.0, 247187, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220429, 69215, 9, 'This course increased my knowledge of the subject matter.', 1, 1.0, 247187, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220430, 69215, 10, 'The course content prepared me for the assignments and tests.', 1, 1.0, 247187, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220431, 69215, 11, 'I was appropriately challenged in this course.', 1, 1.0, 247187, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220432, 69215, 12, 'Course objectives were clearly communicated.', 1, 1.0, 247188, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220433, 69215, 13, 'Course content and time was well spent in support of the objectives.', 1, 1.0, 247188, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220434, 69215, 14, 'The course as a whole followed a logical pattern of organization.', 1, 1.0, 247188, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220435, 69215, 15, 'I feel the grading criteria for this course was fair.', 1, 1.0, 247188, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220436, 69215, 16, 'I felt the course was an effective use of my time.', 1, 1.0, 247189, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4220437, 69215, 17, 'I felt the textbook used in this course was effective at delivering the material needed for class. (choose N/A if no book was used)', 1, 1.0, 247189, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4229164, 69480, 1, 'How do you rate the agreement between the course objectives and topic coverage?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4229165, 69480, 2, 'How do you rate the organization and use of class periods?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4229166, 69480, 3, 'How effective were the teaching methods and techniques for you?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4229167, 69480, 4, 'How well does the instructor stimulate and challenge you to think and to question?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4229168, 69480, 5, 'How interested is the instructor in helping you to understand the subject being taught?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4229169, 69480, 6, 'How receptive is the instructor to questions and/or discussion during class?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4229170, 69480, 7, 'How would you rate the fairness and effectiveness of the grading policies and procedures?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4229171, 69480, 8, 'How would you rate the interest of the instructor in the teaching of this course?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4229172, 69480, 9, 'Considering all the above items, what is your overall rating of this instructor?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4229173, 69480, 10, 'How would you rate this instructor in comparison with all the others you have had at the university?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4229174, 69480, 11, 'Overall, what is your evaluation of this course?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4229175, 69480, 12, 'Please include any additional comments you may have.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4230418, 69210, 18, 'What did you particularly like about this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4230419, 69210, 19, 'What improvements would you suggest for this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4230420, 69210, 20, 'Please feel free to write any additional comments about this course or instructor.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4230579, 69208, 18, 'What did you particularly like about this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4230580, 69208, 19, 'What improvements would you suggest for this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4230692, 69208, 20, 'Please feel free to write any additional comments about this course or instructor.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4230693, 69212, 18, 'What did you particularly like about this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4230694, 69212, 19, 'What improvements would you suggest for this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4230695, 69212, 20, 'Please feel free to write any additional comments about this course or instructor.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4230807, 69211, 18, 'What did you particularly like about this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4230923, 69211, 19, 'What improvements would you suggest for this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4230924, 69211, 20, 'Please feel free to write any additional comments about this course or instructor.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4231066, 69213, 18, 'What did you particularly like about this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4231067, 69213, 19, 'What improvements would you suggest for this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4231187, 69213, 20, 'Please feel free to write any additional comments about this course or instructor.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4231216, 69215, 18, 'What did you particularly like about this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4231217, 69215, 19, 'What improvements would you suggest for this course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4231218, 69215, 20, 'Please feel free to write any additional comments about this course or instructor.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283329, 70459, 1, 'Learning Environment: The learning environment was positive.', 1, 1.0, 238705, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283330, 70459, 2, 'Learning Environment: I had multiple opportunities to collaborate with others and share ideas.', 1, 1.0, 238705, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283331, 70459, 3, 'Learning Environment: The instructor demonstrated sensitivity to diversity and individual differences.', 1, 1.0, 238705, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283332, 70459, 4, 'Learning Environment: I felt I could ask questions, disagree, and express ideas.', 1, 1.0, 238705, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283333, 70459, 5, 'Learning Environment: The instructor demonstrated enthusiasm about and interest in the content of the course.', 1, 1.0, 238705, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283334, 70459, 6, '<span>What did the instructor do particularly well in creating a productive learning environment for this course?</span>', 4, 1.0, 238705, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283335, 70459, 8, 'Instructional Practices: The course included challenging activities.', 1, 1.0, 238706, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283336, 70459, 9, 'Instructional Practices: Course activities were engaging.', 1, 1.0, 238706, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283337, 70459, 10, 'Instructional Practices: Course assignments were relevant and had a clear purpose.', 1, 1.0, 238706, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283338, 70459, 11, 'Instructional Practices: Assignments and/or assessments allowed me to demonstrate what I know.', 1, 1.0, 238706, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283339, 70459, 12, 'Instructional Practices: The instructor demonstrated current and thorough knowledge of the course content.', 1, 1.0, 238706, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283340, 70459, 13, 'Instructional Practices: The instructor effectively used technology where appropriate (including Canvas or other course support sites) to support and promote learning.', 1, 1.0, 238706, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283341, 70459, 14, '<span>In relation to instructional practices, what did the instructor do particularly well in this course?</span>', 4, 1.0, 238706, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283342, 70459, 16, 'Professional Responsibilities: The instructor was consistently prepared for class.', 1, 1.0, 238707, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283343, 70459, 17, 'Professional Responsibilities: The syllabus included clearly stated course objectives and requirements.', 1, 1.0, 238707, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283344, 70459, 18, 'Professional Responsibilities: The instructor gave appropriate feedback on assignments and/or assessments.', 1, 1.0, 238707, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283345, 70459, 19, 'Professional Responsibilities: Feedback was provided within a reasonable amount of time.', 1, 1.0, 238707, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283346, 70459, 20, 'Professional Responsibilities: The instructor was available for individual consultation.', 1, 1.0, 238707, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283347, 70459, 21, '<span>In relation to the instructor''s professional responsibilties, what did the instructor do particularly well in this course?</span>', 4, 1.0, 238707, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283348, 70459, 7, 'What could the instructor do to improve the learning environment for this course?', 4, 1.0, 238705, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283350, 70459, 15, 'In relation to instructional practices, what could be done to improve this course?', 4, 1.0, 238706, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283352, 70459, 22, 'What could the instructor do to improve in the area of professional responsibilities for this course?', 4, 1.0, 238707, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283353, 70459, 23, 'What were some things that were interesting about this course?', 4, 1.0, 238707, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283840, 70474, 1, 'How do you rate the agreement between course objectives and topic coverage?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283841, 70474, 2, 'How do you rate the organization and use of class periods?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283842, 70474, 3, 'How effective were the teaching methods and techniques for you?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283843, 70474, 4, 'How well does the instructor stimulate and challenge you to think and to question?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283844, 70474, 5, 'How interested is the instructor in helping you to understand the subject being taught?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283845, 70474, 6, 'How receptive is the instructor to questions and/or discussion during class?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283846, 70474, 7, 'How would you rate the fairness and effectiveness of the grading policies and procedures?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283847, 70474, 8, 'How would you rate the interest of the instructor in the teaching of this course?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283848, 70474, 9, 'Considering all the above items, what is your overall rating of this instructor?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283849, 70474, 10, 'How would you rate this instructor in comparison with all others you have had at the university?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283850, 70474, 11, 'Overall, what is your evaluation of this course?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283851, 70474, 13, 'Please include any constructive comments you may have regarding this course or instructor.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4283852, 70474, 12, 'How well was material coordinated between lectures and laboratories?', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500446, 74577, 1, 'Please indicate your gender:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500447, 74577, 2, 'Please indicate your grade:', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500449, 74577, 3, 'Overall, I would give this instructor an excellent rating.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500450, 74577, 4, 'Overall, I would give this course an excellent rating.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500451, 74577, 5, 'I received a syllabus that explained the class goals, expectations, and grading criteria.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500452, 74577, 6, 'I was informed about the WSU student code of conduct and what would happen if violated.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500453, 74577, 7, 'The teacher used class periods effectively.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500454, 74577, 8, 'The teacher was knowledgeable and well prepared.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500455, 74577, 9, 'The teacher showed enthusiasm for the subject of the course.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500456, 74577, 10, 'The instructor’s teaching strategy helped me to learn the material.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500457, 74577, 11, 'The assignments were related to the course content.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500458, 74577, 12, 'The teacher was interested in helping me, in class and out, to understand the subject and assignments.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500459, 74577, 13, 'The teacher encouraged development of new viewpoints and appreciations.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500460, 74577, 14, 'What did you find of most value in this class?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500461, 74577, 15, 'What would you change?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500462, 74577, 16, 'I understood that I was completing a college level course and earning college credit.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500463, 74577, 17, 'I knew what other concurrent classes were available at my school when I registered.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500464, 74577, 18, 'I was told that my concurrent class grade would be part of my permanent college record.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500465, 74577, 19, 'I had the opportunity to discuss my college credits with a concurrent enrollment representative at my high school.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500466, 74577, 20, 'I used my WSU Wildcat Card (student ID) during the year to attend activities or the gym.', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4500467, 74577, 21, 'Would you recommend this type of learning experience to a friend? Why or why not?<br />Once you have answered this question, please select the ''Stop...'' button at the left of the screen to complete your survey.', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919038, 82595, 1, '<p>The course syllabus explained course policies, expectations, and objectives.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919039, 82595, 2, '<p>Course study materials were clear and well organized.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919040, 82595, 3, '<p>Assignment instructions were easy to understand.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919041, 82595, 4, '<p>Exam /quiz questions adequately represented the study content.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919042, 82595, 5, '<p>My work was graded according to criteria provided by the instructor.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919043, 82595, 6, '<p>The course/instructor addressed or accommodated various learning styles.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919044, 82595, 7, '<p>The instructor treated me with courtesy and respect.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919045, 82595, 8, '<p>The instructor was available for assistance.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919046, 82595, 9, '<p>The instructor was willing to work with me on problems, questions, or concerns.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919047, 82595, 10, '<p>The instructor gave me clear and instructive feedback.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919048, 82595, 11, '<p>The instructor kept me well informed on upcoming due dates.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919049, 82595, 12, '<p>The instructor provided timely feedback to my questions.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919050, 82595, 13, '<p>The instructor scored and returned assignments promptly.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919051, 82595, 14, '<p>Overall, this was an effective instructor.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919052, 82595, 15, '<p>Overall, this was an effective course.</p>', 1, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919053, 82595, 16, '<p>State one thing the instructor did best.</p>', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919054, 82595, 17, '<p>State one thing the instructor could do better.</p>', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919055, 82595, 18, 'What did you like most about the course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919056, 82595, 19, 'What did you like least about the course?', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919057, 82595, 20, '<p>State the most important thing you learned in the course.</p>', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919058, 82595, 21, '<p>State one thing that would improve the course.</p>', 4, 1.0, NULL, NULL);
	
		INSERT INTO Questions (ID, testID, sequence, text, typeID, weight, categoryID, bonus)
		VALUES(4919059, 82595, 22, '<p>Please add any comments you feel would be helpful toward improving the instruction you have received.</p>', 4, 1.0, NULL, NULL);