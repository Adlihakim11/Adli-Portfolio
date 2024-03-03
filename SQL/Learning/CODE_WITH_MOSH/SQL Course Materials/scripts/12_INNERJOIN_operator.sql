USE sql_store;

SELECT order_id, o.customer_id, first_name, last_name FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id