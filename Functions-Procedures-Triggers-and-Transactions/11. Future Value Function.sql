CREATE FUNCTION ufn_CalculateFutureValue (@sum DECIMAL(15,4), @yil FLOAT, @years INT)
RETURNS DECIMAL(15,4)
BEGIN
	DECLARE @output DECIMAL(15,4)
	SET @output = @sum * (POWER((1 + @yil), @years));
	RETURN @output;
END