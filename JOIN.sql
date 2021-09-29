-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT `students`.*, `degrees`.`name` 
FROM `students`
JOIN `degrees` ON `degree_id` = `students`.`id`
WHERE `degrees`.`name` = 'corso di laurea in economia';