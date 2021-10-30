CREATE PROC usp_WithdrawMoney (@AccountId INT, @MoneyAmount MONEY)
AS
	UPDATE Accounts
	SET Balance = Balance - @MoneyAmount
	WHERE Id = @AccountId;