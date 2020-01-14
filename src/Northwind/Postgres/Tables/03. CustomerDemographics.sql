DROP TABLE IF EXISTS customer_demographics;
CREATE TABLE customer_demographics (
    customer_type_id         CHAR(10)   NOT NULL,
    customer_description     TEXT       NULL,
    CONSTRAINT pk_customer_demographics PRIMARY KEY (customer_type_id)
);

DROP INDEX IF EXISTS ix_customer_demographics__customer_type_id;
CREATE INDEX ix_customer_demographics__customer_type_id ON customer_demographics (customer_type_id);
CLUSTER customer_demographics USING ix_customer_demographics__customer_type_id;
