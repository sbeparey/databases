﻿CREATE VIEW CategorySalesFor1997 AS
SELECT ProductSalesFor1997.CategoryName, Sum (ProductSalesFor1997.ProductSales) AS CategorySales
FROM ProductSalesFor1997
GROUP BY ProductSalesFor1997.CategoryName