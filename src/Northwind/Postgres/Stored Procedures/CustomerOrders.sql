CREATE PROCEDURE customer_orders
@customer_id NCHAR (5)
AS
SELECT order_id, 
	   order_date,
	   required_date,
	   shipped_date
FROM orders
WHERE customer_id = @customer_id
ORDER BY order_id
