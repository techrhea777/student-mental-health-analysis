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