WITH dates AS (SELECT DISTINCT date from income_o),
intervals AS (SELECT date dt1, LEAD(date) OVER (ORDER BY date) AS dt2 
FROM dates)
SELECT COALESCE(sum(out), 0), dt1, dt2 
FROM intervals LEFT JOIN Outcome_o ON Outcome_o.date > dt1 
AND Outcome_o.date <= dt2 
GROUP BY dt1, dt2
HAVING dt2 is not null
