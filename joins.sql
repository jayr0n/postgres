SELECT 
	products.product_name, 
	products.quantity_per_unit, 
	products.unit_price,
	categories.*
FROM products
INNER JOIN categories ON 
categories.category_id = products.category_id;