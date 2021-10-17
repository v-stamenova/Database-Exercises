SELECT dep.DepartmentID, MIN(emp.Salary) AS MinimumSalary FROM Departments dep
INNER JOIN Employees emp ON emp.DepartmentID = dep.DepartmentID
WHERE emp.HireDate > '01-01-2000'
GROUP BY dep.DepartmentID
HAVING dep.DepartmentID IN (2,5,7);