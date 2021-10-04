SELECT FirstName, LastName, HireDate, Dep.Name AS DeptName FROM Employees AS Emp
INNER JOIN Departments AS Dep ON Dep.DepartmentID = Emp.DepartmentID
WHERE YEAR(Emp.HireDate) > 1999 AND Dep.Name IN ('Sales', 'Finance')
ORDER BY Emp.HireDate ASC;