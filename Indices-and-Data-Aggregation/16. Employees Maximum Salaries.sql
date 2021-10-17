SELECT emp.DepartmentID, MAX(emp.Salary) AS MaxSalary FROM Employees emp
INNER JOIN Departments dep ON dep.DepartmentID = emp.DepartmentID
GROUP BY emp.DepartmentID
HAVING MAX(emp.Salary) NOT BETWEEN 30000 AND 70000; 