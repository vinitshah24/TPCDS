-- Updating the ca_gmt_offset column for rows with a specific ca_address_id range:
UPDATE customer_address
SET ca_gmt_offset = ca_gmt_offset + 1.5
WHERE ca_address_id BETWEEN 'CA000010' AND 'CA000020';
