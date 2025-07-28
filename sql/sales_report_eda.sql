SELECT *
FROM
    public.gae_mock_data
LIMIT 100;

SELECT
    --     dt,
    COUNT(dt),
    COUNT(DISTINCT client_id) AS n_clients,
    COUNT(DISTINCT country)   AS n_countries,
    AVG(orders)               AS avg_orders,
    SUM(orders)               AS sum_orders,
    MIN(orders)               AS min_orders,
    MAX(orders)               AS max_orders,
    AVG(value)                AS avg_value,
    SUM(value)                AS sum_value,
    MIN(value)                AS min_value,
    MAX(value)                AS max_value
FROM
    public.gae_mock_data
-- GROUP BY
--     1
;

-- что если где-то NULL???

SELECT
    COUNT(value),
    COUNT(*)
FROM
    (
        SELECT
            999 AS value
        UNION ALL
        SELECT
            NULL
    ) t
;

SELECT *
FROM
    public.gae_mock_data
WHERE
     dt IS NULL
  OR orders IS NULL
  OR value IS NULL
  OR client_id IS NULL
  OR country IS NULL
;

SELECT
    client_id
FROM
    public.gae_mock_data
WHERE
    dt = (
        SELECT
            MAX(dt)
        FROM
            public.gae_mock_data
    )
GROUP BY
    1
HAVING
    COUNT(client_id) > 1;

SELECT *
FROM
    public.gae_mock_data
WHERE
    client_id = '383';
