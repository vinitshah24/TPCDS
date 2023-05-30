-- Updating the ca_street_number column for rows with a specific ca_country value
UPDATE customer_address
SET ca_street_number = ca_street_number * 2
WHERE ca_country = 'United States';
