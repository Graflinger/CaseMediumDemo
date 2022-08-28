--CASE Statement

SELECT
	customerId,
	SUM(
		CASE 
			WHEN [order] = 'Margherita'
				THEN 1
			ELSE
				0
			END) AS Mergherita,
		SUM(CASE 
			WHEN [order] = 'Prosciutto'
				THEN 1
			ELSE
				0
			END) AS Prosciutto,
		SUM(CASE 
			WHEN [order] = 'Hawaii'
				THEN 1
			ELSE
				0
			END) AS Hawaii,
		SUM(CASE 
			WHEN [order] = 'Salami'
				THEN 1
			ELSE
				0
			END) AS Salami
FROM
	[pizzaPlace].[orders]
GROUP BY 
	customerId


-- Pivot Statement
DECLARE @colnameList varchar(MAX)
SET @colnameList = Null
SELECT  @colnameList =  STRING_AGG([order], ',') 
FROM (SELECT DISTINCT [order]
		FROM [pizzaPlace].[orders]) innerQuery

PRINT @colnameList

DECLARE @SQLQuery NVARCHAR(MAX)
SET @SQLQuery = 'SELECT * FROM
(
SELECT
[order],
[order] as pizza_counter,
customerId
FROM [pizzaPlace].[orders]
) innerSelect
PIVOT (
COUNT (pizza_counter)
FOR [order] IN ('+@colnameList+')
) alias4'

EXEC(@SQLQuery)