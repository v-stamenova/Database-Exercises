SELECT MountainRange, PeakName, Elevation FROM Peaks
INNER JOIN Mountains ON Peaks.MountainId = Mountains.Id
WHERE MountainRange = 'Rila'
ORDER BY Elevation DESC;