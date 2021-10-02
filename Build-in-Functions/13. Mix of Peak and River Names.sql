SELECT PeakName, RiverName,
CONCAT(LOWER(PeakName), SUBSTRING(LOWER(RiverName), 2, LEN(RiverName))) AS mix
FROM Peaks, Rivers
WHERE SUBSTRING(PeakName, LEN(PeakName), 1) = SUBSTRING(RiverName, 1 , 1)
ORDER BY mix;