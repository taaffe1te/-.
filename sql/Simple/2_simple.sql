SELECT *
FROM medical_history
WHERE datediff(now(),ordering)<=20;