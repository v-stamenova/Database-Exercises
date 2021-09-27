/* 
-- Problem 1
CREATE DATABASE Minions;

-- Problem 2
CREATE TABLE Minions(
	Id INT PRIMARY KEY,
	Name varchar(255),
	Age INT
);

CREATE TABLE Towns(
	Id INT PRIMARY KEY,
	Name varchar(255)
);

-- Problem 3
ALTER TABLE Minions
ADD TownId INT FOREIGN KEY REFERENCES Towns(id); */

-- Problem 4
INSERT INTO Towns VALUES (1, 'Sofia');
INSERT INTO Towns VALUES (2, 'Plovdiv');
INSERT INTO Towns VALUES (3, 'Varna');

INSERT INTO Minions VALUES (1, 'Kevin', 22, 1);
INSERT INTO Minions VALUES (2, 'Bob', 15, 3);
INSERT INTO Minions (Id, Name, TownId) VALUES (3, 'Steward', 2);

/* -- Problem 5
TRUNCATE TABLE Minions;

-- Problem 6
DROP TABLE Minions;
DROP TABLE Towns; */