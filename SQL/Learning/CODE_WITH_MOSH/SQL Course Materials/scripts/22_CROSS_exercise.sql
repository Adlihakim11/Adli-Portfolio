-- Do a cross join between shippers and products
-- using the iimplicit syntax
-- then using the explicit syntax

SELECT
	sh.name AS shipper,
    p.name AS product
FROM products p
CROSS JOIN shippers sh
ORDER BY sh.name

-- Explicit syntax
