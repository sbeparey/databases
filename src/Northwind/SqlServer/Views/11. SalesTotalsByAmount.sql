DROP VIEW IF EXISTS SalesTotalsByAmount;
GO

CREATE VIEW SalesTotalsByAmount AS
SELECT OrderSubtotals.Subtotal AS SaleAmount, Orders.OrderId, Customers.CompanyName, Orders.ShippedDate
FROM Customers INNER JOIN 
		(Orders INNER JOIN OrderSubtotals ON Orders.OrderId = OrderSubtotals.OrderId) 
	ON Customers.CustomerId = Orders.CustomerId
WHERE (OrderSubtotals.Subtotal > 2500) AND (Orders.ShippedDate BETWEEN '19970101' And '19971231');