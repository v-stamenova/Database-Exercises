CREATE PROC usp_DepositMoney (@AccountId INT, @MoneyAmount MONEY)
AS
	UPDATE Accounts
	SET Balance = Balance + @MoneyAmount
	WHERE Accounts.Id = @AccountId;