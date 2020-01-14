DROP VIEW IF EXISTS current_product_list;
CREATE VIEW current_product_list AS
SELECT product_id, product_name
FROM products
WHERE discontinued = FALSE;
