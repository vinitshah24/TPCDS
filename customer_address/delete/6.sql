-- Deleting rows with specific ca_location_type values and a specific ca_country value
DELETE FROM customer_address
WHERE ca_location_type IN ('Commercial', 'Residential')
  AND ca_country = 'United States';
