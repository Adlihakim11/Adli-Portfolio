-- Return products with
-- quantity in stock equals to 49, 38, 72

USE sql_store;

SELECT * FROM products
WHERE quantity_in_stock IN (49,38,72) 