DROP TABLE IF EXISTS customer_demographics;
CREATE TABLE customer_demographics (
    customer_type_id         NCHAR(10)   NOT NULL,
    customer_description     NTEXT       NULL,
    CONSTRAINT pk_customer_demographics PRIMARY KEY NONCLUSTERED (customer_type_id ASC)
);