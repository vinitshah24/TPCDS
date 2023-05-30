-- Updating the ca_state column for rows with a specific ca_zip range
UPDATE customer_address
SET ca_state = 'Updated State'
WHERE ca_zip BETWEEN 'Zip500' AND 'Zip600';
