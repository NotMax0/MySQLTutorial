
-- SELECT * FROM products WHERE unit_price > (SELECT unit_price FROM products WHERE product_id = 3);
-- USE sql_hr;
-- SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

-- USE sql_store;
-- SELECT * FROM products WHERE product_id NOT IN (SELECT DISTINCT product_id FROM order_items);
-- USE sql_invoicing;
-- SELECT * FROM clients WHERE client_id NOT IN (SELECT DISTINCT client_id FROM invoices);

-- SELECT * FROM clients
-- LEFT JOIN invoices USING (client_id) WHERE invoice_id IS NULL;
-- USE sql_store;
-- SELECT DISTINCT c.customer_id, c.first_name, c.last_name FROM order_items oi
-- JOIN orders o USING (order_id) 
-- JOIN customers c USING (customer_id) WHERE product_id = 3;
-- SELECT customer_id, first_name, last_name FROM customers WHERE customer_id IN (
-- SELECT customer_id FROM orders WHERE order_id IN (SELECT order_id FROM order_items WHERE product_id = 3));
-- SELECT customer_id, first_name, last_name FROM customers WHERE customer_id IN (
-- SELECT o.customer_id FROM order_items oi JOIN orders o USING (order_id) WHERE product_id = 3);

-- SELECT * FROM invoices WHERE invoice_total > ALL (SELECT invoice_total FROM invoices WHERE client_id = 3);

-- SELECT * FROM clients WHERE client_id = ANY (SELECT client_id FROM invoices GROUP BY client_id HAVING COUNT(*) >= 2);

-- USE sql_hr;
-- SELECT * FROM employees e WHERE salary > (SELECT AVG(salary) FROM employees WHERE office_id = e.office_id);
-- USE sql_invoicing;
-- SELECT * FROM invoices i WHERE invoice_total > (SELECT AVG(invoice_total) FROM invoices WHERE client_id = i.client_id);

-- SELECT * FROM clients c WHERE EXISTS (SELECT * FROM invoices WHERE client_id = c.client_id);
-- USE sql_store;
-- SELECT * FROM products p WHERE NOT EXISTS (SELECT * FROM order_items WHERE product_id = p.product_id);

-- SELECT invoice_id, invoice_total, (SELECT AVG(invoice_total) FROM invoices) AS invoice_average,
-- 	   invoice_total - (SELECT invoice_average) AS difference FROM invoices;
-- my_soultion
-- SELECT *, total_sales - average AS difference FROM (
-- SELECT c.client_id, name, SUM(invoice_total) AS total_sales,
-- 	   (SELECT AVG(invoice_total) FROM invoices) AS average 
--        FROM clients c
-- LEFT JOIN invoices i USING(client_id) GROUP BY client_id
-- ) AS t;
-- -- answer
-- SELECT DISTINCT c.client_id, name, (SELECT SUM(invoice_total) FROM invoices WHERE client_id = c.client_id) AS total_sales,
-- 	   (SELECT AVG(invoice_total) FROM invoices) AS average, (SELECT total_sales - average) AS difference
-- FROM clients c