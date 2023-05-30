-- Updating the ca_street_type column for rows with specific ca_location_type values
UPDATE customer_address
SET ca_street_type = 'Updated Type'
WHERE ca_location_type IN ('Commercial', 'Residential');
