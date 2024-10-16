SELECT doctor.*
FROM doctor LEFT JOIN medical_history ON medical_history_doctor = id_doctor
WHERE id_medical_history IS NULL;