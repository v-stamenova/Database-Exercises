SELECT dep.DepartmentID, SUM(emp.Salary) AS TotalSalary FROM Departments dep
INNER JOIN Employees emp ON emp.DepartmentID = dep.DepartmentID
GROUP BY dep.DepartmentID;