-- Deleting rows with even ca_address_sk values
DELETE FROM customer_address
WHERE MOD(ca_address_sk, 2) = 0;
