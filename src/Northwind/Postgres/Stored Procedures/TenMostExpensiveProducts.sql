CREATE PROCEDURE ten_most_expensive_products AS
SET ROWCOUNT 10
SELECT products.product_name AS ten_most_expensive_products, products.unit_price
FROM products
ORDER BY products.unit_price DESC