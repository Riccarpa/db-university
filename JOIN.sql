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

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di
-- laurea a cui sono iscritti e il
-- relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`name`,`students`.`surname`, `degrees`.`name`,`departments`.`name`
FROM`students`
JOIN `degrees` ON `degrees`.`id` = `degree_id`
JOIN `departments` ON `department_id` = `departments`.`id`
ORDER BY `students`.`name`,`students`.`surname`;

-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `degrees`.`name`,`courses`.`name`,`teachers`.`name`,`teachers`.`surname`
FROM`degrees`
JOIN `courses` ON `degree_id` = `degrees`.`id`
JOIN `course_teacher` ON `course_id` = `courses`.`id`
JOIN `teachers` ON `teacher_id` = `teachers`.`id`

-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT `teachers`.`name`,`teachers`.`surname` , `departments`.`name`
FROM `teachers`
JOIN `course_teacher` ON `teacher_id` = `teachers`.`id`
JOIN `courses` ON `course_id` = `courses`.`id`
JOIN `degrees` ON `degree_id` = `degrees`.`id`
JOIN `departments` ON `department_id` = `departments`.`id`
WHERE `departments`.`name` = 'dipartimento di matematica';

-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per
--superare ciascuno dei suoi esami
SELECT  `students`.id AS studente,`exams`.`id` AS esame,((`exam_student`.`vote`)+1) AS 'tentativi'
FROM `exam_student`
JOIN `students` ON `student_id` = `students`.`id`
JOIN `exams` ON `exam_id` = `exams`.`id`
WHERE 'tentativi' < 18
ORDER BY `esame`  ASC
