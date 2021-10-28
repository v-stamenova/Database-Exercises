CREATE PROCEDURE usp_DeleteEmployeesFromDepartment (@departmentId INT)
AS
	DELETE FROM Employees WHERE DepartmentID = @departmentId;
	DELETE FROM Departments WHERE DepartmentID = @departmentId;