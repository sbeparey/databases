CREATE OR REPLACE PROCEDURE customer_order_history(char(5))
LANGUAGE plpgsql
AS $$
DECLARE
    _customer_id CHAR(5);
BEGIN
    SELECT product_name, Total=SUM (quantity)
    FROM products P, order_details OD, orders O, customers C
    WHERE C.customer_id = _customer_id
    AND C.customer_id = O.customer_id AND O.order_id = OD.order_id AND OD.product_id = P.product_id
    GROUP BY product_name;
END;
$$;
