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

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.`name`, `teachers`.`name`, `teachers`.`surname`
FROM `courses`
JOIN `course_teacher` ON `course_id` = `courses`.`id`
JOIN `teachers` ON `teacher_id` = `teachers`.`id`
WHERE `teachers`.`name` = 'fulvio' AND `teachers`.`surname` = 'amato';

