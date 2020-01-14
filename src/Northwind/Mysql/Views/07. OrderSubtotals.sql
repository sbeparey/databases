DROP VIEW IF EXISTS order_subtotals;
CREATE VIEW order_subtotals AS
SELECT order_details.order_id, SUM((order_details.unit_price * quantity * (1 - discount) / 100) * 100) AS subtotal
FROM order_details
GROUP BY order_details.order_id;
