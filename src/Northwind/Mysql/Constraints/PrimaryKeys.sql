﻿ALTER TABLE categories
ALTER COLUMN category_id 
SET GENERATED ALWAYS;

ALTER TABLE employees
ALTER COLUMN employee_id
SET GENERATED ALWAYS;

ALTER TABLE shippers
ALTER COLUMN shipper_id
SET GENERATED ALWAYS;

ALTER TABLE suppliers
ALTER COLUMN supplier_id
SET GENERATED ALWAYS;

ALTER TABLE products
ALTER COLUMN product_id
SET GENERATED ALWAYS;

ALTER TABLE orders
ALTER COLUMN order_id
SET GENERATED ALWAYS;
