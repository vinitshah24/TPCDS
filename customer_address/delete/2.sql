-- Deleting rows with specific ca_state values
DELETE FROM customer_address
WHERE ca_state IN ('NY', 'CA', 'IL');
