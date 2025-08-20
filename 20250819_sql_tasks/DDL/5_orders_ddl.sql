CREATE TABLE metrics_minute (
  metric_id INT NOT NULL,
  ts        TIMESTAMP NOT NULL,
  value     NUMERIC(10,2) NOT NULL
);


INSERT INTO metrics_minute (metric_id, ts, value)
SELECT
  1 AS metric_id,
  ts,
  -- нормальное распределение вокруг 100 ± 10
  GREATEST(0, 100 + (random() * 20 - 10))::NUMERIC(10,2)
FROM generate_series(
  '2025-08-01 00:00:00'::timestamp,
  '2025-08-01 23:59:00'::timestamp,
  '1 minute'
) ts;

-- Добавим искусственные аномалии
UPDATE metrics_minute
SET value = 250
WHERE ts IN ('2025-08-01 03:15:00', '2025-08-01 12:45:00');

UPDATE metrics_minute
SET value = 40
WHERE ts IN ('2025-08-01 07:30:00', '2025-08-01 19:20:00');