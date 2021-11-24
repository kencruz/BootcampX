SELECT assignments.id as id, assignments.name as name, assignments.day, assignments.chapter, count(assignments.*) as total_requests
FROM assistance_requests
JOIN assignments on assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY count(assignments.*) DESC;
