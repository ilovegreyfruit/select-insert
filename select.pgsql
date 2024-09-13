SELECT name, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

SELECT name, duration
FROM track
WHERE duration >= 210;

SELECT compilation_name
FROM compilation
WHERE realese_date BETWEEN '2018-01-01' AND '2020-12-31';

SELECT MAX(perfomer_name) from perfomers
WHERE strpos(perfomer_name, ' ') = 0;

SELECT name
FROM track
WHERE name like '%My%' or name like '%мой%';

SELECT g.genres_names, COUNT(p.id) AS performer_count
FROM Genre g
LEFT JOIN PerfomersGenre pg ON g.id = pg.genre_id
LEFT JOIN Perfomers p ON pg.perfomer_id = p.id
GROUP BY g.genres_names
ORDER BY performer_count DESC;

SELECT a.name AS album_name, a.realese_date, t.name AS track_name
FROM Albums a
JOIN Track t ON a.id = t.album_id
WHERE a.realese_date BETWEEN '2019-01-01' AND '2020-12-31';

SELECT a.name AS album_name, AVG(t.duration) AS average_duration
FROM Track t
JOIN Albums a ON t.album_id = a.id
GROUP BY a.name;

SELECT p.perfomer_name
FROM Perfomers p
WHERE p.id NOT IN (
    SELECT pa.perfomer_id
    FROM PerfomersAlbum pa
    JOIN Albums a ON pa.album_id = a.id
    WHERE a.realese_date BETWEEN '2020-01-01' AND '2020-12-31'
);

SELECT DISTINCT c.compilation_name
FROM Compilation c
JOIN CompilationTrack ct ON c.id = ct.compilation_id
JOIN Track t ON ct.track_id = t.id
JOIN Albums a ON t.album_id = a.id
JOIN PerfomersAlbum pa ON a.id = pa.album_id
JOIN Perfomers p ON pa.perfomer_id = p.id
WHERE p.perfomer_name = 'Linkin Park';