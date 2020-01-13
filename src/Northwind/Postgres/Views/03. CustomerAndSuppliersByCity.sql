CREATE VIEW customer_and_suppliers_by_city AS
SELECT city, customer_name, contact_name, 'customers' AS relationship 
FROM customers
UNION SELECT city, customer_name, contact_name, 'suppliers'
FROM suppliers