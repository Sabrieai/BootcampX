SELECT COUNT(assistance_requests.*) as total_assistances, teachers.name as name
FROM students
JOIN assistance_requests
ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY name;