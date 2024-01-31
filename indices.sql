SELECT * 
FROM products
WHERE category_id > 6;


CREATE INDEX idx_category ON products(category_id)