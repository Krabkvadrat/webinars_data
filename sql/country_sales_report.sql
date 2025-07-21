CREATE OR REPLACE VIEW public.v_gae_mock_data AS
WITH
    base AS (
        SELECT
            dt,
            client_id,
            country,
            SUM(orders) AS orders,
            SUM(value)  AS value
        FROM
            public.gae_mock_data
        WHERE
            dt BETWEEN CURRENT_DATE - 2 AND CURRENT_DATE - 1
        GROUP BY
            1, 2, 3
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
    DENSE_RANK() OVER (PARTITION BY dt ORDER BY value DESC) AS rnk,
    value > AVG(value) OVER (PARTITION BY dt, country)      AS high_avg_check_flg
FROM
    base
WHERE
    country IN (
        SELECT
            country
        FROM
            country_filter
    )
ORDER BY
    1, 3;