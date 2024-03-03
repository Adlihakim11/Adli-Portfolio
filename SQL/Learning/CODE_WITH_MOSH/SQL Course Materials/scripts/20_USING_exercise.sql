USE sql_invoicing;

SELECT DISTINCT date, c.name AS client, p.amount, pm.name FROM clients c
JOIN invoices i USING (client_id)
LEFT JOIN payments p USING (client_id)
JOIN payment_methods pm ON (p.payment_method = pm.payment_method_id)