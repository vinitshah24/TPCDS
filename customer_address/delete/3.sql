-- Deleting rows with specific ca_location_type values
DELETE FROM customer_address
WHERE ca_location_type IN ('Commercial', 'Residential');
