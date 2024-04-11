--IMPARES

--P1
SELECT * FROM table1 ORDER BY years ASC;
SELECT * FROM table2 WHERE released_year IS NOT NULL ORDER BY released_year ASC;


--P3
SELECT table1.title AS Nombres
FROM table1

--P5
SELECT ROUND(AVG(table1.imdb), 2) AS PROM_IMDb
FROM table1
WHERE table1.original_channel = 'Netflix';

--P7
SELECT TOP 10 table1.title
FROM table1
ORDER BY table1.imdb DESC;

--P11
SELECT TOP 1 *
FROM table1
WHERE episodes = (SELECT MAX(episodes) FROM table1);

--P13
USE AnimatedTvSeries

SELECT STRING_AGG(genre, ', ') AS Generos
FROM (
    SELECT DISTINCT genre
    FROM (
        SELECT TRIM(value) AS genre
        FROM table2
        CROSS APPLY STRING_SPLIT(genre, '|')
        WHERE genre LIKE '%|%'
        UNION ALL
        SELECT genre
        FROM table2
        WHERE genre NOT LIKE '%|%'
    ) AS UniqueGenres
) AS DistinctGenres;

--P15
SELECT *
FROM table2
WHERE Title LIKE 'C%';

--P17
SELECT t2.Title
FROM table2 t2
INNER JOIN table1 t1 ON t2.Title = t1.Title;