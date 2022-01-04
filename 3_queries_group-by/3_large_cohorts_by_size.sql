SELECT cohorts.name as cohort_name, COUNT(students.*) as student_count
FROM cohorts
JOIN students
ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY COUNT(students.cohort_id);