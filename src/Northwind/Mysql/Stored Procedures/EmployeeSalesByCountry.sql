DROP PROCEDURE IF EXISTS employee_sales_by_country;

DELIMITER //

CREATE PROCEDURE employee_sales_by_country(_beginning_date DATE, _ending_date DATE)
BEGIN
    SELECT employees.country, employees.last_name, employees.first_name, orders.shipped_date, orders.order_id, order_subtotals.subtotal AS sale_amount
    FROM employees INNER JOIN 
        (orders INNER JOIN order_subtotals ON orders.order_id = order_subtotals.order_id) 
        ON employees.employee_id = orders.employee_id
    WHERE orders.shipped_date BETWEEN _beginning_date AND _ending_date;
END; //

DELIMITER ;
