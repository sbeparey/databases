DROP PROCEDURE IF EXISTS customer_orders;

-- DELIMITER 
-- //

CREATE PROCEDURE customer_orders(_customer_id CHAR(5))
BEGIN
    SELECT order_id, 
           order_date,
           required_date,
           shipped_date
    FROM orders
    WHERE customer_id = _customer_id
    ORDER BY order_id;
END

-- //
-- DELIMITER ;
