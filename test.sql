
WITH
    base AS (
        SELECT
            dt::date    AS dt,
            client_id,
            country,
            SUM(orders) AS orders,
            SUM(value)  AS value
        FROM
            test.gae_mock_data
        GROUP BY 1, 2, 3
    ),
    country_filter AS (
        SELECT
            country
        FROM
            base
        GROUP BY 1
        HAVING
            COUNT(DISTINCT client_id) > 10
    )
SELECT
    dt,
    client_id,
    country,
    orders,
    value,
    AVG(orders) OVER (PARTITION BY country)          AS avg_orders,
    orders - AVG(orders) OVER (PARTITION BY country) AS orders_diff_from_avg
FROM
    base
WHERE
      dt BETWEEN CURRENT_DATE - 1 AND CURRENT_DATE
  AND country IN (
    SELECT
        country
    FROM
        country_filter
);
