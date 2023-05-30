-- Deleting rows with a specific ca_zip range:
DELETE FROM customer_address
WHERE ca_zip BETWEEN 'Zip500' AND 'Zip600';
