CREATE PROCEDURE sales_by_date_range
	@Beginning_Date DATETIME, @Ending_Date DATETIME AS
SELECT orders.shipped_date, orders.order_id, order_subtotals.subtotal, DATENAME (yy,shipped_date) AS YEAR
FROM orders INNER JOIN order_subtotals ON orders.order_id = order_subtotals.order_id
WHERE orders.shipped_date BETWEEN @Beginning_Date AND @Ending_Date