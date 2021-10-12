SELECT c.name AS cohort, COUNT(c.*) AS total_submissions
FROM cohorts AS c
JOIN students AS s ON c.id = s.cohort_id
JOIN assignment_submissions AS a ON s.id = a.student_id
GROUP BY c.name
ORDER BY COUNT(c.*) DESC;