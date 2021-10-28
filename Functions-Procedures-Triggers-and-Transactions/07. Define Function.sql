CREATE FUNCTION ufn_IsWordComprised(@setOfLetters VARCHAR(255), @word VARCHAR(20))
RETURNS BIT
BEGIN
	DECLARE @out BIT;
	DECLARE @i INT;
	SET @out = 1;
	SET @i = 0;

	WHILE(@i <= LEN(@word))
	BEGIN
		IF(@setOfLetters NOT LIKE ('%' + SUBSTRING(@word, @i, 1) + '%'))
			SET @out = 0;
		
		SET @i = @i + 1;
	END


	RETURN @out;
END