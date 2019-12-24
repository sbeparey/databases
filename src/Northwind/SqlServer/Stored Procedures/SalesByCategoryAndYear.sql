CREATE PROCEDURE SalesByCategoryAndYear
	@CategoryName NVARCHAR (15), @OrderYear NVARCHAR (4) = '1998'
AS
IF @OrderYear != '1996' AND @OrderYear != '1997' AND @OrderYear != '1998' 
BEGIN
	SELECT @OrderYear = '1998'
END
SELECT ProductName,
	TotalPurchase=ROUND (SUM (CONVERT (DECIMAL (14,2), OD.Quantity * (1-OD.Discount) * OD.UnitPrice)), 0)
FROM [Order Details] OD, Orders O, Products P, Categories C
WHERE OD.OrderId = O.OrderId 
	AND OD.ProductId = P.ProductId 
	AND P.CategoryId = C.CategoryId
	AND C.CategoryName = @CategoryName
	AND SUBSTRING (CONVERT (NVARCHAR (22), O.OrderDate, 111), 1, 4) = @OrderYear
GROUP BY ProductName
ORDER BY ProductName