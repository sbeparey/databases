DROP VIEW IF EXISTS sales_by_category;
CREATE VIEW sales_by_category AS
SELECT categories.category_id, categories.category_name, products.product_name, 
	SUM (order_details_extended.extended_price) AS product_sales
FROM categories INNER JOIN 
		(products INNER JOIN 
			(orders INNER JOIN order_details_extended ON orders.order_id = order_details_extended.order_id) 
		ON products.product_id = order_details_extended.product_id) 
	ON categories.category_id = products.category_id
WHERE orders.order_date BETWEEN '19970101' AND '19971231'
GROUP BY categories.category_id, categories.category_name, products.product_name;
