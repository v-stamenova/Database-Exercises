SELECT TOP(5) EmployeeID, JobTitle, Employees.AddressID, AddressText FROM Employees
INNER JOIN Addresses ON Employees.AddressID = Addresses.AddressID
ORDER BY Employees.AddressID ASC;