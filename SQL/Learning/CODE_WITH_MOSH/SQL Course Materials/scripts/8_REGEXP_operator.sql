USE sql_store;

SELECT * FROM customers
-- WHERE last_name REGEXP '^boa'
-- WHERE last_name REGEXP 'field$'
-- WHERE last_name REGEXP '^Rose|dell$|mac'
WHERE last_name REGEXP '[ril]e' -- re/ ie/ le

-- ^ must be at the beginning of the str
-- $ indicates the end of the str
-- | indicates OR of 2 or more str
-- [] indicates where str inside the sq bracket could be any of them / can use '-' to indicates from 1 point to another, eg a-c = a,b,c