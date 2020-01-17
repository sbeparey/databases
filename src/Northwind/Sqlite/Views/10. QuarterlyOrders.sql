DROP VIEW IF EXISTS quarterly_orders;
CREATE VIEW quarterly_orders AS
SELECT DISTINCT customers.customer_id, customers.company_name, customers.city, customers.country
FROM customers LEFT JOIN orders ON customers.customer_id = orders.customer_id
WHERE orders.order_date BETWEEN '19970101' And '19971231'
UNION 
SELECT DISTINCT customers.customer_id, customers.company_name, customers.city, customers.country
FROM orders LEFT JOIN customers ON customers.customer_id = orders.customer_id
WHERE orders.order_date BETWEEN '19970101' And '19971231'
ORDER BY customers.customer_id