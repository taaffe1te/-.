SELECT consultant, COUNT(*)
FROM medical_history
where consultant IS NOT NULL AND YEAR(admission) = 2020
GROUP BY consultant
