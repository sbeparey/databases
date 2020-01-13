CREATE VIEW invoices AS
SELECT orders.ship_name, orders.ship_address, orders.ship_city, orders.ship_region, orders.ship_postal_code, 
	orders.ship_country, orders.customer_id, customers.customer_name AS CustomerName, customers.address, customers.city, 
	customers.region, customers.postal_code, customers.country, (first_name + ' ' + last_name) AS sales_person, 
	orders.order_id, orders.order_date, orders.required_date, orders.shipped_date, shippers.customer_name AS shipper_name, 
	order_details.product_id, products.product_name, order_details.unit_price, order_details.quantity, 
	order_details.discount, (CONVERT (MONEY,(order_details.unit_price*quantity*(1-discount)/100))*100) AS extended_price, orders.freight
FROM shippers INNER JOIN 
		(products INNER JOIN 
			((employees INNER JOIN 
				(customers INNER JOIN orders ON customers.customer_id = orders.customer_id) 
					ON employees.employee_id = orders.employee_id) 
				INNER JOIN order_details ON orders.order_id = order_details.order_id) 
			ON products.product_id = order_details.product_id) 
		ON shippers.shipper_id = orders.ship_via