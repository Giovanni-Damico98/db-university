-- Selezionare tutti gli studenti nati nel 1990 (160)
SELECT * 
FROM `students`
WHERE YEAR()

-- Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT * 
FROM `courses`
WHERE `cfu` > 10;

-- Selezionare tutti gli studenti che hanno più di 30 anni
SELECT * 
FROM `students`
WHERE `date_of_birth` < "1994-10-16";

-- Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT * 
FROM `courses`
WHERE `period` = "I semestre"
AND `year` = 1;

-- Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT * 
FROM `exams`
WHERE `hour` > "14:00:00"
AND `date` = "2020-06-20";

-- Selezionare tutti i corsi di laurea magistrale (38)
SELECT * 
FROM `degrees`
WHERE `level` = "magistrale";

-- Da quanti dipartimenti è composta l'università? (12)
SELECT COUNT(id)
FROM `departments`;

-- Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT *
FROM `teachers`
WHERE `phone` IS null;

-- Inserire nella tabella degli studenti un nuovo record con i propri dati (per il campo
-- degree_id, inserire un valore casuale)
INSERT INTO students (degree_id,name,surname,date_of_birth,fiscal_code,enrolment_date,email) 
VALUES ('1','Giovanni','D\'AMICO','1998-10-25','DMCGNN98R25G273K','2019-02-21','gd.installazioni@gmail.com');        '

-- Cambiare il numero dell’ufficio del professor Pietro Rizzo in 126
UPDATE teachers
SET `office_number` = "126"
WHERE `name` = "pietro" AND `surname` = "rizzo";

--  Eliminare dalla tabella studenti il record creato precedentemente al punto 9
DELETE FROM `students`
WHERE `name` = "Giovanni" AND `surname` = "D'AMICO";