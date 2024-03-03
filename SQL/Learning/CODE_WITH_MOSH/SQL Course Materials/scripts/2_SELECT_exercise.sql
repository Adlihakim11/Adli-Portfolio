-- Exercise1
-- Return all the products
-- name
-- unit price
-- new price (unit price * 1.1)

USE sql_store;

SELECT 
	name, 
    unit_price, 
    unit_price * 1.1 AS 'new price' 
FROM products