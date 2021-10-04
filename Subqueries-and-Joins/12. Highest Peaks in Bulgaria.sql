SELECT c.CountryCode, m.MountainRange, p.PeakName, p.Elevation FROM Peaks AS p
INNER JOIN Mountains AS m ON p.MountainId = m.Id
INNER JOIN MountainsCountries AS mc ON m.Id = mc.MountainId
INNER JOIN Countries AS c ON c.CountryCode = mc.CountryCode
WHERE c.CountryName = 'Bulgaria' AND p.Elevation > 2835
ORDER BY p.Elevation DESC;