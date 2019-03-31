SELECT name, CONVERT(char(10), DATEADD(M, DATEDIFF(M, 0, date), 0), 126)  AS firstD, EOMONTH(date) lastD
From battles
