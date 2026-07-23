# HR EMPLOYEE ATTRITION ANALYSIS 
So why do people actually quit? That's the whole question behind this one. I took IBM's HR Analytics dataset (1,470 employees) and pulled it apart in Excel, Power BI, SQL, and Python to see what the data actually says.

## The data

IBM HR Analytics Employee Attrition & Performance dataset. 1,470 employees, over 35 columns — age, department, income, satisfaction scores, whether they left or not, all of it.

It came in pretty clean, no duplicates or missing values, so most of the cleaning work was really about making the data readable. A lot of the columns were just numbers standing in for categories (like JobSatisfaction = 3 instead of "High"), so I mapped those to actual labels. Also bucketed things like age, tenure, and commute distance into ranges instead of leaving them as raw numbers — way easier to spot a pattern in "18-25 vs 56+" than in a hundred individual ages.

## Key Metrics
| Metric | Value|
|---|---:|
| **Total Employees** | **1,470** |
| **Average Monthly Income** | **$6,503** |
| **Attrition Rate** | **16.1%** |

## Insights — What the data actually says?

- **Overtime is the biggest tell.** People who work overtime leave way more than people who don't. And get this — almost 3 out of 4 employees in this dataset are working overtime. That's not a small group, that's most of the company.
- **Year one and two are the danger zone.** New hires leave the most. Once someone's past the two-year mark, they're way more likely to stick around.
- **Younger employees (18-25) bounce the most.** Attrition just keeps dropping the older the age bracket gets.
- **Sales has it worse than every other department.** HR's not far behind. R&D is the most stable.
- **Entry-level roles bleed the most people** — makes sense given the tenure pattern, people are leaving before they even get promoted once.

## Recommendations — So what should the company actually do about it?

- **Look hard at overtime policy.** If 3 out of 4 people are working overtime and it's tied to the biggest attrition spike, that's not a coincidence — it's burnout. Worth checking if workload's actually manageable or if headcount's just too thin.
- **Fix onboarding and the first two years, not just hiring.** Since people leave earliest, the problem isn't attracting talent — it's keeping them once they're in. Better mentorship, clearer growth paths, and early check-ins could catch people before they check out.
- **Sales needs its own retention plan.** Whatever's driving people out of Sales specifically (targets, pay structure, manager style) is worth digging into separately — it's not a company-wide issue, it's a Sales-specific one.
- **Entry-level roles need a faster path to "not entry-level."** If people are leaving before their first promotion, the ladder might be too slow or too unclear.
- **Younger employees might need a different retention approach** than the one that works for older, more settled staff — flexibility, career growth speed, and pay expectations tend to differ a lot by age bracket.

## What I built it in, and why four times

**Excel** — cleaned the data, labeled everything, built the first pivot dashboard.
**Power BI** — the real dashboard. Two pages, DAX measures doing the heavy lifting and slicers so everything updates live when you filter.
**SQL** — same questions, rewritten as queries. Had to use CASE WHEN + SUM to fake a "percentage" since SQL doesn't have Excel's built-in % of total.
**Python** — same analysis again in a notebook, pandas doing the groupby work, charts to match.

Honestly, doing it four times wasn't about needing four dashboards, it was about proving I actually understand how to calculate an attrition rate, not just that I know one tool's shortcut for it. A pivot table, a DAX measure, a SQL CASE WHEN, and a pandas groupby are four completely different ways of arriving at the same number, and being able to do all four is the actual point.

## Files

- `HR-Employee-Attrition-cleaned.xlsx` — cleaned data + Excel dashboard
- `HR-Employee-Attrition-Analysis.pbix` — Power BI dashboard
- `hr-attrition-queries.sql` — all the SQL, commented
- `hr-attrition-analysis.ipynb` — Python notebook
