SELECT TOP 10 Title, Score
FROM Posts
WHERE Title IS NOT NULL
ORDER BY Score DESC;