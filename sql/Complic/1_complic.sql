# 1. Создать отчёт о лечащих врачах отделения XXX за 2020 год по форме: Уникальный номер врача, Фамилия врача, количество пациентов, у которых врач был лечащим.
SELECT * /*id_doctor, surname , count(id_medical_history) AS 'AMOUNT OF PATIENTS'*/ FROM department JOIN doctor ON id_department = doctor_department JOIN medical_history ON id_doctor = medical_history_doctor
WHERE department.nazvanie = 'Terapia' AND (year(admission) = 2020 OR year(dismissal) = 2020)
-- GROUP BY id_doctor;
