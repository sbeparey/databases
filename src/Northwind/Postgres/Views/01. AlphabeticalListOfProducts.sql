DROP VIEW IF EXISTS alphabetical_list_of_products;
CREATE VIEW alphabetical_list_of_products AS
SELECT products.*, categories.category_name
FROM categories INNER JOIN products ON categories.category_id = products.category_id
WHERE products.discontinued = FALSE;
