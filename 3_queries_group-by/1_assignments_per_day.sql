SELECT day,COUNT(id) as total_asignments
FROM assignments
GROUP BY day
ORDER BY day;