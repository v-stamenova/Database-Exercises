SELECT TOP(5) emp.EmployeeID, emp.FirstName, pro.Name FROM Employees AS emp
INNER JOIN EmployeesProjects AS empP ON emp.EmployeeID = empP.EmployeeID
INNER JOIN Projects AS pro ON empP.ProjectID = pro.ProjectID
WHERE pro.StartDate > CONVERT(DATETIME, '2002-08-13') AND pro.EndDate IS NULL
ORDER BY emp.EmployeeID ASC;