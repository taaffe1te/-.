SELECT AVG(YEAR(now())-YEAR(birthday)), id_department
FROM patient JOIN department ON patient.patient_ward = department.id_department
GROUP BY id_department;

-- select *, YEAR(now())-YEAR(birthday)
-- from
--   patient p
-- join
--   department d
--   on p.patient_ward = d.id_department
