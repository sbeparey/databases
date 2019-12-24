CREATE PROCEDURE EmployeeSalesByCountry
	@Beginning_Date DATETIME, @Ending_Date DATETIME AS
SELECT Employees.Country, Employees.LastName, Employees.FirstName, Orders.ShippedDate, Orders.OrderId, OrderSubtotals.Subtotal AS SaleAmount
FROM Employees INNER JOIN 
	(Orders INNER JOIN OrderSubtotals ON Orders.OrderId = OrderSubtotals.OrderId) 
	ON Employees.EmployeeId = Orders.EmployeeId
WHERE Orders.ShippedDate BETWEEN @Beginning_Date AND @Ending_Date