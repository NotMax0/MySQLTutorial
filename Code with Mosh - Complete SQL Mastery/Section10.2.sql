SET @points = 0;

START TRANSACTION;
SELECT points FROM customers WHERE customer_id = 1;
SET @points = (SELECT points FROM customers WHERE customer_id = 1);
SELECT @points;
COMMIT;

START TRANSACTION;
SELECT points FROM customers WHERE customer_id = 1;
SELECT points FROM customers WHERE customer_id = 1;
COMMIT;

START TRANSACTION;
UPDATE customers SET state = 'VA' WHERE customer_id = 1;
COMMIT;


START TRANSACTION;
UPDATE customers SET state = 'VA' WHERE customer_id = 2;
UPDATE orders SET status = 1 WHERE order_id = 2;
COMMIT;