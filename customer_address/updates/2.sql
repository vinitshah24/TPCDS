-- Updating the ca_street_name column for all rows
UPDATE customer_address
SET ca_city = 'Updated City'
WHERE MOD(ca_address_sk, 2) = 0;
