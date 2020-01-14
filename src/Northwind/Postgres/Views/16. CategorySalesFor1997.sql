DROP VIEW IF EXISTS category_sales_for_1997;
CREATE VIEW category_sales_for_1997 AS
SELECT product_sales_for_1997.category_name, SUM (product_sales_for_1997.product_sales) AS category_sales
FROM product_sales_for_1997
GROUP BY product_sales_for_1997.category_name;
