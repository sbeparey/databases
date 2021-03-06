﻿CREATE OR REPLACE PROCEDURE sales_by_date_range(DATE, DATE)
LANGUAGE plpgsql
AS $$
DECLARE
    _beginning_date DATE;
    _ending_date DATE;
BEGIN
    SELECT orders.shipped_date, orders.order_id, order_subtotals.subtotal, DATENAME (yy,shipped_date) AS YEAR
    FROM orders INNER JOIN order_subtotals ON orders.order_id = order_subtotals.order_id
    WHERE orders.shipped_date BETWEEN _beginning_date AND _ending_date;
END;
$$;
