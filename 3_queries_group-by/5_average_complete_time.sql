SELECT s.name AS student, (SUM(a.duration) * 1.0 / COUNT(a)) AS average_assignment_duration
FROM students AS s
JOIN assignment_submissions AS a ON s.id = a.student_id
WHERE s.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;