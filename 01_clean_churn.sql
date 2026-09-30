-- 01_clean_churn.sql
-- Build a clean Sweden churn table from the raw newly_empl data.

CREATE TABLE churn_sweden AS
SELECT
  TIME_PERIOD AS year,
  c_birth AS birth_group,
  CAST(OBS_VALUE AS REAL) AS newly_employed_pct,
  OBS_FLAG AS flag
FROM newly_empl
WHERE geo = 'Sweden'
  AND wstatus = 'Employees'
  AND age = 'From 20 to 64 years'
  AND c_birth IN ('Reporting country', 'Foreign country');
  
 -- Check results.
 SELECT * FROM churn_sweden ORDER BY year, birth_group;