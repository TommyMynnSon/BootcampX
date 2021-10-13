-- SELECT assignments.day,
--   COUNT(assignments.day) AS number_of_assignments,
--   SUM(assignments.duration) AS duration
-- FROM assistance_requests
--   JOIN assignments ON assistance_requests.assignment_id = assignments.id
-- GROUP BY assignments.day
-- ORDER BY assignments.day;
SELECT day,
  count(*) as number_of_assignments,
  sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;