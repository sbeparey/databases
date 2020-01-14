--DROP VIEW IF EXISTS AlphabeticalListOfProducts;
--GO

CREATE VIEW AlphabeticalListOfProducts AS
SELECT Products.*, Categories.CategoryName
FROM Categories INNER JOIN Products ON Categories.CategoryId = Products.CategoryId
WHERE Products.Discontinued = 0;