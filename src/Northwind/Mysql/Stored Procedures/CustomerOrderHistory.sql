DROP PROCEDURE IF EXISTS customer_order_history;

-- DELIMITER 
-- //

CREATE PROCEDURE customer_order_history(_customer_id char(5))

BEGIN

    SELECT product_name, SUM(quantity) AS total
    FROM products P, order_details OD, orders O, customers C
    WHERE C.customer_id = _customer_id AND 
          C.customer_id = O.customer_id AND 
          O.order_id = OD.order_id AND 
          OD.product_id = P.product_id
    GROUP BY product_name;

END

-- //
-- DELIMITER ;
