SELECT teachers.name as teacher, cohorts.name as cohort, COUNT(teachers.name) as total_assistances 
FROM teachers
JOIN assistance_requests
ON teachers.id = teacher_id
JOIN students
ON students.id = student_id
JOIN cohorts
ON cohorts.id = cohort_id 
GROUP BY teachers.name, cohorts.name
HAVING cohorts.name = 'JUL02' 
ORDER BY teacher;