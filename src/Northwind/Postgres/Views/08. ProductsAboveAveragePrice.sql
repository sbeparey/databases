CREATE VIEW products_above_average_price AS
SELECT products.product_name, products.unit_price
FROM products
WHERE products.unit_price>(SELECT AVG (unit_price) FROM products)