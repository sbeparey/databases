DROP PROCEDURE IF EXISTS customer_orders_detail;

DELIMITER //

CREATE PROCEDURE customer_orders_detail(_order_id INT)

BEGIN
    SELECT product_name,
        ROUND(Od.unit_price, 2) AS unit_price,
        quantity,
        CAST(discount * 100 AS INT) AS discount, 
        ROUND((quantity * (1 - discount) * Od.unit_price), 2) AS extended_price
    FROM products P, order_details Od
    WHERE Od.product_id = P.product_id AND 
          Od.order_id = _order_id;
END; //

DELIMITER ;
