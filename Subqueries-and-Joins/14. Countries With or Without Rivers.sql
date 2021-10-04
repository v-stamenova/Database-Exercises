SELECT TOP(5) cou.CountryName, r.RiverName FROM Countries cou
INNER JOIN Continents con ON cou.ContinentCode = con.ContinentCode
FULL JOIN CountriesRivers cr ON cr.CountryCode = cou.CountryCode
FULL JOIN Rivers r ON r.Id = cr.RiverId
WHERE con.ContinentName = 'Africa'
ORDER BY cou.CountryName ASC;