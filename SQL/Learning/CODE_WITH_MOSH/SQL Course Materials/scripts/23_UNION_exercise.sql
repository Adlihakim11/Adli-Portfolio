SELECT customer_id, first_name, points, 'Bronze' as type FROM customers
WHERE points <= '2000'
UNION
SELECT customer_id, first_name, points, 'Silver' FROM customers
WHERE points > '2000' AND points <= '3000'
UNION
SELECT customer_id, first_name, points, 'Gold' FROM customers
WHERE points > '3000'
ORDER BY first_name