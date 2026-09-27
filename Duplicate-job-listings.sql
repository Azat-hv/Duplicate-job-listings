WITH POST AS
(
  SELECT 
    company_id 
  FROM job_listings
  GROUP BY company_id,title,description
    HAVING COUNT(*)>=2
)
SELECT 
  COUNT(company_id) AS duplicate_companies
FROM POST;

