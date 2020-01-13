﻿DROP TABLE IF EXISTS Suppliers;
CREATE TABLE Suppliers (
    SupplierId      INT            IDENTITY(1, 1) NOT NULL,
    CompanyName     NVARCHAR(40)   NOT NULL,
    ContactName     NVARCHAR(30)   NULL,
    ContactTitle    NVARCHAR(30)   NULL,
    "Address"       NVARCHAR(60)   NULL,
    City            NVARCHAR(15)   NULL,
    Region          NVARCHAR(15)   NULL,
    PostalCode      NVARCHAR(10)   NULL,
    Country         NVARCHAR(15)   NULL,
    Phone           NVARCHAR(24)   NULL,
    Fax             NVARCHAR(24)   NULL,
    HomePage        NTEXT          NULL,
    CONSTRAINT PK_Suppliers PRIMARY KEY CLUSTERED (SupplierId ASC)
);

CREATE NONCLUSTERED INDEX IX_Suppliers_CompanyName
    ON Suppliers (CompanyName ASC);

CREATE NONCLUSTERED INDEX IX_Suppliers_PostalCode
    ON Suppliers (PostalCode ASC);
