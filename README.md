Mental Health Trends Dashboard

Project Overview

This project explores how mental health indicators vary between international and domestic students, with a focus on how length of stay impacts their well-being.
The analysis is visualized through an interactive Power BI dashboard, making it easy to identify patterns and compare trends across student groups.

 Objective

The goal of this project is to:

- Compare mental health metrics between international and domestic students**
- Understand how length of stay influences:
  - Depression levels  
  - Social connectedness  
  - Acculturative stress  
- Present findings in a clear and visual format for decision-making

Dashboard Overview

The dashboard includes:

- Depression Trends → Shows how depression scores change over time  
- Social Connectedness Trends → Tracks students’ sense of belonging  
- Stress Trends → Highlights changes in acculturative stress  
- Comparison Chart → Direct comparison between international and domestic students  
- Insights Panel → Summary of key findings  

Key Insights

- International students experience slightly higher stress levels
- Depression levels are similar across groups but vary over time
- Social connectedness remains relatively consistent
- Length of stay has a stronger impact on mental health than student type

Interpretation

The analysis suggests that adjusting to a new environment affects students over time.  
While both groups show similar trends in some areas, international students face higher stress, likely due to cultural and environmental changes.

 Tools Used

- Power BI → Data visualization and dashboard creation  
- Data Source→ Aggregated student mental health dataset  
Dataset Summary

The dataset includes:

- `stay` → Length of stay (years)  
- `student_type` → International or Domestic  
- `avg_depression` → Average depression score  
- `avg_socialconnectedness` → Social connectedness score  
- `avg_stress` → Stress level score  

 Business Value

This dashboard can help:

- Universities identify at-risk student groups
- Improve mental health support strategies
- Understand how student experience evolves over time


If you found this project interesting, feel free to connect or share feedback!

Student Mental Health Analysis (BigQuery + Power BI)

Project Overview

This project analyzes mental health trends among students, focusing on differences between international and domestic students and how length of stay impacts well-being.

The analysis is performed using Google BigQuery (SQL) and visualized through an interactive Power BI dashboard.

Objectives

Analyze how length of stay affects mental health
Compare international vs domestic students
Identify trends in:
Depression (PHQ-9)
Social connectedness (SCS)
Acculturative stress (ASISS)
SQL Analysis (BigQuery)

International Students Trend Analysis
This query analyzes mental health trends for international students based on their length of stay.

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

 2. International vs Domestic Comparison

This query compares mental health metrics between international and domestic students.

SELECT
  stay,
  CASE 
    WHEN inter_dom = 'Inter' THEN 'International'
    WHEN inter_dom = 'Dom' THEN 'Domestic'
  END AS student_type,
  ROUND(AVG(todep), 2) AS avg_depression,
  ROUND(AVG(tosc), 2) AS avg_social,
  ROUND(AVG(toas), 2) AS avg_stress
FROM `big-query-tutorial-488409.Students.Students`
WHERE stay IS NOT NULL
GROUP BY stay, student_type
ORDER BY stay;

Power BI Dashboard

Key Insights
International students show higher stress levels
Depression trends vary across length of stay
Social connectedness remains relatively stable
Length of stay has a stronger impact than student type

Tools Used
Google BigQuery (SQL) → Data extraction & aggregation
Power BI → Dashboard & visualization
Dataset → Student mental health data

Business Value

This project demonstrates:

Ability to work with cloud data (BigQuery)
Strong SQL aggregation skills
Data storytelling through Power BI dashboards
Ability to generate actionable insights

Author name - Rhea Mendonca
