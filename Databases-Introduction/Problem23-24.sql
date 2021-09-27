-- Problem 23
UPDATE Payments
SET TaxRate = TaxRate * 0.97;

SELECT TaxRate FROM Payments;

-- Problem 24
DELETE FROM Occupancies;