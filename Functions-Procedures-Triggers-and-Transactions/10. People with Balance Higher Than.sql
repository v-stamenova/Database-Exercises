CREATE PROCEDURE usp_GetHoldersWithBalanceHigherThan (@number MONEY)
AS
	SELECT
		newT.FirstName,
		newT.LastName
	FROM
		(SELECT 
			ah.FirstName, 
			ah.LastName, 
			SUM(ac.Balance) AS WholeBalance
		FROM AccountHolders ah	
		INNER JOIN Accounts ac ON ac.AccountHolderId = ah.Id
		GROUP BY ah.FirstName, ah.LastName) AS newT
	WHERE WholeBalance > @number
	ORDER BY FirstName, LastName;