SELECT g.Name as Game,
 
CASE
WHEN DATEPART(HOUR, g.Start) BETWEEN 0 AND 11 THEN 'Mourning'
WHEN DATEPART(HOUR, g.Start) BETWEEN 12 AND 17 THEN 'Afternoon'
WHEN DATEPART(HOUR, g.Start) BETWEEN 18 AND 23 THEN 'Evening'
END AS 'Part of the Day',
 
CASE
WHEN g.Duration <=3 THEN 'Extra Short'
WHEN g.Duration >=3 AND  g.Duration <=6 THEN 'Short'
WHEN g.Duration >6 THEN 'Long'
WHEN G.Duration is null THEN 'Extra Long'
END AS 'Duration'
 
FROM Games AS g
 
ORDER BY g.Name, [Duration], [Part of the Day]