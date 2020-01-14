DROP TABLE IF EXISTS CustomerCustomerDemo;
CREATE TABLE CustomerCustomerDemo (
    CustomerId          NCHAR(5)    NOT NULL,
    CustomerTypeId      NCHAR(10)   NOT NULL,
    CONSTRAINT PK_CustomerCustomerDemo PRIMARY KEY NONCLUSTERED (CustomerId ASC, CustomerTypeId ASC)
);
