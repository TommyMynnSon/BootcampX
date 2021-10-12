SELECT c.name, COUNT(*)
FROM cohorts AS c
JOIN students AS s ON c.id = s.cohort_id
GROUP BY c.name
HAVING COUNT(*) >= 18
ORDER BY COUNT(*);