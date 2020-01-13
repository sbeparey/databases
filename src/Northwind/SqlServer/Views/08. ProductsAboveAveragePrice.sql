﻿CREATE VIEW ProductsAboveAveragePrice AS
SELECT Products.ProductName, Products.UnitPrice
FROM Products
WHERE Products.UnitPrice>(SELECT AVG (UnitPrice) From Products)