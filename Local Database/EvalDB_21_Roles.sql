	CREATE TABLE Roles(
		id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
		name varchar(30) NOT NULL
	);
	SET IDENTITY_INSERT Roles ON;
	
		INSERT INTO Roles (id, name)
		VALUES(1, 'Administrator');
	
		INSERT INTO Roles (id, name)
		VALUES(2, 'Manager');
	
		INSERT INTO Roles (id, name)
		VALUES(3, 'Instructor');
	
		INSERT INTO Roles (id, name)
		VALUES(4, 'Support Staff');
	
		INSERT INTO Roles (id, name)
		VALUES(5, 'Site Admin');
	
		INSERT INTO Roles (id, name)
		VALUES(6, 'Site Manager');
	
		INSERT INTO Roles (id, name)
		VALUES(7, 'Site Staff');
	
		INSERT INTO Roles (id, name)
		VALUES(8, 'Remote Proctor Admin');
	
		INSERT INTO Roles (id, name)
		VALUES(9, 'Remote Proctor');
	
		INSERT INTO Roles (id, name)
		VALUES(11, 'WSU Staff');
	
		INSERT INTO Roles (id, name)
		VALUES(12, 'Adjunct');
	
		INSERT INTO Roles (id, name)
		VALUES(13, 'Department Chair');
	
		INSERT INTO Roles (id, name)
		VALUES(14, 'Dean');
	
		INSERT INTO Roles (id, name)
		VALUES(15, 'Reports Instructor');
	
		INSERT INTO Roles (id, name)
		VALUES(16, 'Tenure');
	
		INSERT INTO Roles (id, name)
		VALUES(17, 'Single Eval Admin');
	
		INSERT INTO Roles (id, name)
		VALUES(18, 'Demo Instructor');
	
		INSERT INTO Roles (id, name)
		VALUES(19, 'Student');
	
		INSERT INTO Roles (id, name)
		VALUES(20, 'Standards Admin');
	
	SET IDENTITY_INSERT Roles OFF;