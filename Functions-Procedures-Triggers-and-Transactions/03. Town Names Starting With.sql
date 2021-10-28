CREATE PROC usp_GetTownsStartingWith @string VARCHAR(10)
AS
	SELECT Name FROM Towns
	WHERE LOWER(Name) LIKE LOWER(@string + '%')