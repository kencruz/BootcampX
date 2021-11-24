SELECT AVG(sum) as average_total_duration 
FROM (SELECT SUM(completed_at - started_at) 
    FROM assistance_requests
    JOIN students ON students.id = assistance_requests.student_id
    JOIN cohorts ON cohorts.id = cohort_id
    GROUP BY cohorts.name) 
as total_duration_by_cohort;

