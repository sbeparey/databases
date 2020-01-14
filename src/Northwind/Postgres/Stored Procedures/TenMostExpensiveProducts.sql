CREATE OR REPLACE PROCEDURE ten_most_expensive_products()
LANGUAGE plpgsql
AS $$
BEGIN
	SELECT products.product_name AS ten_most_expensive_products, products.unit_price
	FROM products
	ORDER BY products.unit_price DESC
	LIMIT 10;
END;
$$;
