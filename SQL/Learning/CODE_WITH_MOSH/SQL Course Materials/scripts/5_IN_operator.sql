USE sql_store;

SELECT * FROM customers
WHERE state NOT IN ('VA', 'FL', 'GA') 