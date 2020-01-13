CREATE PROCEDURE sales_by_category_and_year
	@category_name NVARCHAR (15), @OrderYear NVARCHAR (4) = '1998'
AS
IF @OrderYear != '1996' AND @OrderYear != '1997' AND @OrderYear != '1998' 
BEGIN
	SELECT @OrderYear = '1998'
END
SELECT product_name,
	TotalPurchase=ROUND (SUM (CONVERT (DECIMAL (14,2), OD.quantity * (1-OD.discount) * OD.unit_price)), 0)
FROM [Order Details] OD, orders O, products P, categories C
WHERE OD.order_id = O.order_id 
	AND OD.product_id = P.product_id 
	AND P.category_id = C.category_id
	AND C.category_name = @category_name
	AND SUBSTRING (CONVERT (NVARCHAR (22), O.order_date, 111), 1, 4) = @OrderYear
GROUP BY product_name
ORDER BY product_name