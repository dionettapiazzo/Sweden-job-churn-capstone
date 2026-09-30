# Supporting Job Stability for Foreign-Born Workers in Sweden

**Google Data Analytics Certificate, capstone project (people analytics)**

Foreign-born employees in Sweden are more often in the first year of a job than Swedish-born employees. In every year from 1997 to 2025, a larger share of foreign-born employees had started their current job within the past 12 months. In 2025 the shares were 19.4% and 14.1%.

This measure counts anyone who started a job in the past year, whether they changed jobs, entered the job market or recently moved to Sweden. It shows how established people are in the job market, not why anyone left a job. For employers, it points to the first year of a job as the time when support matters most.

- **Interactive charts:** [Tableau Public workbook](https://public.tableau.com/views/JobChurnAmongForeign-BornWorkersinSwedenline/Shareofemployees) (click either chart below to open it)
- **Full case study:** [Casestudy_job_churn.pdf](Casestudy_job_churn.pdf)

---

## Business question

How does job stability differ between foreign-born and Swedish-born employees in Sweden, how has that changed over time, and how can employers help new hires build stable careers?

**Scenario:** The people team at a mid-sized Swedish company is designing an inclusive onboarding program. Many recent hires were born outside Sweden, and the team wants to know whether these employees tend to start from a less established position in the job market, so the program can support them through their first year.

**Guiding questions:**

1. Are foreign-born employees more often in the first year of a job than Swedish-born employees?
2. Has that difference grown, shrunk or stayed stable since 1997?
3. Do both groups respond to economic changes in the same way?

## Data

| | |
|---|---|
| Source | Eurostat, EU Labour Force Survey |
| Dataset | [lfsa_enewasc](https://ec.europa.eu/eurostat/databrowser/view/lfsa_enewasc/default/table?lang=en): share of employed persons in their current job 12 months or less, by country of birth |
| Coverage | Sweden, employees aged 20–64, 1997–2025 |
| Groups | Swedish-born and foreign-born |
| Licence | Reuse permitted with attribution. Source: Eurostat, dataset lfsa_enewasc |

## Tools

- **SQLite** (DB Browser for SQLite): cleaning and analysis
- **Tableau Public**: visualization

## Process

1. Imported the raw Eurostat CSV into SQLite and kept it unchanged.
2. Filtered to Sweden, employees, ages 20–64, and the two birth groups.
3. Converted values from text to numbers and renamed columns.
4. Verified 58 rows (29 years × 2 groups), with no missing values.
5. Reshaped to one row per year and calculated the difference between groups.
6. Checked data quality flags and reviewed Eurostat and Statistics Sweden metadata on survey method changes (2001, 2005, 2018, 2021).

SQL files:
- [`01_clean_churn.sql`](01_clean_churn.sql): builds the clean Sweden table
- [`02_churn_by_year.sql`](02_churn_by_year.sql): reshapes by year and adds the gap column

## Key findings

[![Share of employees in the first year of their job, Swedish-born vs. foreign-born](https://public.tableau.com/static/images/Jo/JobChurnAmongForeign-BornWorkersinSwedenline/Shareofemployees/1.png)](https://public.tableau.com/views/JobChurnAmongForeign-BornWorkersinSwedenline/Shareofemployees)

1. **The difference is persistent.** A larger share of foreign-born employees were in the first year of their job in all 29 years, by 3.9 to 9.4 percentage points.
2. **Both groups move with the economy.** Both shares fell in 2009, in 2020, and from 2022 to 2025. When fewer jobs are available, people stay put and employers hire less.
3. **The gap widened, then narrowed.** It rose in the late 2010s, reaching 8–9 points in 2018–2020, and narrowed to about 5 points by 2023–2025. One possible explanation is that many people who arrived in 2015–2016 were starting their first jobs in Sweden around 2017–2019.

[![Difference between foreign-born and Swedish-born, by year](https://public.tableau.com/static/images/Jo/JobChurnAmongForeign-BornWorkersinSweden/Gap/1.png)](https://public.tableau.com/views/JobChurnAmongForeign-BornWorkersinSweden/Gap)

*Dotted lines mark years when the survey method changed.*

## Recommendations

The first year of a job is when employees are least established. Under Sweden's Discrimination Act, programs apply to all new hires; those newest to the Swedish job market are likely to benefit most.

1. **Listen to new hires in their first year** with short surveys at 3 and 12 months, reported in aggregate by department and role.
2. **Introduce structured first-year onboarding for everyone**, with a mentor or buddy, check-ins at 30, 90 and 180 days, and an introduction to workplace norms and unwritten rules.
3. **Create clearer paths from temporary to permanent contracts** if new hires say contract uncertainty is a concern.

## Limitations

- Survey method changes in 2001, 2005, 2018 and 2021 may affect year-to-year comparisons.
- "New in their job" can't separate people who changed jobs from people entering work for the first time.
- "Foreign-born" doesn't distinguish people who arrived as children from those who arrived as adults.
- People without residence permits aren't included in the survey.
- National averages describe Sweden as a whole, not any single employer, and can't explain individual decisions.

## Files in this repository

| File | Contents |
|---|---|
| `README.md` | This summary |
| `Casestudy_job_churn.pdf` | Full case study |
| `Changelog_job_churn.pdf` | Changelog: cleaning steps, problems found and fixes |
| `01_clean_churn.sql` | Cleaning query |
| `02_churn_by_year.sql` | Analysis query |
| `churn_by_year_gap.csv` | Final dataset used in Tableau |

## Author

**Dionetta** · [LinkedIn](https://www.linkedin.com/in/dionettapiazzo/)
