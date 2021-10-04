SELECT TOP(5) EmployeeID, FirstName, Salary, Name AS DepartmentName FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Salary > 15000
ORDER BY Departments.DepartmentID ASC;