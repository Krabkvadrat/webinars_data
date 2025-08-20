-- 1. Задача: найти вторую по величине задачу в отделе вторая зп
WITH
    base AS (
        SELECT
            first_name,
            last_name,
            department,
            salary,
            DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS d_rnk,
            RANK() OVER (PARTITION BY department ORDER BY salary DESC)       AS rnk
        FROM
            employees
    )
SELECT *
FROM
    base
WHERE
    d_rnk = 2
;


-- 2. Задача: найти пользователей, которые пользовались нашим сервисом 5 и более дней подряд

WITH
    base AS (
        SELECT
            user_id,
            login_ts::date AS login_date
        FROM
            user_logins
        GROUP BY 1, 2
    ),
    grp AS (
        SELECT
            user_id,
            login_date,
            ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY login_date)                   AS rn,
            login_date - ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY login_date)::int AS grp
        FROM
            base
    )
SELECT
    user_id,
    COUNT(login_date) AS logins
FROM
    grp
GROUP BY
    user_id, grp
HAVING
    COUNT(login_date) >= 5
;


-- 3. Задача: определить периоды, когда клиент был должен банку
--  посчитать количество дней нахождения клиентов в просрочке   (задача на острова)
-- каждая запись в базе, это информация о начале и конце периода когда клиент должен был заплатить
-- новая задолженность может начаться до того как была закрыта предыдущая
WITH
    base AS (
        SELECT *,
               LAG(end_date) OVER (PARTITION BY client_id ORDER BY start_date) AS prev_end_date
        FROM
            overdue_periods
    ),
    islands AS (
        SELECT *,
               CASE
                   WHEN prev_end_date IS NULL
                       OR start_date > prev_end_date THEN 1
                   ELSE 0
                   END AS new_island_start
        FROM
            base
    ),
    grp_cte AS (
        SELECT *,
               SUM(new_island_start) OVER (PARTITION BY client_id ORDER BY start_date) AS grp
        FROM
            islands
    ),
    final AS (
        SELECT
            client_id,
            MIN(start_date) AS start_date,
            MAX(end_date)   AS end_date
        FROM
            grp_cte
        GROUP BY
            client_id, grp
    )
SELECT
    AVG(end_date - start_date)
FROM
    final;


-- 4. сравнить месяц к месяцу как изменились метрики рекламной кампании

SELECT
    cm.client_id,
    cm.campaign_id,
    cm.month_start                   AS curr_month,
    cm.impressions                   AS curr_imp,
    cm1.impressions                  AS prev_imp,
    cm.impressions - cm1.impressions AS delta_imp
FROM
    campaign_monthly cm
        LEFT JOIN campaign_monthly cm1
                  ON cm1.client_id = cm.client_id
                      AND cm1.campaign_id = cm.campaign_id
                      AND cm1.month_start + INTERVAL '1 month' = cm.month_start
;


-- 5. реализовать мониторинг аномальных значений метрики
-- например, когда значение метрики в определенный момент времени сильно больше среднего значения метрики за предыдущие 60 дней
WITH
    base AS (
        SELECT *,
               AVG(value) OVER (PARTITION BY metric_id ORDER BY ts
                   ROWS BETWEEN 60 PRECEDING AND 1 PRECEDING ) AS moving_avg
        -- ROWS BETWEEN UNBOUNDED PRECEDING AND 1 FOLLOWING
        -- ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        FROM
            metrics_minute
    ),
    anomaly AS (
        SELECT
            metric_id,
            ts,
            value,
            CASE WHEN (value - moving_avg) / moving_avg > 0.5 THEN 1 ELSE 0 END AS anomaly_flg
        FROM
            base
    )
SELECT *
FROM
    anomaly
WHERE
    anomaly_flg = 1
;


-- 6. найти сколько потребуется каждой детали для производства автомобиля, используя реккурсию

WITH RECURSIVE r AS (
        SELECT
            parent,
            child,
            qty,
            qty AS total_qty,
            1   AS level
        FROM
            bom
        WHERE
            parent = 'Автомобиль'

        UNION ALL

        SELECT
            b.parent,
            b.child,
            b.qty,
            b.qty * r.total_qty AS total_qty,
            r.level + 1         AS level
        FROM
            bom b
                INNER JOIN r
                           ON r.child = b.parent
    )
SELECT *
FROM
    r;
