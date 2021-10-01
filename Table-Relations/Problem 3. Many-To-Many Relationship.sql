CREATE TABLE Students(
	StudentID INT PRIMARY KEY IDENTITY,
	Name VARCHAR(30) NOT NULL
);

CREATE TABLE Exams(
	ExamID INT PRIMARY KEY IDENTITY(101, 1),
	Name VARCHAR(30)
); 

CREATE TABLE StudentsExams(
	StudentID INT NOT NULL,
	ExamID INT NOT NULL
);

ALTER TABLE StudentsExams
ADD CONSTRAINT PK_Student_Exam PRIMARY KEY (StudentID, ExamID);

INSERT INTO Students VALUES
	('Mila'),
	('Toni'),
	('Ron');

INSERT INTO Exams VALUES
	('SpringMVC'),
	('Neo4j'),
	('Oracle 11g');


INSERT INTO StudentsExams (StudentID, ExamID) VALUES
	(1, 101),
	(1, 102),
	(2, 101),
	(3, 103),
	(2, 102),
	(2, 103);