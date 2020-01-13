CREATE VIEW product_sales_for_1997 AS
SELECT categories.category_name, products.product_name, 
	SUM (CONVERT (money,(order_details.unit_price*quantity*(1-discount)/100))*100) AS product_sales
FROM (categories INNER JOIN products ON categories.category_id = products.category_id) 
	INNER JOIN (orders 
		INNER JOIN order_details ON orders.order_id = order_details.order_id) 
	ON products.product_id = order_details.product_id
WHERE (((orders.shipped_date) BETWEEN '19970101' AND '19971231'))
GROUP BY categories.category_name, products.product_name