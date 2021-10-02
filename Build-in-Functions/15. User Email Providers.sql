SELECT Username, SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN(Email)) AS 'Email Providers' FROM Users
ORDER BY [Email Providers], Username;