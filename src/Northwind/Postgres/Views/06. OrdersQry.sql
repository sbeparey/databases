CREATE VIEW orders_qry AS
SELECT orders.order_id, orders.customer_id, orders.employee_id, orders.order_date, orders.required_date, 
	orders.shipped_date, orders.ship_via, orders.freight, orders.ship_name, orders.ship_address, orders.ship_city, 
	orders.ship_region, orders.ship_postal_code, orders.ship_country, 
	customers.customer_name, customers.address, customers.city, customers.region, customers.postal_code, customers.country
FROM customers 
	INNER JOIN orders ON customers.customer_id = orders.customer_id