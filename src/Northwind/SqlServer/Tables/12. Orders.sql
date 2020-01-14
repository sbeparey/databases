DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    OrderId             INT              NOT NULL IDENTITY(1, 1),
    CustomerId          NCHAR(5)         NULL,
    EmployeeId          SMALLINT         NULL,
    OrderDate           DATETIME         NULL,
    RequiredDate        DATETIME         NULL,
    ShippedDate         DATETIME         NULL,
    ShipVia             INT              NULL,
    Freight             MONEY            NULL   CONSTRAINT DF_Orders_Freight DEFAULT (0),
    ShipName            NVARCHAR(40)     NULL,
    ShipAddress         NVARCHAR(60)     NULL,
    ShipCity            NVARCHAR(15)     NULL,
    ShipRegion          NVARCHAR(15)     NULL,
    ShipPostalCode      NVARCHAR(10)     NULL,
    ShipCountry         NVARCHAR(15)     NULL,
    CONSTRAINT PK_Orders PRIMARY KEY CLUSTERED (OrderId ASC)
);

CREATE NONCLUSTERED INDEX IX_Orders_CustomerId
    ON Orders (CustomerId ASC);

CREATE NONCLUSTERED INDEX IX_Orders_EmployeeId
    ON Orders (EmployeeId ASC);

CREATE NONCLUSTERED INDEX IX_Orders_OrderDate
    ON Orders (OrderDate ASC);

CREATE NONCLUSTERED INDEX IX_Orders_ShippedDate
    ON Orders (ShippedDate ASC);

CREATE NONCLUSTERED INDEX IX_Orders_ShippedVia
    ON Orders (ShipVia ASC);

CREATE NONCLUSTERED INDEX IX_Orders_ShipPostalCode
    ON Orders (ShipPostalCode ASC);