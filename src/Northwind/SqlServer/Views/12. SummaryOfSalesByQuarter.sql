DROP VIEW IF EXISTS SummaryOfSalesByQuarter;
GO

CREATE VIEW SummaryOfSalesByQuarter AS
SELECT Orders.ShippedDate, Orders.OrderId, OrderSubtotals.Subtotal
FROM Orders INNER JOIN OrderSubtotals ON Orders.OrderId = OrderSubtotals.OrderId
WHERE Orders.ShippedDate IS NOT NULL;
