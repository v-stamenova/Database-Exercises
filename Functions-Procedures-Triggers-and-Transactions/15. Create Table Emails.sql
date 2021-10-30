CREATE TRIGGER tr_NewLog
ON Logs
AFTER INSERT
AS 
	INSERT INTO NotificationEmails
	VALUES
	(
		(SELECT AccountID FROM inserted),
		(SELECT 
			CONCAT
			(
				'Balance change for account:', 
				AccountID
			) 
		FROM inserted),
		(SELECT 
			CONCAT
			(
				'On ',
				FORMAT (GETDATE(), 'MMM dd yyyy hh:mm tt'),
				' your balance was changed from ',
				ROUND(i.OldSum, 2),
				' to ',
				ROUND(i.NewSum, 2)
			) 
		FROM inserted i)
	)
;