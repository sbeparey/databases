CREATE OR REPLACE PROCEDURE customer_orders_detail(INT)
LANGUAGE plpgsql
AS $$
DECLARE
    _order_id INT;
BEGIN
    SELECT product_name,
        unit_price = ROUND(Od.unit_price, 2),
        quantity,
        discount = CONVERT(INT, discount * 100), 
        extended_price = ROUND(CONVERT(REAL, quantity * (1 - discount) * Od.unit_price), 2)
    FROM products P, order_details Od
    WHERE Od.product_id = P.product_id and Od.order_id = _order_id;
END;
$$;
