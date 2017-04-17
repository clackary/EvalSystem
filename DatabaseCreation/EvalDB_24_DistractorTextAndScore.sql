--This table essentially adds 2 columns to the Distractor table. A more thorough explanation of its purpose can be found in the root readme.txt file.
CREATE TABLE Evals_DistractorTextAndScore (
	ID int IDENTITY(1,1) NOT NULL,
	distractorID int NOT NULL,
	score tinyint NULL,
	text nvarchar(MAX) NULL
)