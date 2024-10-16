CREATE PROCEDURE createRaport(y INT, m INT)
BEGIN
 DECLARE doctor_id INT;
    DECLARE doctor_surname VARCHAR(25);
    DECLARE patient_amount INT;
    DECLARE done INT DEFAULT FALSE;
    DECLARE raport_cursor CURSOR FOR
      SELECT doctor.id_doctor, doctor.surname, count(medical_history.id_medical_history)
      FROM doctor INNER JOIN medical_history ON doctor.id_doctor = medical_history.story_doctor
      WHERE YEAR(medical_history.reg_date) = y AND MONTH(medical_history.reg_date) = m
      GROUP BY doctor.id_doctor;
        
    DECLARE EXIT HANDLER FOR SQLSTATE '02000' BEGIN SET done = TRUE; END;
    DELETE FROM raport WHERE id_doctor > 0;
    OPEN raport_cursor;
        
    WHILE (done <> true) do
        FETCH NEXT FROM raport_cursor INTO doctor_id, doctor_surname, patient_amount;
        INSERT INTO raport(id_doctor, raport_year, raport_month, doctor_surname, patients_amount)
        VALUES(doctor_id, y, m, doctor_surname, patient_amount);
    END WHILE;
    close raport_cursor;
END