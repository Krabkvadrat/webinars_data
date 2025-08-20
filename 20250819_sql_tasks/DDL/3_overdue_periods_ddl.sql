CREATE TABLE overdue_periods (
  client_id INT NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL
);

-- Клиент 101: три периода, второй начинается до закрытия первого
INSERT INTO overdue_periods (client_id, start_date, end_date) VALUES
(101, '2025-01-07', '2025-01-15'),
(101, '2025-01-14', '2025-01-20'),
(101, '2025-02-04', '2025-02-10');

-- Клиент 202: периоды «стыкуются» вплотную
INSERT INTO overdue_periods (client_id, start_date, end_date) VALUES
(202, '2025-03-01', '2025-03-05'),
(202, '2025-03-06', '2025-03-08');  -- соседствует → можно считать одним островом 1–8 мар

-- Клиент 303: разрозненные долги, не сливаются
INSERT INTO overdue_periods (client_id, start_date, end_date) VALUES
(303, '2025-04-01', '2025-04-02'),
(303, '2025-04-10', '2025-04-15');
