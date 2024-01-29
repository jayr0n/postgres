-- aggregation function
-- sum
-- median
-- max
-- min

SELECT product_Id, SUM(quantity) as total_sold 
FROM order_details 
GROUP BY product_Id
ORDER BY total_sold DESC;

SELECT * FROM order_details;


SELECT * FROM ORDERS;

SELECT DATE_TRUNC('month', order_date) as order_month, count(order_id)
FROM orders
GROUP BY order_month
ORDER BY order_month;

SELECT * FROM order_details;

SELECT product_id, SUM(quantity) as total_unit_sold
FROM order_details
GROUP BY product_id
HAVING SUM(quantity) <= 100;

