SELECT * 
FROM order_details
WHERE quantity <
	(
	-- Subquery
	SELECT AVG(quantity) 
	FROM order_details
	)
-- CTE -> Common Table Expression

WITH average AS (
	SELECT AVG(quantity) as average
	FROM order_details	
)

SELECT * 
FROM order_details, average
WHERE quantity > average.average