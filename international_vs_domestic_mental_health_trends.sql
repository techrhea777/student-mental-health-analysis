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
