---CTE
with duplicateCTE AS(SELECT *, ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID) AS ROWNUMBER FROM Employee)DELETE FROM duplicateCTE WHERE ROWNUMBER >1
