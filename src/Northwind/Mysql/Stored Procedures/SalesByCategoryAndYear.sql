DROP PROCEDURE IF EXISTS sales_by_category_and_year;

-- DELIMITER 
-- //

CREATE PROCEDURE sales_by_category_and_year(_category_name VARCHAR(15), _order_year VARCHAR(4))
BEGIN
    IF _order_year != '1996' AND _order_year != '1997' AND _order_year != '1998' THEN
        SELECT _order_year = '1998';
    END IF;

    SELECT product_name,
        total_purchase=ROUND (SUM (OD.quantity * (1 - OD.discount) * OD.unit_price), 0)
    FROM order_details OD, orders O, products P, categories C
    WHERE OD.order_id = O.order_id 
        AND OD.product_id = P.product_id 
        AND P.category_id = C.category_id
        AND C.category_name = _category_name
        AND date_part('year', O.order_date) = _order_year
    GROUP BY product_name
    ORDER BY product_name;
END

-- //
-- DELIMITER ;
