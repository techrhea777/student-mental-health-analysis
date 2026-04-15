International Student Mental Health Analysis (SQL - BIGQUERY)
 Problem

Understanding how duration of stay impacts the mental health of international students is critical for improving student support systems.

Approach

Analyzed a dataset of 50 student records using SQL in Google BigQuery, focusing exclusively on international students to eliminate population bias.

Key steps:

Filtered dataset to isolate international students
Segmented students by length of stay
Computed aggregate mental health metrics per segment


Core Query
SELECT
  stay,
  COUNT(*) AS count_students,
  ROUND(AVG(todep), 2) AS avg_depression,
  ROUND(AVG(tosc), 2) AS avg_social,
  ROUND(AVG(toas), 2) AS avg_stress
FROM `big-query-tutorial-488409.Students.Students`
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay;


What This Does
Segmentation → Groups users by behavioral cohort (length of stay)
Aggregation → Computes key mental health indicators:
Depression (todep)
Social connectedness (tosc)
Stress (toas)
Normalization → Rounds outputs for consistent reporting
Ordering → Produces interpretable, time-based trends


Why This Matters

This analysis surfaces cohort-based trends, enabling:

Identification of adaptation patterns over time
Detection of high-risk groups (e.g., early-stage students)
Data-driven recommendations for student support interventions


Key Insight 

Early-stage international students tend to show higher stress and lower social connectedness, suggesting onboarding and integration programs are critical in the first year.

Tech Stack
SQL (BigQuery)
Structured dataset (CSV → warehouse table)


Takeaway

Designed a cohort-based analytical query to extract actionable insights from raw student data, demonstrating:

Strong SQL fundamentals
Analytical thinking
Ability to translate data into business-relevant insights
Author name - Rhea Mendonca
