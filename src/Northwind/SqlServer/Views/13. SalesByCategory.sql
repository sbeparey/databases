CREATE VIEW SalesByCategory AS
SELECT Categories.CategoryId, Categories.CategoryName, Products.ProductName, 
	SUM (OrderDetailsExtended.ExtendedPrice) AS ProductSales
FROM Categories INNER JOIN 
		(Products INNER JOIN 
			(Orders INNER JOIN OrderDetailsExtended ON Orders.OrderId = OrderDetailsExtended.OrderId) 
		ON Products.ProductId = OrderDetailsExtended.ProductId) 
	ON Categories.CategoryId = Products.CategoryId
WHERE Orders.OrderDate BETWEEN '19970101' AND '19971231'
GROUP BY Categories.CategoryId, Categories.CategoryName, Products.ProductName