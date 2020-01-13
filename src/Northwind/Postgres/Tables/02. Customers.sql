DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id         NCHAR(5)     NOT NULL,
    customer_name       NVARCHAR(40) NOT NULL,
    contact_name        NVARCHAR(30) NULL,
    contact_title       NVARCHAR(30) NULL,
    address             NVARCHAR(60) NULL,
    city                NVARCHAR(15) NULL,
    region              NVARCHAR(15) NULL,
    postal_code         NVARCHAR(10) NULL,
    country             NVARCHAR(15) NULL,
    phone               NVARCHAR(24) NULL,
    fax                 NVARCHAR(24) NULL,
    CONSTRAINT pk_customers PRIMARY KEY CLUSTERED (customer_id ASC)
);

CREATE NONCLUSTERED INDEX ix_customers__city
    ON customers (city ASC);

CREATE NONCLUSTERED INDEX ix_customers__customer_name
    ON customers (customer_name ASC);

CREATE NONCLUSTERED INDEX ix_customers__postal_code
    ON customers (postal_code ASC);

CREATE NONCLUSTERED INDEX ix_customers__region
    ON customers (region ASC);