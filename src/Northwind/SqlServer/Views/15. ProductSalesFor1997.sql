--DROP VIEW IF EXISTS ProductSalesFor1997;
--GO

CREATE VIEW ProductSalesFor1997 AS
SELECT Categories.CategoryName, Products.ProductName, 
	SUM (CONVERT (money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ProductSales
FROM (Categories INNER JOIN Products ON Categories.CategoryId = Products.CategoryId) 
	INNER JOIN (Orders 
		INNER JOIN "Order Details" ON Orders.OrderId = "Order Details".OrderId) 
	ON Products.ProductId = "Order Details".ProductId
WHERE (((Orders.ShippedDate) BETWEEN '19970101' AND '19971231'))
GROUP BY Categories.CategoryName, Products.ProductName;