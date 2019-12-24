CREATE PROCEDURE CustomerOrdersDetail 
@OrderId INT
AS
SELECT ProductName,
	UnitPrice = ROUND(Od.UnitPrice, 2),
	Quantity,
	Discount = CONVERT(INT, Discount * 100), 
	ExtendedPrice = ROUND(CONVERT(MONEY, Quantity * (1 - Discount) * Od.UnitPrice), 2)
FROM Products P, "Order Details" Od
WHERE Od.ProductId = P.ProductId and Od.OrderId = @OrderId