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