-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name`
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';
-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT `degrees`.`name`, `degrees`.`level`, `departments`.`name`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `degrees`.`level` = 'magistrale' AND `departments`.`name` = 'dipartimento di neuroscienze';
--  Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `teachers`.`id` AS 'id del professore',`teachers`.`name` AS 'nome del professore',`teachers`.`surname` AS 'cognome del professore', `course_teacher`.`course_id` AS 'id del corso'
FROM `teachers`
INNER JOIN `course_teacher` 
ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `teachers`.`id` = 44;
-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui
-- sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e
-- nome
SELECT `s`.`name`,`s`.`surname`,`d`.`id`,`d`.`name`,`dep`.`id`,`dep`.`name`
FROM `students` s
JOIN `degrees` d ON `s`.`degree_id` = `d`.`id`
JOIN `departments` dep ON  `d`.`department_id` = `dep`.`id`
ORDER BY `s`.`name`, `s`.`surname` ASC;
-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `courses`.`id` AS 'ID del corso',`courses`.`name` AS 'Nome del corso',`degrees`.`id` AS 'ID del corso di laurea',`degrees`.`name` AS 'Nome del corso di laurea',`teachers`.`name`AS'Nome dell\'insegnante',`teachers`.`surname`AS'Cognome dell\'insegnante'
FROM `courses`
JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id`
JOIN `course_teacher` ON  `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers`.`id`;
-- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
