select id_doctor
from doctor
where datediff(NOW(), admissionn)=(select max(datediff(NOW(), admissionn)) from doctor where dismissal is null) or datediff(NOW(), admissionn)=(select max(datediff(dismissal, admissionn)) from doctor where dismissal is not null)