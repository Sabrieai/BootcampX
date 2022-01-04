SELECT assignments.id as id, assignments.name as name, day, chapter, total_requests
FROM assignments
JOIN 
(SELECT COUNT(assistance_requests.*) as total_requests, assignment_id
FROM assistance_requests
JOIN assignments
ON assignment_id = assignments.id
GROUP BY assignment_id) as new_table
ON new_table.assignment_id = assignments.id
ORDER BY total_requests DESC;


