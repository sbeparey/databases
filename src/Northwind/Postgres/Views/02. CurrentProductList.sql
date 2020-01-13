CREATE VIEW current_product_list AS
SELECT product_id, product_name
FROM products
WHERE discontinued=0