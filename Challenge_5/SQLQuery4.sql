SELECT TOP 200
    Users.DisplayName
FROM 
    Users
WHERE 
    Users.Id IN (
        SELECT 
            Comments.UserId
        FROM 
            Comments
        GROUP BY 
            Comments.UserId
        HAVING 
            COUNT(Comments.Id) > 100
    );