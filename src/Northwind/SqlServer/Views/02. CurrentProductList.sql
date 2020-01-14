DROP VIEW IF EXISTS CurrentProductList;
GO

CREATE VIEW CurrentProductList AS
SELECT ProductId, ProductName
FROM Products
WHERE Discontinued = 0;