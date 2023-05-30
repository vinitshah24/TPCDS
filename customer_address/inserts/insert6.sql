-- 6_Inserting 5000000 rows with random values and specific ZIP codes
INSERT INTO customer_address
SELECT TOP 5000000
    ROW_NUMBER() OVER (ORDER BY RANDOM(1,1000000)) AS ca_address_sk,
    'CA' || LPAD(ROW_NUMBER() OVER (ORDER BY RANDOM(1,1000000)), 6, '0') AS ca_address_id,
    RANDOM(1,1000) AS ca_street_number,
    'Street' || RANDOM(1,1000) AS ca_street_name,
    'Type' || RANDOM(1,100) AS
