CREATE VIEW report AS (
	SELECT id_doctor, count(id_medical_history) AS amount
    FROM doctor INNER JOIN medical_history ON medical_history_doctor = id_doctor
    WHERE YEAR(admission) = 2020 AND MONTH(admission) = 3
    GROUP BY id_doctor
);
SELECT id_doctor, surname
FROM doctor LEFT JOIN report USING (id_doctor)
WHERE amount IS NULL;
DROP VIEW report;
SELECT * FROM report;
