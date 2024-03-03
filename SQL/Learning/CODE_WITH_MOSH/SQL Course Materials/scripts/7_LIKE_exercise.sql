-- get the customers whose
-- address containts trail or avenue
-- phone numbers end with 0

USE sql_store;

SELECT * FROM customers
WHERE (address LIKE '%TRAIL%' or address LIKE '%Avenue%') OR phone LIKE '%9'