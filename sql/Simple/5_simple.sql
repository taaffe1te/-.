SELECT COUNT(*)
FROM patient JOIN medical_history ON patient.id_patient = medical_history.medical_history_patient
WHERE adres = 'Moscow' AND ordering IS NULL;