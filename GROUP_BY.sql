-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(`id`) AS numero, YEAR(`date_of_birth`) AS anno
FROM `students`
GROUP BY anno;

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`id`) AS numero,`office_address` AS ufficio
FROM `teachers`
GROUP BY ufficio;

-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id` AS sessione, AVG(`vote`) as media
FROM exam_student
GROUP BY sessione;

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id` as dipartimento, COUNT(`id`) as numero_corsi
FROM `degrees`
GROUP BY dipartimento;