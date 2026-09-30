-- 02_churn_by_year.sql
-- One row per year: Swedish-born and foreign-born side by side, plus the gap.

CREATE TABLE churn_by_year AS
SELECT
  year,
  MAX(CASE WHEN birth_group = 'Reporting country' THEN newly_employed_pct END) AS swedish_born,
  MAX(CASE WHEN birth_group = 'Foreign country' THEN newly_employed_pct END) AS foreign_born,
  MAX(flag) AS flag
FROM churn_sweden
GROUP BY year
ORDER BY year;