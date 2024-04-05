-- USE sql_invoicing;
-- CREATE VIEW sales_by_client AS
-- SELECT c.client_id, c.name, SUM(invoice_total) AS total_sales FROM clients c
-- JOIN invoices i USING(client_id) GROUP BY client_id, name; 
-- SELECT * FROM sales_by_client ORDER BY total_sales DESC;
-- CREATE VIEW clients_balance AS
-- SELECT c.client_id, c.name, SUM(invoice_total - payment_total) AS balance FROM clients c
-- JOIN invoices i USING(client_id) GROUP BY client_id, name;

-- CREATE OR REPLACE VIEW sales_by_client AS
-- SELECT c.client_id, c.name, SUM(invoice_total) AS total_sales FROM clients c
-- JOIN invoices i USING(client_id) GROUP BY client_id, name; 
-- SELECT * FROM sales_by_client ORDER BY total_sales DESC;

-- CREATE OR REPLACE VIEW invoices_with_balance AS
-- SELECT invoice_id, number, client_id, invoice_total, payment_total, invoice_total - payment_total AS balance, 
-- invoice_date, due_date, payment_date FROM invoices WHERE (invoice_total - payment_total) > 0;
-- DELETE FROM invoices_with_balance
-- WHERE invoice_id = 1;
-- UPDATE invoices_with_balance SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY) WHERE invoice_id = 2;

-- because of the WHERE condition on the invoices_with_balance view (invoice_total - payment_total) > 0 this updated row will be excluded.
-- UPDATE invoices_with_balance SET payment_total = invoice_total WHERE invoice_id = 2;
-- CREATE OR REPLACE VIEW invoices_with_balance AS
-- SELECT invoice_id, number, client_id, invoice_total, payment_total, invoice_total - payment_total AS balance, 
-- invoice_date, due_date, payment_date FROM invoices WHERE (invoice_total - payment_total) > 0 WITH CHECK OPTION;
-- UPDATE invoices_with_balance SET payment_total = invoice_total WHERE invoice_id = 4;

