-- Write a SQL statement to
-- give any customer born after 1990
-- 50 extra points

-- SELECT * FROM customers WHERE birth_date >= '1990-01-01'
UPDATE customers
SET points = points + 50
WHERE birth_date >= '1990-01-01'