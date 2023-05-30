-- Updating the ca_zip column for rows with specific ca_state values:
UPDATE customer_address
SET ca_zip = 'Updated Zip'
WHERE ca_state IN ('NY', 'CA', 'IL');
