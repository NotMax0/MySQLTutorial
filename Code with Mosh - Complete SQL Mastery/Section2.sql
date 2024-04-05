
-- SELECT order_id, o.customer_id, first_name, last_name FROM orders o INNER JOIN customers c ON o.customer_id = c.customer_id;
-- SELECT order_id, oi.product_id, name, quantity, oi.unit_price FROM order_items oi JOIN products p ON oi.product_id = p.product_id;

-- USE sql_store;
-- SELECT * FROM order_items oi JOIN sql_inventory.products p ON oi.product_id = p.product_id;

-- USE sql_hr;
-- SELECT e.employee_id, e.first_name, m.first_name AS manager FROM employees e JOIN employees m ON e.reports_to = m.employee_id;

-- USE sql_store;
-- SELECT o.order_id, o.order_date, c.first_name, c.last_name, os.name AS status FROM orders o 
-- JOIN customers c ON o.customer_id = c.customer_id 
-- JOIN order_statuses os ON o.status = os.order_status_id;

-- USE sql_invoicing;
-- SELECT p.date, p.invoice_id, p.amount, c.name, pm.name AS payment_method FROM payments p 
-- JOIN clients c ON p.client_id = c.client_id 
-- JOIN payment_methods pm ON p.payment_method = pm.payment_method_id;

-- SELECT * FROM order_items oi JOIN order_item_notes oin ON oi.order_id = oin.order_id AND oi.product_id = oin.product_id;

-- SELECT * FROM orders o, customers c WHERE o.customer_id = c.customer_id;
-- SELECT * FROM orders o, customers c; -- This is a Cross X Join with conditional 

-- SELECT c.customer_id, c.first_name, o.order_id FROM orders o RIGHT JOIN customers c ON o.customer_id = c.customer_id ORDER BY c.customer_id;
-- SELECT p.product_id, name, quantity FROM products p LEFT JOIN order_items oi ON p.product_id = oi.product_id ORDER BY p.product_id;

-- SELECT c.customer_id, c.first_name, o.order_id, sh.shipper_id FROM customers c 
-- LEFT JOIN orders o ON c.customer_id = o.customer_id 
-- LEFT JOIN shippers sh ON sh.shipper_id = o.shipper_id;
-- SELECT o.order_date, o.order_id, c.first_name AS customer, sh.name AS shipper, os.name AS status FROM orders o
-- JOIN customers c ON c.customer_id = o.customer_id -- orders is subset of customers/ every order has a customer assigned
-- LEFT JOIN shippers sh ON sh.shipper_id = o.shipper_id
-- JOIN order_statuses os ON os.order_status_id = o.status; -- Also Every order Has a Status

-- USE sql_hr;
-- SELECT e.employee_id, e.first_name, m.first_name AS manager FROM employees e LEFT JOIN employees m ON e.reports_to = m.employee_id;

-- SELECT o.order_id, c.first_name, sh.name AS shipper FROM orders o 
-- JOIN customers c USING (customer_id)
-- LEFT JOIN shippers sh USING (shipper_id);
-- SELECT * FROM order_items oi
-- JOIN order_item_notes oin USING (order_id, product_id);
-- USE sql_invoicing;
-- SELECT p.date, c.name AS client, p.amount, pm.name AS payment_method FROM payments p
-- JOIN clients c USING (client_id)
-- JOIN payment_methods pm ON p.payment_method = pm.payment_method_id;

-- SELECT o.order_id, c.first_name FROM orders o NATURAL JOIN customers c;

-- SELECT c.first_name AS customer, p.name AS product FROM customers c
-- CROSS JOIN products p ORDER BY c.first_name;
-- SELECT c.first_name AS customer, p.name AS product FROM customers c, products p 
-- ORDER BY c.first_name;

-- SELECT sh.name AS shipper, p.name AS product FROM products p
-- CROSS JOIN shippers sh ORDER BY sh.name;
-- SELECT sh.name AS shipper, p.name AS product FROM procduts p, shippers sh ORDER BY sh.name;

-- SELECT order_id, order_date, 'Active' AS status FROM orders WHERE order_date >= '2019-01-01'
-- UNION
-- SELECT order_id, order_date, 'Archived' AS status FROM orders WHERE order_date < '2019-01-01';
-- SELECT first_name AS full_name FROM customers
-- UNION
-- SELECT shipper_id FROM shippers; -- combine anything unless the number of columns aren't equal
-- SELECT customer_id, first_name, points, 'Bronze' AS type FROM customers WHERE points < 2000
-- UNION
-- SELECT customer_id, first_name, points, 'Silver' AS type FROM customers WHERE points BETWEEN 2000 AND 3000
-- UNION
-- SELECT customer_id, first_name, points, 'Gold' AS type FROM customers WHERE points > 3000 ORDER BY first_name;