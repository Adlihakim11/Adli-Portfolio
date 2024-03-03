USE sql_invoicing;

SELECT p.date, p.client_id,	c.name, p.payment_id, p.amount, pm.name as payment_method    
FROM payments p
JOIN clients c ON p.client_id = c.client_id
JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
ORDER BY p.date DESC