CREATE TRIGGER tr_SumChange ON Accounts
AFTER UPDATE
AS
	INSERT INTO Logs
	VALUES ((SELECT Id FROM inserted), (SELECT Balance FROM deleted), (SELECT Balance FROM inserted));