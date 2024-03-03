-- INNER JOIN
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
-- JOIN orders o ON c.customer_id = o.customer_id

-- OUTER JOIN
LEFT JOIN orders o ON c.customer_id = o.customer_id