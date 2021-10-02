SELECT CountryName AS 'Country Name', IsoCode AS 'ISO Code' FROM Countries
WHERE LEN(CountryName) - LEN(REPLACE(LOWER(CountryName), 'a', '')) >= 3
ORDER BY IsoCode;