-- Problem 8
CREATE TABLE Users(
	Id INT IDENTITY,
	Username NVARCHAR(30) NOT NULL,
	Password NVARCHAR(26) NOT NULL,
	ProfilePicture IMAGE,
	LastLoginTime DATETIME,
	IsDeleted BIT,
	CONSTRAINT PK_Id PRIMARY KEY (Id)
);

INSERT INTO users (Username, Password, IsDeleted) VALUES
	('mmikovxy','1234567', 1),
	('hasanvha2','7654321', 0),
	('zvqra21','mnogoqkcom', 1),
	('zedlol','goten', 1),
	('panetoxy2','azsummnogoqk', 1);

/*
-- Problem 9
ALTER TABLE Users
DROP CONSTRAINT PK_id;

ALTER TABLE USERS
ADD CONSTRAINT PK_IdUsername PRIMARY KEY(Id, Username);

-- Problem 10
ALTER TABLE USERS
ADD CONSTRAINT CHK_Password CHECK (LEN(Password) >= 5);

-- Problem 11
ALTER TABLE USERS
ADD CONSTRAINT DF_LastLoginTime DEFAULT(GETDATE()) FOR LastLoginTime;

-- Problem 12
ALTER TABLE USERS
DROP CONSTRAINT PK_IdUsername;

ALTER TABLE USERS
ADD CONSTRAINT PK_Id PRIMARY KEY(Id);

ALTER TABLE USERS
ADD CONSTRAINT CHK_Username CHECK (LEN(Username) >= 3); */