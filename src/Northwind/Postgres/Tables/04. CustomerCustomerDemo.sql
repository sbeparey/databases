DROP TABLE IF EXISTS customer_customer_demo;
CREATE TABLE customer_customer_demo (
    customer_id         NCHAR(5)  NOT NULL,
    customer_type_id    NCHAR(10) NOT NULL,
    CONSTRAINT pk_customer_customer_demo PRIMARY KEY NONCLUSTERED (customer_id ASC, customer_type_id ASC)
);
