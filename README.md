# Supporting Job Stability for Foreign-Born Workers in Sweden

**Google Data Analytics Certificate, capstone project (people analytics)**

Foreign-born employees in Sweden are more often in the first year of a job than Swedish-born employees. In every year from 1997 to 2025, a larger share of foreign-born employees had started their current job within the past 12 months. In 2025 the shares were 19.4% and 14.1%.

This measure counts anyone who started a job in the past year, whether they changed jobs, entered the job market or recently moved to Sweden. It shows how established people are in the job market, not why anyone left a job. For employers, it points to the first year of a job as the time when support matters most.

- **Interactive charts:** [Tableau Public workbook](https://public.tableau.com/views/JobChurnAmongForeign-BornWorkersinSwedenline/Shareofemployees?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
- **Full case study:** [case_study.pdf](case_study.pdf)

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

![Share of employees in the first year of their job, Swedish-born vs. foreign-born](<div class='tableauPlaceholder' id='viz1790767661751' style='position: relative'><noscript><a href='#'><img alt='Share of employees new in their job, Sweden, 1997–2025 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Jo&#47;JobChurnAmongForeign-BornWorkersinSwedenline&#47;Shareofemployees&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='JobChurnAmongForeign-BornWorkersinSwedenline&#47;Shareofemployees' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Jo&#47;JobChurnAmongForeign-BornWorkersinSwedenline&#47;Shareofemployees&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1790767661751');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>)

1. **The difference is persistent.** A larger share of foreign-born employees were in the first year of their job in all 29 years, by 3.9 to 9.4 percentage points.
2. **Both groups move with the economy.** Both shares fell in 2009, in 2020, and from 2022 to 2025. When fewer jobs are available, people stay put and employers hire less.
3. **The gap widened, then narrowed.** It rose in the late 2010s, reaching 8–9 points in 2018–2020, and narrowed to about 5 points by 2023–2025. One possible explanation is that many people who arrived in 2015–2016 were starting their first jobs in Sweden around 2017–2019.

![Difference between foreign-born and Swedish-born, by year](<div class='tableauPlaceholder' id='viz1790767640067' style='position: relative'><noscript><a href='#'><img alt='Foreign-born workers are more often new in their job, every year since 1997 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Jo&#47;JobChurnAmongForeign-BornWorkersinSweden&#47;Gap&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='JobChurnAmongForeign-BornWorkersinSweden&#47;Gap' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Jo&#47;JobChurnAmongForeign-BornWorkersinSweden&#47;Gap&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1790767640067');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>)

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
| `case_study.pdf` | Full case study |
| `01_clean_churn.sql` | Cleaning query |
| `02_churn_by_year.sql` | Analysis query |
| `churn_by_year.csv` | Final dataset used in Tableau |
| `chart_churn_trend.png` | Trend chart |
| `chart_gap.png` | Difference chart |

## Author

**Dionetta* · [LinkedIn](https://www.linkedin.com/in/dionettapiazzo/)
