CREATE VIEW products_by_category AS
SELECT categories.category_name, products.product_name, products.quantity_per_unit, products.units_in_stock, products.discontinued
FROM categories INNER JOIN products ON categories.category_id = products.category_id
WHERE products.discontinued <> 1