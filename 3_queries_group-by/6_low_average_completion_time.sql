SELECT s.name AS student, AVG(a_s.duration) AS average_assignment_duration, AVG(a.duration) AS average_estimated_duration
FROM students AS s

JOIN assignment_submissions AS a_s
ON s.id = a_s.student_id

JOIN assignments AS a
ON a_s.assignment_id = a.id

WHERE s.end_date IS NULL

GROUP BY student

HAVING AVG(a_s.duration) < AVG(a.duration)

ORDER BY average_assignment_duration ASC;

