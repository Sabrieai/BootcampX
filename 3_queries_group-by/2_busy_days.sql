SELECT day,COUNT(id) as total_asignments
FROM assignments
GROUP BY day
HAVING COUNT(id) > 9
ORDER BY day;