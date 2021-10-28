CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4)) 
RETURNS VARCHAR(10)
BEGIN
	DECLARE @s_level AS VARCHAR(10);
	IF(@salary < 30000)
		SET @s_level = 'Low';
	ELSE IF(@salary <= 50000)
		SET @s_level = 'Average';
	ELSE
		SET @s_level = 'High';

	RETURN @s_level;
END