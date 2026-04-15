# Student Mental Health Analysis  
### SQL + Python + Power BI End-to-End Analytics Project

## Overview

This project analyzes student mental health using SQL, Python, and Power BI.  
The goal was to understand how **length of stay** relates to three mental health indicators:

- **Depression**
- **Social connectedness**
- **Stress**

The project compares **domestic** and **international** students, then visualizes the results in a Power BI dashboard to make the findings easy to interpret.

This is an end-to-end analytics project that demonstrates:
- data querying with SQL
- data preparation and visualization with Python
- dashboard design and storytelling with Power BI

---

## Business Question

How does **length of stay** affect student mental health, and do those patterns differ between **domestic** and **international** students?

This question matters because it can help universities identify:
- whether students face more challenges early in their stay
- whether international students experience different stress patterns
- where support programs may be most useful

---

## Dataset

The analysis is based on a student mental health dataset stored as a CSV file and queried in BigQuery. Analyzed a dataset of 50 student records using SQL in Google BigQuery, focusing exclusively on international students to eliminate population bias.

### Key fields used
- `stay` → length of stay
- `inter_dom` → student category (`Inter` or domestic equivalent)
- `todep` → depression score
- `tosc` → social connectedness score
- `toas` → stress score

A processed version of the data was then used in Python and Power BI with columns such as:
- `student_type`
- `avg_depression`
- `avg_social`
- `avg_stress`

---

## Project Workflow

The project follows a simple analytics pipeline:

1. **SQL** was used to query and aggregate the raw student data
2. **Python** was used to validate the processed dataset and generate charts
3. **Power BI** was used to create an interactive dashboard for final presentation

---

## SQL Analysis

The SQL query summarizes mental health scores for international students by length of stay.

### SQL Query

```sql
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

Author name - Rhea Mendonca
