-- Updating the ca_suite_number column for rows with a specific ca_county value:
UPDATE customer_address
SET ca_suite_number = 'Updated Suite'
WHERE ca_county = 'County01';
