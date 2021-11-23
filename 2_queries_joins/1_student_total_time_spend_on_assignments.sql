SELECT students.name as student_name, SUM(assignment_submissions.duration) as duration 
FROM students 
JOIN assignment_submissions 
ON assignment_submissions.student_id = students.id 
WHERE students.name = 'Ibrahim Schimmel' 
GROUP BY student_name;
