
-- DELIMITER $$
-- CREATE PROCEDURE get_clients()
-- BEGIN
-- 	SELECT * FROM clients;
-- END $$
-- CREATE PROCEDURE get_invoices_with_balance()
-- BEGIN
-- 	SELECT * FROM invoices_with_balance;
-- END $$
-- CREATE PROCEDURE get_invoices_with_balance()
-- BEGIN
-- 	SELECT * FROM invoices WHERE invoice_total - payment_total > 0;
-- END $$
-- DELIMITER ;

-- CALL get_clients_by_state('CA');
-- CALL get_invoices_by_client(5);

-- CALL get_clients_by_state(NULL);
-- CALL get_payments(5, NULL);

-- CALL make_payment(4, -100, '2019-01-01'); 
-- CALL make_payment(4, 100, '2019-01-01');

-- SET @invoices_count = 0;
-- SET @invoices_total = 0;
-- CALL get_unpaid_invoices_for_client(3, @invoices_count, @invoices_total);
-- SELECT @invoices_count, @invoices_total;

-- SET @invoices_count = 0;
-- CALL get_risk_factor();

-- SELECT client_id, name, get_risk_factor_for_client(client_id) AS risk_factor FROM clients;

