CREATE TABLE Evals_DistractorTextAndScore (
	ID int IDENTITY(1,1) NOT NULL,
	distractorID int NOT NULL,
	score tinyint NULL,
	text nvarchar(MAX) NULL
)