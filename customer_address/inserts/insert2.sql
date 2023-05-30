-- Inserting 5000 rows with specific values for some columns
INSERT INTO customer_address (ca_address_sk, ca_address_id, ca_street_number, ca_street_name, ca_city, ca_state, ca_zip)
SELECT TOP 5000
    ROW_NUMBER() OVER (ORDER BY RANDOM(1,1000000)) AS ca_address_sk,
    'CA' || LPAD(ROW_NUMBER() OVER (ORDER BY RANDOM(1,1000000)), 6, '0') AS ca_address_id,
    RANDOM(1,1000) AS ca_street_number,
    'Street' || RANDOM(1,1000) AS ca_street_name,
    'City' || RANDOM(1,100) AS ca_city,
    'State' || RANDOM(1,50) AS ca_state,
    'Zip' || RANDOM(1,1000) AS ca_zip
FROM SYS_CALENDAR.CALENDAR;
