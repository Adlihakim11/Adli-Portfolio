-- this script is to use when joining multiple database (sql_inventory <-> sql_store)
-- joining them with product_id column

USE sql_inventory;

SELECT * FROM sql_store.order_items oi
JOIN sql_inventory.products p ON oi.product_id = p.product_id