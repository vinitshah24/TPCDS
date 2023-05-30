-- Inserting 100000 rows with random values and a specific state
INSERT INTO customer_address
SELECT TOP 100000
    ROW_NUMBER() OVER (ORDER BY RANDOM(1,1000000)) AS ca_address_sk,
    'CA' || LPAD(ROW_NUMBER() OVER (ORDER BY RANDOM(1,1000000)), 6, '0') AS ca_address_id,
    RANDOM(1,1000) AS ca_street_number,
    'Street' || RANDOM(1,1000) AS ca_street_name,
    'Type' || RANDOM(1,100) AS ca_street_type,
    'Suite' || RANDOM(1,100) AS ca_suite_number,
    'City' || RANDOM(1,100) AS ca_city,
    'County' || RANDOM(1,10) AS ca_county,
    'CA' AS ca_state,
    'Zip' || RANDOM(1,1000) AS ca_zip,
    'Country' || RANDOM(1,20) AS ca_country,
    RANDOM(-10, 10) AS ca_gmt_offset,
    'Location' || RANDOM(1,50) AS ca_location_type
FROM SYS_CALENDAR.CALENDAR;
