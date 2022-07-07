









-- Contare quanti iscritti ci sono stati ogni anno (la data di iscrizione sulla tabella students è enrolment_date)
SELECT year (enrolment_date) as academic_year, COUNT(*) as enrolment_date 
FROM students
GROUP BY year(enrolment_date) 
ORDER BY year(enrolment_date) desc  ;




-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia 
 select *
 from students s 
 inner join degrees d 
 on s.degree_id = d.id
 where department_id = 9


 
-- Selezionare tutti i corsi in cui insegna Fulvio Amato  

 
 select *  
 from course_teacher ct 
 inner join teachers t 
 on ct.teacher_id = t.id
 where teacher_id = 44

 
 -- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

select * 
from students s 
inner join degrees d 
on s.degree_id = d.id
inner join departments d2 
on d.department_id = d2.id 
order by s.surname , s.name  ;







-- Contare quanti corsi di laurea ci sono per ogni dipartimento e mostrare nome dipartimento e numero di corsi  
-- (i corsi sono in degree ) (l' id dei dipartimenti si trova sempre in degree)



select count(department_id) as number_course, d2.name 
from degrees d 
inner join departments d2 
on d.department_id = d2.id 
group  by d2.name 

 