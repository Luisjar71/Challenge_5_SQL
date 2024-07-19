SELECT TOP 200 DisplayName, Location, Reputation
FROM Users
WHERE Location IS NOT NULL
ORDER BY Reputation DESC;
