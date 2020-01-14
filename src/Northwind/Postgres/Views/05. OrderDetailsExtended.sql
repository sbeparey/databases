DROP VIEW IF EXISTS order_details_extended;
CREATE VIEW order_details_extended AS
SELECT order_details.order_id, order_details.product_id, products.product_name, 
	order_details.unit_price, order_details.quantity, order_details.discount, 
	(order_details.unit_price * quantity * (1 - discount) / 100) * 100 AS extended_price
FROM products INNER JOIN order_details ON products.product_id = order_details.product_id;
