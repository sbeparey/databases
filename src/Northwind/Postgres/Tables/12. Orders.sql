DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id                INT              IDENTITY (1, 1) NOT NULL,
    customer_id             NCHAR(5)         NULL,
    employee_id             INT              NULL,
    order_date              DATETIME         NULL,
    required_date           DATETIME         NULL,
    shipped_date            DATETIME         NULL,
    ship_via                INT              NULL,
    freight                 MONEY            CONSTRAINT df_orders__freight DEFAULT (0) NULL,
    ship_name               NVARCHAR(40)     NULL,
    ship_address            NVARCHAR(60)     NULL,
    ship_city               NVARCHAR(15)     NULL,
    ship_region             NVARCHAR(15)     NULL,
    ship_postal_code        NVARCHAR(10)     NULL,
    ship_country            NVARCHAR(15)     NULL,
    CONSTRAINT pk_orders PRIMARY KEY CLUSTERED (order_id ASC)
);

CREATE NONCLUSTERED INDEX ix_orders__customer_id
    ON orders (customer_id ASC);

CREATE NONCLUSTERED INDEX ix_orders__employee_id
    ON orders (employee_id ASC);

CREATE NONCLUSTERED INDEX ix_orders__order_date
    ON orders (order_date ASC);

CREATE NONCLUSTERED INDEX ix_orders__shipped_date
    ON orders (shipped_date ASC);

CREATE NONCLUSTERED INDEX ix_orders__shippers_via
    ON orders (ship_via ASC);

CREATE NONCLUSTERED INDEX ix_orders__ship_postal_code
    ON orders (ship_postal_code ASC);