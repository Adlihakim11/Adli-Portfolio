-- Get the customers whose
	-- first name are ELKA or AMBUR
    -- last name end with EY or ON
    -- last name start with MY or contains SE
    -- last names contain B followed by R or U

USE sql_store;

SELECT * FROM customers
-- WHERE first_name REGEXP 'ELKA|AMBUR'
-- WHERE last_name REGEXP 'EY$|ON$'
-- WHERE last_name REGEXP '^MY|SE'
WHERE last_name REGEXP 'B[R|U]'

