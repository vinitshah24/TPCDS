-- Deleting rows with a specific ca_address_id range
DELETE FROM customer_address
WHERE ca_address_id BETWEEN 'CA000010' AND 'CA000020';
