-- Updating the ca_country column for rows with specific ca_street_name values
UPDATE customer_address
SET ca_country = 'Updated Country'
WHERE ca_street_name LIKE '%Street%';
