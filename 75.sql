SELECT name, launched, CASE WHEN launched IS NULL then  (SELECT TOP 1 name from Battles ORDER BY date desc) ELSE (SELECT TOP 1 name from Battles b WHERE datepart(yy, b.date) >= s.launched ORDER by date ASC )  END  battle
FROM Ships s
SELECT name, launched, CASE WHEN launched IS NULL then  (SELECT TOP 1 name from Battles ORDER BY date desc) ELSE (SELECT TOP 1 name from Battles b WHERE datepart(yy, b.date) >= s.launched ORDER by date ASC )  END  battle
FROM Ships s
