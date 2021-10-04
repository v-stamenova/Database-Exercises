SELECT c.CountryCode, COUNT(m.MountainRange) AS MountainRanges FROM Mountains AS m
INNER JOIN MountainsCountries AS mc ON m.Id = mc.MountainId
INNER JOIN Countries AS c ON c.CountryCode = mc.CountryCode
WHERE c.CountryName IN ('United States', 'Russia', 'Bulgaria')
GROUP BY c.CountryCode;