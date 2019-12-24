DROP TABLE IF EXISTS "Order Details";
CREATE TABLE "Order Details" (
    OrderId     INT      NOT NULL,
    ProductId   INT      NOT NULL,
    UnitPrice   MONEY    CONSTRAINT DF_Order_Details_UnitPrice DEFAULT ((0)) NOT NULL,
    Quantity    SMALLINT CONSTRAINT DF_Order_Details_Quantity DEFAULT ((1)) NOT NULL,
    Discount    REAL     CONSTRAINT DF_Order_Details_Discount DEFAULT ((0)) NOT NULL,
    CONSTRAINT PK_Order_Details PRIMARY KEY CLUSTERED (OrderId ASC, ProductId ASC),
    CONSTRAINT CK_Discount CHECK (Discount>=(0) AND Discount<=(1)),
    CONSTRAINT CK_Quantity CHECK (Quantity>(0)),
    CONSTRAINT CK_UnitPrice CHECK (UnitPrice>=(0))
);

CREATE NONCLUSTERED INDEX OrderId
    ON "Order Details" (OrderId ASC);

CREATE NONCLUSTERED INDEX OrdersOrder_Details
    ON "Order Details"(OrderId ASC);

CREATE NONCLUSTERED INDEX ProductId
    ON "Order Details"(ProductId ASC);

CREATE NONCLUSTERED INDEX ProductsOrder_Details
    ON "Order Details"(ProductId ASC);
