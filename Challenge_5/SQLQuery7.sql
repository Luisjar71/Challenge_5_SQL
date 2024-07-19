SELECT TOP 200
    Users.DisplayName,
    COALESCE(p.TotalPosts, 0) AS TotalPosts,
    COALESCE(c.TotalComments, 0) AS TotalComments,
    COALESCE(b.TotalBadges, 0) AS TotalBadges
FROM 
    Users 
LEFT JOIN 
    (SELECT OwnerUserId, COUNT(*) AS TotalPosts 
    FROM Posts 
    GROUP BY OwnerUserId) p
    ON Users.Id = p.OwnerUserId
LEFT JOIN 
    (SELECT UserId, COUNT(*) AS TotalComments 
    FROM Comments 
    GROUP BY UserId) c
    ON Users.Id = c.UserId
LEFT JOIN 
    (SELECT UserId, COUNT(*) AS TotalBadges 
    FROM Badges 
    GROUP BY UserId) b
    ON Users.Id = b.UserId;