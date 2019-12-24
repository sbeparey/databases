CREATE PROCEDURE SalesByDateRange
	@Beginning_Date DATETIME, @Ending_Date DATETIME AS
SELECT Orders.ShippedDate, Orders.OrderId, OrderSubtotals.Subtotal, DATENAME (yy,ShippedDate) AS YEAR
FROM Orders INNER JOIN OrderSubtotals ON Orders.OrderId = OrderSubtotals.OrderId
WHERE Orders.ShippedDate BETWEEN @Beginning_Date AND @Ending_Date