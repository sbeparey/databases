CREATE VIEW ProductsByCategory AS
SELECT Categories.CategoryName, Products.ProductName, Products.QuantityPerUnit, Products.UnitsInStock, Products.Discontinued
FROM Categories INNER JOIN Products ON Categories.CategoryId = Products.CategoryId
WHERE Products.Discontinued <> 1