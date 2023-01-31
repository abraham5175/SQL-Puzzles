CREATE TABLE lag
(
BusinessEntityID INT
,SalesYear   INT
,CurrentQuota  DECIMAL(20,4)
)
GO
 
INSERT INTO lag
SELECT 275 , 2005 , '367000.00'
UNION ALL
SELECT 275 , 2005 , '556000.00'
UNION ALL
SELECT 275 , 2006 , '502000.00'
UNION ALL
SELECT 275 , 2006 , '550000.00'
UNION ALL
SELECT 275 , 2006 , '1429000.00'
UNION ALL
SELECT 275 , 2006 ,  '1324000.00'


select * from lag


select BusinessEntityID, SalesYear,CurrentQuota, isnull(lag (CurrentQuota,1) over (order by BusinessEntityID),0) as lag_data from lag