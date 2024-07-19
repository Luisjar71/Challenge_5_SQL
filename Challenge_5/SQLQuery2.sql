SELECT TOP 200 Title, DisplayName
FROM Posts JOIN Users
ON Posts.OwnerUserId = Users.Id
WHERE Title IS NOT NULL;