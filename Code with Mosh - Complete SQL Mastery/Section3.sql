-- INSERT INTO customers 
-- VALUES (DEFAULT, 'John', 'Smith', '1990-01-01', NULL, 'address', 'city', 'CA', DEFAULT);
-- INSERT INTO customers (last_name, first_name, birth_date, address, city, state)
-- VALUES ('Smith', 'John', '1990-01-01', 'address', 'city', 'CA');

-- INSERT INTO shippers (name)
-- VALUES ('shipper1'),
-- 	   ('shipper2'),
--        ('shipper3');
-- INSERT INTO products (name, quantity_in_stock, unit_price)
-- VALUES ('product1', 10, 1.95),
-- 	   ('product2', 11, 1.95),
--        ('product3', 12, 1.95);

-- INSERT INTO orders (customer_id, order_date, status)
-- VALUES (1, '2019-01-02', 1);
-- INSERT INTO order_items
-- VALUES (LAST_INSERT_ID(), 1, 1, 2.95),
-- 	   (LAST_INSERT_ID(), 2, 1, 3.95);

-- CREATE TABLE orders_archived AS
-- SELECT * FROM orders;
-- INSERT INTO orders_archived
-- SELECT * FROM orders WHERE order_date < '2019-01-01';
-- USE sql_invoicing;
-- CREATE TABLE invoices_archived AS
-- SELECT i.invoice_id, i.number, c.name AS client, i.invoice_total, i.payment_total, i.invoice_date, i.payment_date, i.due_date FROM invoices i 
-- JOIN clients c USING (client_id) WHERE payment_date IS NOT NULL;

-- UPDATE invoices SET payment_total = invoice_total * 0.5, payment_date = due_date WHERE invoice_id = 1;

-- UPDATE invoice SET payment_total = invoie_total * 0.5, payment_date = due_date WHERE client_id = 3;
-- USE sql_store;
-- UPDATE customers SET points = points + 50 WHERE birth_date < '1990-01-01';

-- UPDATE invoices SET payment_total = invoice_total * 0.5, payment_date = due_date
-- WHERE client_id = (SELECT client_id FROM clients WHERE name = 'Myworks');
-- UPDATE invoices SET payment_total = invoice_total * 0.5, payment_date = due_date
-- WHERE client_id IN (SELECT client_id FROM clients WHERE state IN ('CA', 'NY'));
-- UPDATE orders SET comments = 'Gold customer'
-- WHERE customer_id IN (SELECT customer_id FROM customers WHERE points > 3000);

-- DELETE FROM invoices
-- WHERE invoice_id = 1;
-- DELETE FROM invoices
-- WHERE client_id = (SELECT client_id FROM clients WHERE name = 'Myworks');

