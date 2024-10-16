SELECT id_department, nazvanie, surnam, sum(number_of_seats)
FROM department JOIN ward ON ward_department = id_department
GROUP BY id_department;
