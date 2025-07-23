CREATE OR REPLACE VIEW public.v_data_dashboard AS
WITH
    base AS (
        SELECT
            dt,
            client_id,
            country,
            SUM(orders) AS orders,
            SUM(value)  AS values
        FROM
            public.gae_mock_data
        WHERE
            dt BETWEEN CURRENT_DATE - 10 AND CURRENT_DATE - 1
        GROUP BY
            1, 2, 3
    ),
    countries AS (
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
    values,
    DENSE_RANK() OVER (PARTITION BY dt ORDER BY values DESC ) AS rank,
    values > AVG(values) OVER (PARTITION BY dt)               AS high_avg_values_flg
FROM
    base
WHERE
    country IN (
        SELECT
            country
        FROM
            countries
    );