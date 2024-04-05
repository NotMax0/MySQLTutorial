USE sql_invoicing;

DROP TABLE IF EXISTS payments_audit;

CREATE TABLE payments_audit (
	client_id INT NOT NULL,
    date DATE NOT NULL,
    amount DECIMAL(9, 2) NOT NULL,
    action_type VARCHAR(50) NOT NULL,
    action_date DATETIME NOT NULL
);