/*
    QUESTION: WHAT ARE THE TOP-PAYING DATA ANALYST JOBS?
    IDENTIFYING THE TOP 10 HIGHEST DATA ANALYST ROLES THAT ARE AVAILABLE REMOTELY
    FOCUSES ON JOB POSTINGS WITH SPECIFIED SALARIES (REMOVE NULLS)
    WHY/ HIGHLIGHT THE TOP-PAYING OPPORUNITIES FOR DATA ANALYST, OFFERING INSIGHTS INTO
*/

SELECT
    job_id,
    job_title,
    c.name AS company,
    salary_year_avg,
    job_posted_date
FROM 
    job_postings_fact AS j
LEFT JOIN
    company_dim AS c
ON  j.company_id = c.company_id
WHERE 
    job_title_short = 'Data Analyst' AND 
    job_location ='Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10
