SELECT COUNT(*) - 
(SELECT COUNT(DISTINCT c.CountryCode) FROM Countries c
INNER JOIN MountainsCountries mc ON c.CountryCode = mc.CountryCode)
AS Count FROM Countries c;