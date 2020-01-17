DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id         CHAR(5)         NOT NULL,
    company_name        VARCHAR(40)     NOT NULL,
    contact_name        VARCHAR(30)     NULL,
    contact_title       VARCHAR(30)     NULL,
    address             VARCHAR(60)     NULL,
    city                VARCHAR(15)     NULL,
    region              VARCHAR(15)     NULL,
    postal_code         VARCHAR(10)     NULL,
    country             VARCHAR(15)     NULL,
    phone               VARCHAR(24)     NULL,
    fax                 VARCHAR(24)     NULL,
    CONSTRAINT pk_customers PRIMARY KEY (customer_id)
);

CREATE UNIQUE INDEX ix_customers__customer_id ON customers (customer_id);

CREATE INDEX ix_customers__city ON customers (city);

CREATE INDEX ix_customers__customer_name ON customers (company_name);

CREATE INDEX ix_customers__postal_code ON customers (postal_code);

CREATE INDEX ix_customers__region ON customers (region);
