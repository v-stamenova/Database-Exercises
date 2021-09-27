CREATE DATABASE Movies;

CREATE TABLE Directors(
	Id INT PRIMARY KEY IDENTITY,
	DirectorName VARCHAR(30) NOT NULL,
	Notes VARCHAR(255)
);

CREATE TABLE Genres(
	Id INT PRIMARY KEY IDENTITY,
	GenreName VARCHAR(30) NOT NULL,
	Notes VARCHAR(255)
);

CREATE TABLE Categories(
	Id INT PRIMARY KEY IDENTITY,
	CategoryName VARCHAR(30) NOT NULL,
	Notes VARCHAR(255)
); 

CREATE TABLE Movies(
	Id INT PRIMARY KEY IDENTITY,
	Title VARCHAR(100) NOT NULL,
	DirectorId INT NOT NULL FOREIGN KEY REFERENCES Directors(Id),
	CopyrightYear INT,
	Length INT,
	GenreId INT NOT NULL FOREIGN KEY REFERENCES Genres(Id),
	CategoryId INT NOT NULL FOREIGN KEY REFERENCES Categories(Id),
	Rating DECIMAL,
	Notes VARCHAR(255),
);

INSERT INTO Directors(DirectorName) VALUES 
	('Pesho'), 
	('Mitko'),
	('Калин'),
	('Калина'),
	('Явор');

INSERT INTO Genres (GenreName) VALUES 
	('Asen'),
	('Kaloqn'),
	('Simeon'),
	('Boris'),
	('Крум');

INSERT INTO Categories (CategoryName) VALUES	
	('HISTORY'),
	('Action'),
	('History'),
	('drama'),
	('Triller');

INSERT INTO Movies (Title,DirectorId,CopyrightYear,Length,GenreId,CategoryId,Rating) VALUES
	(' King' ,5,1999,78,1,5,10),
	('RRIRIR',4,2000,90,2,4,9),
	('plpppo',3,1980,100,3,3,5),
	('kkiklo',2,1890,20,4,2,10),
	('ukukkk',1,1990,120,5,1,10)