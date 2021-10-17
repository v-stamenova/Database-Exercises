SELECT * INTO [EmployeesAS3] FROM Employees
WHERE [Salary] >= 30000

DELETE FROM EmployeesAS3 WHERE ManagerID = 42;

UPDATE EmployeesAS3
SET Salary = Salary + 5000
WHERE DepartmentID = 1;

SELECT dep.DepartmentID, AVG(emp.Salary) AS AverageSalary FROM EmployeesAS3 emp
INNER JOIN Departments dep ON dep.DepartmentID = emp.DepartmentID
GROUP BY dep.DepartmentID;