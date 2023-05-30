-- Inserting 10000 rows with sequential values
INSERT INTO customer_address
SELECT
    ROW_NUMBER() OVER (ORDER BY ca_address_sk) AS ca_address_sk,
    'CA' || LPAD(ROW_NUMBER() OVER (ORDER BY ca_address_sk), 6, '0') AS ca_address_id,
    LPAD(ROW_NUMBER() OVER (ORDER BY ca_address_sk), 3, '0') AS ca_street_number,
    'Street' || LPAD(ROW_NUMBER() OVER (ORDER BY ca_address_sk), 6, '0') AS ca_street_name,
    'Type' || LPAD(ROW_NUMBER() OVER (ORDER BY ca_address_sk), 3, '0') AS ca_street_type,
    'Suite' || LPAD(ROW_NUMBER() OVER (ORDER BY ca_address_sk), 3, '0') AS ca_suite_number,
    'City' || LPAD(ROW_NUMBER() OVER (ORDER BY ca_address_sk), 3, '0') AS ca_city,
    'County' || LPAD(ROW_NUMBER() OVER (ORDER BY ca_address_sk), 2, '0') AS ca_county,
    'State' || LPAD(ROW_NUMBER() OVER (ORDER BY ca_address_sk), 2, '0') AS ca_state,
    'Zip' || LPAD(ROW_NUMBER() OVER (ORDER BY ca_address_sk), 5, '0') AS ca_zip,
    'Country' || LPAD(ROW_NUMBER() OVER (ORDER BY ca_address_sk), 3, '0') AS ca_country,
    RANDOM(-10, 10) AS ca_gmt_offset,
    'Location' || LPAD(ROW_NUMBER() OVER (ORDER BY ca_address_sk), 2, '0') AS ca_location_type
FROM SYS_CALENDAR.CALENDAR
QUALIFY ROW_NUMBER() OVER (ORDER BY ca_address_sk) <= 10000;
