-- USE sql_invoicing;
-- SELECT MAX(invoice_total) AS highest, MIN(invoice_total) AS lowest, AVG(invoice_total) AS average, SUM(invoice_total * 1.1) AS total,
-- 	   COUNT(DISTINCT client_id) AS total_clients, COUNT(*) AS total_records
-- FROM invoices WHERE invoice_date > '2019-07-01';
-- SELECT 'Frist half of 2019' AS date_range, SUM(invoice_total) AS total_sales, SUM(payment_total) AS total_payment, SUM(invoice_total - payment_total) AS what_we_expect 
-- FROM invoices WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'
-- UNION
-- SELECT 'Second half of 2019' AS date_range, SUM(invoice_total) AS total_sales, SUM(payment_total) AS total_payment, SUM(invoice_total - payment_total) AS what_we_expect 
-- FROM invoices WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31'
-- UNION
-- SELECT 'Total' AS date_range, SUM(invoice_total) AS total_sales, SUM(payment_total) AS total_payment, SUM(invoice_total - payment_total) AS what_we_expect 
-- FROM invoices WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-31';

-- SELECT client_id, SUM(invoice_total) AS total_sales FROM invoices WHERE invoice_date >= '2019-07-01'
-- GROUP BY client_id ORDER BY total_sales DESC;
-- SELECT state, city, SUM(invoice_total) AS total_sales FROM invoices
-- JOIN clients USING(client_id) GROUP BY state, city;
-- SELECT date, name AS payment_method, SUM(amount) AS total_payment FROM payments p 
-- JOIN payment_methods pm ON p.payment_method = pm.payment_method_id GROUP BY date, payment_method ORDER BY date;

-- SELECT client_id, SUM(invoice_total) AS total_sales, COUNT(*) AS num_of_invoices FROM invoices 
-- GROUP BY client_id HAVING total_sales > 500 AND num_of_invoices > 5;
-- USE sql_store;
-- SELECT customer_id, first_name, last_name, SUM(quantity * unit_price) AS total_payment FROM customers c 
-- JOIN orders o USING(customer_id) JOIN order_items oi USING(order_id) WHERE state = 'VA'
-- GROUP BY customer_id HAVING total_payment > 100;

-- SELECT state, city, SUM(invoice_total) AS total_sales FROM invoices i 
-- JOIN clients c USING(client_id)
-- GROUP BY state, city WITH ROLLUP; 
-- SELECT pm.name AS payment_method, SUM(amount) FROM payments p 
-- JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
-- GROUP BY pm.name WITH ROLLUP;
