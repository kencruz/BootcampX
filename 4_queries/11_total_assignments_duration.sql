SELECT assignments.day, count(assignments.day) 
FROM assignments 
JOIN assistance_requests on assignments.id = assignment_id
GROUP BY assignments.day
ORDER BY assignments.day;
