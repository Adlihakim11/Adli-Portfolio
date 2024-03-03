UPDATE orders o
SET comments = "Gold Customer"
WHERE customer_id IN
					(SELECT customer_id
                     From customers
                     WHERE points > 3000)