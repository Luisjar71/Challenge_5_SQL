SELECT TOP 200
    Users.DisplayName, 
    AVG(Posts.Score) AS Promedio
FROM 
    Posts 
JOIN 
    Users 
ON 
    Posts.OwnerUserId = Users.Id
GROUP BY 
    Users.DisplayName
ORDER BY 
    Promedio DESC;