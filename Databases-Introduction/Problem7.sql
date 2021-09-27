-- Problem 7
CREATE TABLE People(
	Id int PRIMARY KEY IDENTITY(1, 1),
	Name VARCHAR(200) NOT NULL,
	Picture VARBINARY(MAX),
	Height DECIMAL(3, 2),
	Weight DECIMAL(5, 2),
	Gender VARCHAR(1) NOT NULL CHECK (Gender IN('m', 'f')),
	Birthdate DATE NOT NULL,
	Biography VARCHAR(MAX),
);


INSERT INTO People (Name, Picture, Height, Weight, Gender, Birthdate, Biography)
VALUES
	('Maria', 011010101, 1.64, 65.77, 'f', '1985/01/17', 'Marias Bio'),
	('Peter', 01111101, 1.88, 87.00, 'm', '1980/06/11', 'Peters Bio'),
	('Ida', 100000001, 1.64, 65.77, 'f', '1985/05/03', 'Idas Bio'),
	('Nia', 000011010, 1.70, 60.52, 'f', '1975/06/06', 'Nias Bio'),
	('Tom', 101010101, 1.90, 85.7, 'm', '1995/08/08', 'Toms Bio')