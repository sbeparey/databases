ALTER TABLE customer_customer_demo
ADD CONSTRAINT fk_customer_customer_demo__customer_demographics FOREIGN KEY (customer_type_id) REFERENCES customer_demographics (customer_type_id);

ALTER TABLE customer_customer_demo
ADD CONSTRAINT fk_customer_customer_demo__customers FOREIGN KEY (customer_id) REFERENCES customers (customer_id);

ALTER TABLE employees
ADD CONSTRAINT fk_employees__employees FOREIGN KEY (reports_to) REFERENCES employees (employee_id);

ALTER TABLE employee_territories
ADD CONSTRAINT fk_employee_territories__employees FOREIGN KEY (employee_id) REFERENCES employees (employee_id);

ALTER TABLE employee_territories
ADD CONSTRAINT fk_employee_territories__territories FOREIGN KEY (territory_id) REFERENCES territories (territory_id);

ALTER TABLE order_details
ADD CONSTRAINT fk_order_details__orders FOREIGN KEY (order_id) REFERENCES orders (order_id);

ALTER TABLE order_details
ADD CONSTRAINT fk_order_details__products FOREIGN KEY (product_id) REFERENCES products (product_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders__customers FOREIGN KEY (customer_id) REFERENCES customers (customer_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders__employees FOREIGN KEY (employee_id) REFERENCES employees (employee_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders__shippers FOREIGN KEY (ship_via) REFERENCES shippers (shipper_id);

ALTER TABLE products
ADD CONSTRAINT fk_products__categories FOREIGN KEY (category_id) REFERENCES categories (category_id);

ALTER TABLE products
ADD CONSTRAINT fk_products__suppliers FOREIGN KEY (supplier_id) REFERENCES suppliers (supplier_id);

ALTER TABLE territories
ADD CONSTRAINT fk_territories__region FOREIGN KEY (region_id) REFERENCES region (region_id);
