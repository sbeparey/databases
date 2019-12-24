CREATE PROCEDURE CustomerOrders
@CustomerId NCHAR (5)
AS
SELECT OrderId, 
	   OrderDate,
	   RequiredDate,
	   ShippedDate
FROM Orders
WHERE CustomerId = @CustomerId
ORDER BY OrderId
