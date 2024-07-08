1. Contare quanti iscritti ci sono stati ogni anno:

SELECT
    COUNT(`id`) AS `iscritti`,
    YEAR(`enrolment_date`) AS `anno`
FROM
    `students`
GROUP BY
    YEAR(`enrolment_date`)

2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT
    COUNT(`id`) AS `quantità_di_insegnanti`, 
    `office_address` AS `direzioni`
FROM
    `teachers`
    
GROUP BY 
    `office_address`

3. Calcolare la media dei voti di ogni appello d'esame

SELECT
    `student_id`,`student_id`,AVG(`vote`) AS 'media_voti'
FROM
    `exam_student`
GROUP BY
    `student_id`

4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT
    COUNT(`id`)  AS 'quantità_corsi',
    `degree_id` AS 'dipartimenti'
FROM
    `courses`
GROUP BY
    `degree_id`