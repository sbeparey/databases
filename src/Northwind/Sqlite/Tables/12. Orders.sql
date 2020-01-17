DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id                INTEGER         NOT NULL,
    customer_id             CHAR(5)         NULL,
    employee_id             INTEGER         NULL,
    order_date              DATE            NULL,
    required_date           DATE            NULL,
    shipped_date            DATE            NULL,
    ship_via                INTEGER         NULL,
    freight                 REAL            NULL DEFAULT (0),
    ship_name               VARCHAR(40)     NULL,
    ship_address            VARCHAR(60)     NULL,
    ship_city               VARCHAR(15)     NULL,
    ship_region             VARCHAR(15)     NULL,
    ship_postal_code        VARCHAR(10)     NULL,
    ship_country            VARCHAR(15)     NULL,
    CONSTRAINT pk_orders PRIMARY KEY (order_id),
    CONSTRAINT fk_orders__customers FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
    CONSTRAINT fk_orders__employees FOREIGN KEY (employee_id) REFERENCES employees (employee_id),
    CONSTRAINT fk_orders__shippers FOREIGN KEY (ship_via) REFERENCES shippers (shipper_id)
);

DROP INDEX IF EXISTS ix_orders__order_id;
CREATE UNIQUE INDEX ix_orders__order_id ON orders (order_id);

DROP INDEX IF EXISTS ix_orders__customer_id;
CREATE INDEX ix_orders__customer_id ON orders (customer_id);

DROP INDEX IF EXISTS ix_orders__employee_id;
CREATE INDEX ix_orders__employee_id ON orders (employee_id);

DROP INDEX IF EXISTS ix_orders__order_date;
CREATE INDEX ix_orders__order_date ON orders (order_date);

DROP INDEX IF EXISTS ix_orders__shipped_date;
CREATE INDEX ix_orders__shipped_date ON orders (shipped_date);

DROP INDEX IF EXISTS ix_orders__shippers_via;
CREATE INDEX ix_orders__shippers_via ON orders (ship_via);

DROP INDEX IF EXISTS ix_orders__ship_postal_code;
CREATE INDEX ix_orders__ship_postal_code ON orders (ship_postal_code);
