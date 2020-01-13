CREATE PROCEDURE customer_order_history 
@customer_id NCHAR (5)
AS
SELECT product_name, Total=SUM (quantity)
FROM products P, [Order Details] OD, orders O, customers C
WHERE C.customer_id = @customer_id
AND C.customer_id = O.customer_id AND O.order_id = OD.order_id AND OD.product_id = P.product_id
GROUP BY product_name