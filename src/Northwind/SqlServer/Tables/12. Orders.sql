DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    OrderId             INT              IDENTITY (1, 1) NOT NULL,
    CustomerId          NCHAR(5)         NULL,
    EmployeeId          INT              NULL,
    OrderDate           DATETIME         NULL,
    RequiredDate        DATETIME         NULL,
    ShippedDate         DATETIME         NULL,
    ShipVia             INT              NULL,
    Freight             MONEY            CONSTRAINT DF_Orders_Freight DEFAULT (0) NULL,
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