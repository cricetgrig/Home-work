with Total AS (SELECT row_number() OVER(order by date, name) rn, COUNT(*) OVER() num, date, name
FROM Battles)
SELECT A.rn, A.name, A.date,  B.rn, B.name, B.date
FROM Total A LEFT JOIN Total B ON 
A.rn = B.rn - ((B.num-1)/2 + 1)
WHERE 
A.rn <= (A.num-1)/2 + 1
