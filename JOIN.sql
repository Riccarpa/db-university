-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT `students`.*, `degrees`.`name` 
FROM `students`
JOIN `degrees` ON `degree_id` = `students`.`id`
WHERE `degrees`.`name` = 'corso di laurea in economia';

-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.`name`,`departments`.`name` 
FROM `degrees`
JOIN `departments` ON `department_id` = `departments`.`id`
WHERE departments.name  = 'dipartimento di neuroscienze';

