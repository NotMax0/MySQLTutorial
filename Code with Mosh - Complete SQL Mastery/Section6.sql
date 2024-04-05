-- USE sql_store;
-- SELECT * FROM orders WHERE order_date >= CURDATE();
-- SELECT * FROM orders WHERE YEAR(order_date) = YEAR(NOW());

-- SELECT DATE_FORMAT(NOW(), '%M %d %Y');
-- SELECT TIME_FORMAT(NOW(), '%H:%i %p');

-- SELECT DATE_ADD(NOW(), INTERVAL -1 YEAR);
-- SELECT DATE_SUB(NOW(), INTERVAL 2 YEAR);
-- SELECT TIME_TO_SEC('09:00') - TIME_TO_SEC('08:00');
-- SELECT ROUND(DATEDIFF(NOW(), '2004-01-01')/365) AS my_age;

-- SELECT order_id, IFNULL(shipper_id, 'Not Assigned') AS shipper FROM orders;
-- SELECT order_id, COALESCE(shipper_id, comments, 'Note Assigned') AS shipper FROM orders;
-- SELECT CONCAT(first_name, ' ', last_name) AS customer, COALESCE(phone, 'Unkown') AS phone FROM customers;

-- SELECT order_id, order_date, IF(YEAR(order_date) = YEAR(NOW()), 'Active', 'Archived') AS category FROM orders;
-- my_solution
-- SELECT product_id, name, COUNT(*) AS orders, IF(COUNT(*) >= 2, 'Many times', 'Once') AS frequency FROM order_items oi
-- JOIN products USING (product_id) GROUP BY product_id;
-- THE SOLUTION
-- SELECT product_id, name, COUNT(*) AS orders, IF(COUNT(*) > 1, 'Many times', 'Once') AS frequency FROM products
-- JOIN order_items USING (product_id) GROUP BY product_id, name;

-- SELECT order_id,
-- 	CASE
-- 		WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
--         WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'Last year'
--         WHEN YEAR(order_date) < YEAR(NOW()) THEN 'Archived'
--         ELSE 'Future'
-- 	END AS category
-- FROM orders;
-- SELECT CONCAT(first_name, " ", last_name) AS customer, points,
-- 	CASE
-- 		WHEN points > 3000 THEN 'Gold'
--         WHEN points >= 2000 THEN 'Silver'
--         ELSE 'Bronze'
-- 	END AS category
-- FROM customers
-- ORDER BY points DESC;