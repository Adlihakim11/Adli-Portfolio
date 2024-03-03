-- Selecting sql_store database
USE sql_store;
-- Selecting all from the customer tables
SELECT *
FROM customers
-- WHERE customer_id = 1
-- Order the table by the first_name columns
ORDER BY first_name