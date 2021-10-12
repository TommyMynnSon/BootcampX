SELECT s.name AS student_name,
       c.name AS cohort_name,
       c.start_date AS cohort_start_date,
       s.start_date AS student_start_date
FROM students AS s
JOIN cohorts AS c ON s.cohort_id = c.id
WHERE s.start_date < c.start_date
ORDER BY c.start_date;