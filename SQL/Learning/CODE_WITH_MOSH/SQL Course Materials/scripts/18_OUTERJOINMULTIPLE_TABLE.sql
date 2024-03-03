-- INNER JOIN
SELECT c.customer_id, c.first_name, o.order_id, s.name as delivery
FROM customers c
-- JOIN orders o ON c.customer_id = o.customer_id

-- OUTER JOIN
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN shippers s ON o.shipper_id = s.shipper_id