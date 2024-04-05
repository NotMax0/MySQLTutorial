
-- INSERT INTO payments VALUES (DEFAULT, 5, 5, '2019-01-01', 10, 1);
-- DELETE FROM payments WHERE payment_id = 10;

-- SHOW TRIGGERS LIKE 'payments%'; -- trigger naming convention => table_timing_event;

-- INSERT INTO payments VALUES (DEFAULT, 5, 5, '2019-01-01', 10, 1);
-- DELETE FROM payments WHERE payment_id = 12;

-- SHOW VARIABLES LIKE 'event%';
-- SET GLOBAL event_schedular = ON;
-- SHOW EVENTS;

-- SHOW EVENTS LIKE 'yearly%';
-- ALTER EVENT yearly_delete_stale_audit_rows DISABLE;