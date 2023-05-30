-- Updating the ca_location_type column for rows with specific ca_country values:
UPDATE customer_address
SET ca_location_type = 'Updated Location'
WHERE ca_country IN ('United States', 'Canada');
