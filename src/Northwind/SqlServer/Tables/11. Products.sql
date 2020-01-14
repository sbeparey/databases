DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
    ProductId           INT             NOT NULL IDENTITY(1, 1),
    ProductName         NVARCHAR(40)    NOT NULL,
    SupplierId          INT             NULL,
    CategoryId          SMALLINT        NULL,
    QuantityPerUnit     NVARCHAR(20)    NULL,
    UnitPrice           MONEY           NULL    CONSTRAINT DF_Products_UnitPrice DEFAULT (0),
    UnitsInStock        SMALLINT        NULL    CONSTRAINT DF_Products_UnitsInStock DEFAULT (0),
    UnitsOnOrder        SMALLINT        NULL    CONSTRAINT DF_Products_UnitsOnOrder DEFAULT (0),
    ReorderLevel        SMALLINT        NULL    CONSTRAINT DF_Products_ReorderLevel DEFAULT (0),
    Discontinued        BIT             NOT NULL CONSTRAINT DF_Products_Discontinued DEFAULT (0),
    CONSTRAINT PK_Products PRIMARY KEY CLUSTERED (ProductId ASC),
    CONSTRAINT CK_Products_UnitPrice CHECK (UnitPrice >= 0),
    CONSTRAINT CK_ReorderLevel CHECK (ReorderLevel >= 0),
    CONSTRAINT CK_UnitsInStock CHECK (UnitsInStock >= 0),
    CONSTRAINT CK_UnitsOnOrder CHECK (UnitsOnOrder >= 0)
);

CREATE NONCLUSTERED INDEX IX_Products_CategoriesProducts
    ON Products (CategoryId ASC);

CREATE NONCLUSTERED INDEX IX_Products_ProductName
    ON Products (ProductName ASC);

CREATE NONCLUSTERED INDEX IX_Products_SupplierId
    ON Products (SupplierId ASC);
