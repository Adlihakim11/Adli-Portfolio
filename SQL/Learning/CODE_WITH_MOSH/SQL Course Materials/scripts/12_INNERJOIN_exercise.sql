USE sql_store;

SELECT order_id, oi.product_id, name, quantity, oi.unit_price, quantity_in_stock, p.unit_price AS product_quantity_stock 
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
ORDER BY oi.order_id DESC