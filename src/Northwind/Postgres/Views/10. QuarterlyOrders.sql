CREATE VIEW quarterly_orders AS
SELECT DISTINCT customers.customer_id, customers.customer_name, customers.city, customers.country
FROM customers RIGHT JOIN orders ON customers.customer_id = orders.customer_id
WHERE orders.order_date BETWEEN '19970101' And '19971231'