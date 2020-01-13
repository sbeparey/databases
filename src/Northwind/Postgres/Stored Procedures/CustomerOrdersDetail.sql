CREATE PROCEDURE customer_orders_detail 
@order_id INT
AS
SELECT product_name,
	unit_price = ROUND(Od.unit_price, 2),
	quantity,
	discount = CONVERT(INT, discount * 100), 
	extended_price = ROUND(CONVERT(MONEY, quantity * (1 - discount) * Od.unit_price), 2)
FROM products P, order_details Od
WHERE Od.product_id = P.product_id and Od.order_id = @order_id