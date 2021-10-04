SELECT TOP(1) AVG(Employees.Salary) AS MinAverageSalary FROM Employees
INNER JOIN Departments ON Departments.DepartmentID = Employees.DepartmentID
GROUP BY Departments.Name
ORDER BY MinAverageSalary ASC;