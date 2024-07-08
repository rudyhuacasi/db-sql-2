1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia:

SELECT
    `degrees`.`id`, `degrees`.`name`,`students`.*
FROM
    `students`
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
WHERE
    `degrees`.`name` = 'Corso di Laurea in Economia';

2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di
Neuroscienze

SELECT
    `degrees`.*, `departments`.`name`
FROM
    `degrees`
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
WHERE
    `department_id` = 7 AND `level` = 'magistrale'

3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT
   `courses`.*,`course_teacher`.`teacher_id`, `teachers`.`name`, `teachers`.`surname`
FROM
    `course_teacher`
    INNER JOIN `courses` ON `course_teacher`.`course_id`= `courses`.`id`
    INNER JOIN `teachers` ON `course_teacher`.`teacher_id`= `teachers`.`id`
WHERE
    `teacher_id` = 44;

4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui
sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e
nome

SELECT
    `students`.`id`,
    `students`.`name`,
    `students`.`surname`,
    `students`.`fiscal_code`,
    `degrees`.`id` AS `id_corsi`,
    `degrees`.`name`,
    `degrees`.`level`,
    `degrees`.`department_id` AS `id_departamenti`,
    `departments`.`name`,
    `departments`.`address`
FROM
    `students`
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname`,`students`.`name` 

5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

SELECT
    `degrees`.`id` AS `id_corsi_di_laurea`,
    `degrees`.`name`,
    `degrees`.`level`,
    `courses`.`id` AS `id_corsi`,
    `courses`.`name`,
	`courses`.`description`,
    `teachers`.`id` AS `id_professore`,
    `teachers`.`name`,
     `teachers`.`surname`
FROM
    `course_teacher`
INNER JOIN `courses` ON  `course_teacher`.`course_id`= `courses`.`id`
INNER JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id`
INNER JOIN `teachers` ON  `course_teacher`.`teacher_id`= `teachers`.`id` 


6. Selezionare tutti i docenti che insegnano nel Dipartimento di
Matematica (54)

SELECT DISTINCT
    teachers.*,
    `departments`.`name`
FROM
    teachers
INNER JOIN course_teacher ON teachers.id = course_teacher.teacher_id
INNER JOIN courses ON course_teacher.course_id = courses.id
INNER JOIN DEGREES ON courses.degree_id = DEGREES.id
INNER JOIN departments ON DEGREES.department_id = departments.id
WHERE
    `departments`.`name` = 'Dipartimento di Matematica';

