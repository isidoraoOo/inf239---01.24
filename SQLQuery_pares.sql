--2
SELECT * FROM table1 WHERE episodes >= 100 ORDER BY episodes DESC;

--4
SELECT years, COUNT(*) AS cantidad
FROM table1
GROUP BY years
HAVING COUNT(*) > 5 ORDER BY cantidad DESC;

--6
SELECT * from table1 where original_channel LIKE 'cartoon network%';

--8
SELECT * FROM table1 where google_users > '30' order by google_users desc;

--10
DELETE FROM table1 WHERE imdb < 3.5;
SELECT * FROM table1;

--12 promedio de las peliculas cuya duración este disponible
SELECT ROUND(AVG(CONVERT(float, reemplazo3)), 2) as Promedio FROM (
		SELECT REPLACE(reemplazo2, ' ', '') as reemplazo3 FROM (
		SELECT REPLACE(reemplazo, 'h', '.') as reemplazo2 FROM (
		SELECT REPLACE(run_time, 'm', '') as reemplazo FROM table2
		WHERE run_time IS NOT NULL
		) AS t1
	) AS t2
) AS t3;

--14
SELECT * FROM table3 WHERE episodes IS NOT NULL AND run_time IS NOT NULL;

--16 -asi la entendi..-
SELECT *
FROM table2
WHERE released_year IS NOT NULL
ORDER BY released_year DESC;