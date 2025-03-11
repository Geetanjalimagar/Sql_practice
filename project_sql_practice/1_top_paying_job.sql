/* Find the top-paying data analyst jobs?
-identify the top 10 highest-paying Data Analyst roles that are available remotley.
-focuss on job postings with specified salaries and remove nulls.
-why? highlight the top-paying opportunities for Data Analyst, offering insights into */

SELECT job_id,
        job_title,
        job_location,
        salary_year_avg,
        job_posted_date,
        name as company_name
FROM
        job_postings_fact
LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id        
WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
ORDER BY salary_year_avg desc
LIMIT 10
