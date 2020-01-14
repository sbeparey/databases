--DROP VIEW IF EXISTS CategorySalesFor1997;
--GO

CREATE VIEW CategorySalesFor1997 AS
SELECT ProductSalesFor1997.CategoryName, SUM (ProductSalesFor1997.ProductSales) AS CategorySales
FROM ProductSalesFor1997
GROUP BY ProductSalesFor1997.CategoryName;
