-- Deleting rows with a specific ca_country value and a specific ca_street_name pattern
DELETE FROM customer_address
WHERE ca_country = 'United States'
  AND ca_street_name LIKE '%Street%';
