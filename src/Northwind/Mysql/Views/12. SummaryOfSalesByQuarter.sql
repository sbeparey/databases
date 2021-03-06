﻿DROP VIEW IF EXISTS summary_of_sales_by_quarter;
CREATE VIEW summary_of_sales_by_quarter AS
SELECT orders.shipped_date, orders.order_id, order_subtotals.subtotal
FROM orders INNER JOIN order_subtotals ON orders.order_id = order_subtotals.order_id
WHERE orders.shipped_date IS NOT NULL;
