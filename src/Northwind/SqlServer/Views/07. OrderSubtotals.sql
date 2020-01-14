--DROP VIEW IF EXISTS OrderSubtotals;
--GO

CREATE VIEW OrderSubtotals AS
SELECT "Order Details".OrderId, SUM (CONVERT (MONEY,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS Subtotal
FROM "Order Details"
GROUP BY "Order Details".OrderId;

