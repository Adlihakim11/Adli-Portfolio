USE sql_store;
-- Use the select columns from the customers table
SELECT DISTINCT
	-- first_name, 
    -- last_name, 
    -- points,
    -- Perform arithmetics Operation & Rename the columns to discount factor
    -- (points + 10) * 100 AS 'discount factor',
    state
FROM customers 