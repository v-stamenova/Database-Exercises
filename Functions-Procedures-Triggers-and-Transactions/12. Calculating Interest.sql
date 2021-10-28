CREATE PROCEDURE usp_CalculateFutureValueForAccount (@AccountID INT, @yearlyInterestRate FLOAT)
AS
	SELECT
		ah.Id,
		ah.FirstName,
		ah.LastName,
		[dbo].[ufn_CalculateFutureValue](ac.Balance, @yearlyInterestRate, 5) As [Balance in 5 years]
	FROM
		Accounts ac
	INNER JOIN
		AccountHolders ah ON ac.AccountHolderId = ah.Id
	WHERE ah.Id = @AccountID;