DROP TABLE IF EXISTS customer_customer_demo;
CREATE TABLE customer_customer_demo (
    customer_id             CHAR(5)         NOT NULL,
    customer_type_id        CHAR(10)        NOT NULL,
    CONSTRAINT pk_customer_customer_demo PRIMARY KEY (customer_id, customer_type_id),
    CONSTRAINT fk_customer_customer_demo__customers FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
    CONSTRAINT fk_customer_customer_demo__customer_demographics FOREIGN KEY (customer_type_id) REFERENCES customer_demographics (customer_type_id)
);

DROP INDEX IF EXISTS ix_customer_customer_demo__customer_id__customer_type_id;
CREATE INDEX ix_customer_customer_demo__customer_id__customer_type_id ON customer_customer_demo (customer_id, customer_type_id);
