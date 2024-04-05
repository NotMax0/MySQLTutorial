USE sql_store;

-- Section_1
-- SELECT last_name, first_name, points, (points + 10) * 100 AS discount_factor FROM customers;
-- SELECT DISTINCT state FROM customers;
-- SELECT name, unit_price, unit_price * 1.1 AS 'new price' FROM products;

-- SELECT * FROM customers WHERE state <> 'va';
-- SELECT * FROM orders WHERE order_date > '2019-01-01';

-- SELECT * FROM customers WHERE NOT (birth_date > '1990-01-01' OR points > 1000);
-- SELECT * FROM order_items WHERE order_id = 6 AND unit_price * quantity > 30;

-- SELECT * FROM customers WHERE NOT state IN ('VA', 'GA', 'FA');
-- SELECT * FROM products WHERE quantity_in_stock IN (49, 38, 72);

-- SELECT * FROM customers WHERE points BETWEEN 1000 AND 3000;
-- SELECT * FROM customers WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

-- SELECT * FROM customers WHERE last_name LIKE '___g%';
-- SELECT * FROM customers WHERE address LIKE '%trail%' OR address LIKE '%avenue%';
-- SELECT * FROM customers WHERE phone LIKE '%9';

-- SELECT * FROM customers WHERE last_name REGEXP 'field$|^mac|rose';
-- SELECT * FROM customers WHERE last_name REGEXP '[a-h]e[fly]';
-- SELECT * FROM customers WHERE first_name REGEXP 'elka|ambur';
-- SELECT * FROM customers WHERE last_name REGEXP 'ey$|on$';
-- SELECT * FROM customers WHERE last_name REGEXP '^my|se';
-- SELECT * FROM customers WHERE last_name REGEXP 'b[ru]';

-- SELECT * FROM customers WHERE phone IS NOT NULL;
-- SELECT * FROM orders WHERE shipped_date IS NULL;

-- SELECT first_name FROM customers ORDER BY state DESC, first_name;
-- SELECT first_name, 10 AS points FROM customers ORDER BY points, first_name;
-- SELECT first_name, last_name FROM customers ORDER BY 1, 2;
-- SELECT * FROM order_items WHERE order_id = 2 ORDER BY quantity * unit_price DESC;

-- SELECT * FROM customers LIMIT 6, 3;
-- SELECT * FROM customers ORDER BY points DESC LIMIT 3;
