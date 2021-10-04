SELECT TOP(50) FirstName, LastName, Name as Town, AddressText FROM Employees
INNER JOIN Addresses ON Addresses.AddressID = Employees.AddressID
INNER JOIN Towns ON Towns.TownID = Addresses.TownID
ORDER BY FirstName ASC, LastName;