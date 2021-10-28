CREATE PROCEDURE usp_EmployeesBySalaryLevel(@level VARCHAR(10))
AS
	SELECT FirstName, LastName FROM Employees
	WHERE dbo.ufn_GetSalaryLevel(Salary) = @level;