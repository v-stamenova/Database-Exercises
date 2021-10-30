CREATE PROC usp_TransferMoney(@SenderId INT, @ReceiverId INT, @Amount MONEY)
AS
	UPDATE Accounts
	SET Balance = Balance - @Amount
	WHERE Id = @SenderId;

	UPDATE Accounts
	SET Balance = Balance + @Amount
	WHERE ID = @ReceiverId;