﻿DROP VIEW IF EXISTS customer_and_suppliers_by_city;
CREATE VIEW customer_and_suppliers_by_city AS
SELECT city, company_name, contact_name, 'customers' AS relationship 
FROM customers
UNION SELECT city, company_name, contact_name, 'suppliers'
FROM suppliers;
