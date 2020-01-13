DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    CustomerId      NCHAR(5)     NOT NULL,
    CompanyName     NVARCHAR(40) NOT NULL,
    ContactName     NVARCHAR(30) NULL,
    ContactTitle    NVARCHAR(30) NULL,
    "Address"       NVARCHAR(60) NULL,
    City            NVARCHAR(15) NULL,
    Region          NVARCHAR(15) NULL,
    PostalCode      NVARCHAR(10) NULL,
    Country         NVARCHAR(15) NULL,
    Phone           NVARCHAR(24) NULL,
    Fax             NVARCHAR(24) NULL,
    CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED (CustomerId ASC)
);

CREATE NONCLUSTERED INDEX IX_Customers_City
    ON Customers (City ASC);

CREATE NONCLUSTERED INDEX IX_Customers_CompanyName
    ON Customers (CompanyName ASC);

CREATE NONCLUSTERED INDEX IX_Customers_PostalCode
    ON Customers (PostalCode ASC);

CREATE NONCLUSTERED INDEX IX_Customers_Region
    ON Customers (Region ASC);
