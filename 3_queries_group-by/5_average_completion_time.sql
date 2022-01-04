SELECT students.name as student, AVG(duration)as average_assignment_duration 
FROM students
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
GROUP BY student, end_date
HAVING end_date IS NULL
ORDER BY average_assignment_duration DESC;