DROP VIEW IF EXISTS sales_totals_by_amount;
CREATE VIEW sales_totals_by_amount AS
SELECT order_subtotals.subtotal AS sale_amount, orders.order_id, customers.company_name, orders.shipped_date
FROM customers INNER JOIN 
		(orders INNER JOIN order_subtotals ON orders.order_id = order_subtotals.order_id) 
	ON customers.customer_id = orders.customer_id
WHERE (order_subtotals.subtotal > 2500) AND (orders.shipped_date BETWEEN '19970101' And '19971231');
