SELECT TOP(5) emp.EmployeeID, emp.FirstName, 
CASE WHEN YEAR(pro.StartDate) >= 2005 THEN NULL ELSE pro.Name END AS ProjectName
FROM Employees AS emp
INNER JOIN EmployeesProjects AS empP ON emp.EmployeeID = empP.EmployeeID
INNER JOIN Projects AS pro ON empP.ProjectID = pro.ProjectID
WHERE emp.EmployeeID = 24
ORDER BY emp.EmployeeID ASC;