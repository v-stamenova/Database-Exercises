-- Problem 22
SELECT PeakName FROM Peaks
ORDER BY PeakName;

-- Problem 23
SELECT TOP 30 CountryName, Population FROM Countries
INNER JOIN Continents ON Countries.ContinentCode = Continents.ContinentCode
WHERE ContinentName = 'Europe'
ORDER BY Population DESC, CountryName;

-- Problem 24
SELECT CountryName, CountryCode,
CASE 
	WHEN CurrencyCode = 'EUR' THEN 'Euro'
	ELSE 'Not Euro'
END AS Currency
FROM Countries
ORDER BY CountryName;