USE sql_store;

-- START TRANSACTION;
-- INSERT INTO orders (customer_id, order_date, status) VALUES (1, '2019-01-01', 1);
-- INSERT INTO order_items VALUES (LAST_INSERT_ID(), 1, 1, 1);
-- COMMIT;

-- SHOW VARIABLES LIKE 'transaction_isolation';

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
START TRANSACTION;
UPDATE customers SET points = points + 10 WHERE customer_id = 1;
-- ROLLBACK;
COMMIT;

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
START TRANSACTION;
SELECT * FROM customers WHERE state = 'VA';
COMMIT;


START TRANSACTION;
UPDATE orders SET status = 1 WHERE order_id = 1;
UPDATE customers SET state = 'VA' WHERE customer_id = 1;
COMMIT;