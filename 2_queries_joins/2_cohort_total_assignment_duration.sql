SELECT SUM(a.duration) AS total_duration
FROM assignment_submissions AS a
JOIN students AS s ON a.student_id = s.id
JOIN cohorts AS c ON s.cohort_id = c.id
WHERE c.name = 'FEB12';