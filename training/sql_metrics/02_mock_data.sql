-- ================================================================
-- ДАННЫЕ ДЛЯ МАРКЕТИНГОВЫХ МЕТРИК ИНТЕРНЕТ-МАГАЗИНА
-- ================================================================

-- ================================================================
-- ВСТАВКА ДАННЫХ ТОВАРОВ
-- ================================================================
INSERT INTO
    products (
    product_name, category, price, cost
)
VALUES
    -- Electronics (12 товаров)
    (
        'iPhone 15 Pro', 'Electronics', 999.00, 600.00
    ),
    (
        'iPhone 15', 'Electronics', 799.00, 480.00
    ),
    (
        'Samsung Galaxy S24', 'Electronics', 899.00, 550.00
    ),
    (
        'Samsung Galaxy A54', 'Electronics', 449.00, 270.00
    ),
    (
        'MacBook Pro 14"', 'Electronics', 1999.00, 1200.00
    ),
    (
        'MacBook Air M2', 'Electronics', 1199.00, 720.00
    ),
    (
        'Dell XPS 13', 'Electronics', 1299.00, 800.00
    ),
    (
        'iPad Air', 'Electronics', 599.00, 350.00
    ),
    (
        'iPad Mini', 'Electronics', 499.00, 300.00
    ),
    (
        'AirPods Pro', 'Electronics', 249.00, 150.00
    ),
    (
        'Sony WH-1000XM5', 'Electronics', 399.00, 240.00
    ),
    (
        'Apple Watch Series 9', 'Electronics', 399.00, 240.00
    ),

    -- Clothing (10 товаров)
    (
        'Nike Air Max 270', 'Clothing', 149.99, 75.00
    ),
    (
        'Nike Air Force 1', 'Clothing', 109.99, 55.00
    ),
    (
        'Adidas Ultraboost 22', 'Clothing', 179.99, 90.00
    ),
    (
        'Adidas Stan Smith', 'Clothing', 89.99, 45.00
    ),
    (
        'Levis 501 Jeans', 'Clothing', 89.99, 45.00
    ),
    (
        'Levis 511 Slim', 'Clothing', 79.99, 40.00
    ),
    (
        'The North Face Jacket', 'Clothing', 299.99, 150.00
    ),
    (
        'Patagonia Fleece', 'Clothing', 199.99, 100.00
    ),
    (
        'Columbia Rain Jacket', 'Clothing', 129.99, 65.00
    ),
    (
        'Under Armour Hoodie', 'Clothing', 69.99, 35.00
    ),

    -- Home & Kitchen (8 товаров)
    (
        'Instant Pot Duo 7-in-1', 'Home & Kitchen', 79.99, 40.00
    ),
    (
        'Ninja Air Fryer', 'Home & Kitchen', 119.99, 60.00
    ),
    (
        'Dyson V15 Vacuum', 'Home & Kitchen', 749.99, 400.00
    ),
    (
        'iRobot Roomba i7', 'Home & Kitchen', 599.99, 320.00
    ),
    (
        'KitchenAid Mixer', 'Home & Kitchen', 379.99, 200.00
    ),
    (
        'Nespresso VertuoPlus', 'Home & Kitchen', 179.99, 90.00
    ),
    (
        'Keurig K-Elite', 'Home & Kitchen', 149.99, 75.00
    ),
    (
        'Vitamix Blender', 'Home & Kitchen', 449.99, 225.00
    ),

    -- Health & Fitness (6 товаров)
    (
        'Fitbit Charge 5', 'Health & Fitness', 149.95, 75.00
    ),
    (
        'Garmin Forerunner 255', 'Health & Fitness', 349.99, 175.00
    ),
    (
        'Peloton Guide', 'Health & Fitness', 295.00, 150.00
    ),
    (
        'Theragun Mini', 'Health & Fitness', 199.00, 100.00
    ),
    (
        'Yoga Mat Premium', 'Health & Fitness', 49.99, 25.00
    ),
    (
        'Protein Powder 5lb', 'Health & Fitness', 59.99, 30.00
    ),

    -- Books & Media (4 товара)
    (
        'Kindle Paperwhite', 'Books & Media', 139.99, 70.00
    ),
    (
        'Audible Subscription', 'Books & Media', 14.95, 5.00
    ),
    (
        'Spotify Premium Year', 'Books & Media', 99.99, 30.00
    ),
    (
        'Adobe Creative Cloud', 'Books & Media', 599.99, 180.00
    );

-- ================================================================
-- ВСТАВКА ДАННЫХ КАМПАНИЙ
-- ================================================================


INSERT INTO
    campaigns (
    campaign_name, campaign_type, start_date, end_date, spent, impressions, clicks
)
VALUES
    (
        'Yandex Direct Бренд', 'search', '2024-01-09', '2024-06-30', 142000.00, 285000, 14200
    ),
    (
        'Yandex Direct Категории', 'search', '2024-01-15', '2024-06-30', 98000.00, 210000, 9500
    ),
    (
        'VK Таргет Зимняя распродажа', 'social', '2024-01-10', '2024-02-14', 48000.00, 260000, 7800
    ),
    (
        'VK Ретаргетинг Q1', 'social', '2024-02-20', '2024-03-31', 35500.00, 180000, 6300
    ),
    (
        'VK Таргет Весна', 'social', '2024-04-08', '2024-05-19', 42000.00, 210000, 6720
    ),
    (
        'VK Лето Look-alike', 'social', '2024-06-03', '2024-06-30', 28500.00, 155000, 4650
    ),
    (
        '23 февраля Подарки', 'display', '2024-02-15', '2024-02-23', 18500.00, 290000, 4350
    ),
    (
        '8 марта Акция', 'display', '2024-03-01', '2024-03-08', 22000.00, 340000, 5100
    ),
    (
        'MyTarget Тест Электроника', 'display', '2024-01-22', '2024-02-11', 12800.00, 195000, 1950
    ),
    (
        'MyTarget Ретаргетинг', 'display', '2024-03-18', '2024-05-12', 31500.00, 480000, 5280
    ),
    (
        'Telegram Ads Тест', 'social', '2024-02-05', '2024-02-25', 15000.00, 85000, 2550
    ),
    (
        'Telegram Каналы Техника', 'social', '2024-04-22', '2024-05-31', 38000.00, 195000, 6240
    ),
    (
        'Email Новогодние скидки', 'email', '2024-01-08', '2024-01-14', 8200.00, 42000, 5880
    ),
    (
        'Email День влюблённых', 'email', '2024-02-10', '2024-02-14', 10100.00, 38000, 4940
    ),
    (
        'Email Весенняя коллекция', 'email', '2024-03-25', '2024-03-31', 10800.00, 45000, 5850
    ),
    (
        'Email Летний Sale', 'email', '2024-06-10', '2024-06-16', 9500.00, 52000, 6760
    );

-- ================================================================
-- ГЕНЕРАЦИЯ ПОЛЬЗОВАТЕЛЕЙ НА ОСНОВЕ КЛИКОВ КАМПАНИЙ
-- ================================================================

-- Шаг 1: Генерируем пользователей из платных кампаний
WITH
    campaign_conversions AS (
        SELECT
            campaign_id,
            campaign_type,
            start_date,
            end_date,
            clicks,
            CASE campaign_type
                WHEN 'search' THEN 0.01
                WHEN 'email' THEN 0.007
                WHEN 'social' THEN 0.008
                WHEN 'display' THEN 0.006
                END AS conv_rate
        FROM
            campaigns
    ),
    users_to_generate AS (
        SELECT
            campaign_id,
            start_date,
            end_date,
            GREATEST(1, ROUND(clicks * conv_rate)::integer) AS num_users
        FROM
            campaign_conversions
    ),
    expanded_users AS (
        SELECT
            u.campaign_id,
            u.start_date,
            u.end_date,
            gs AS user_seq
        FROM
            users_to_generate u
                CROSS JOIN LATERAL GENERATE_SERIES(1, u.num_users) AS gs
    )
INSERT
INTO
    users (
    email, registration_date, campaign_id
)
SELECT
    'user' || LPAD(ROW_NUMBER() OVER ()::text, 4, '0') || '@example.com',
    start_date + FLOOR(RANDOM() * (end_date - start_date + 1))::integer,
    campaign_id
FROM
    expanded_users;

-- Шаг 2: Добавляем органический трафик
INSERT INTO
    users (
    email, registration_date, campaign_id
)
SELECT
    'organic' || LPAD(gs::text, 3, '0') || '@example.com',
    '2024-01-01'::date + FLOOR(RANDOM() * 182)::integer,
    NULL
FROM
    GENERATE_SERIES(1, (
        SELECT
            ROUND(COUNT(*) * 0.15)::integer
        FROM
            users
    )) AS gs;

-- ================================================================
-- ВСТАВКА ДАННЫХ ПОЛЬЗОВАТЕЛЬСКИХ СЕССИЙ
-- ================================================================


INSERT INTO
    user_sessions (
    user_id, session_start, session_end, session_date, pages_viewed, session_duration_minutes, device_type
)
SELECT
    user_id,
    session_start,
    session_start + (duration_minutes * INTERVAL '1 minute'),
    session_date,
    pages_viewed,
    duration_minutes,
    device_type
FROM
    (
        SELECT
            user_id,
            session_date,
            session_start,
            device_type,
            -- Длительность зависит от устройства
            CASE device_type
                WHEN 'mobile' THEN (FLOOR(RANDOM() * 45) + 1)::integer
                WHEN 'desktop' THEN (FLOOR(RANDOM() * 100) + 20)::integer
                ELSE (FLOOR(RANDOM() * 70) + 10)::integer
                END AS duration_minutes,
            -- Страниц на минуту тоже зависит от устройства
            CASE device_type
                WHEN 'mobile' THEN GREATEST(1, (FLOOR(RANDOM() * 5) + 1)::integer)
                WHEN 'desktop' THEN GREATEST(2, (FLOOR(RANDOM() * 15) + 3)::integer)
                ELSE GREATEST(1, (FLOOR(RANDOM() * 10) + 2)::integer)
                END AS pages_viewed
        FROM
            (
                SELECT
                    user_id,
                    session_date,
                    session_date + (
                                       CASE
                                           WHEN hour_rand < 0.03 THEN FLOOR(RANDOM() * 6) -- 0-5:   3% (ночь)
                                           WHEN hour_rand < 0.08 THEN FLOOR(RANDOM() * 3) + 6 -- 6-8:   5% (раннее утро)
                                           WHEN hour_rand < 0.20 THEN FLOOR(RANDOM() * 3) + 9 -- 9-11:  12% (утро)
                                           WHEN hour_rand < 0.40 THEN FLOOR(RANDOM() * 4) + 12 -- 12-15: 20% (день)
                                           WHEN hour_rand < 0.60
                                               THEN FLOOR(RANDOM() * 3) + 16 -- 16-18: 20% (после работы)
                                           WHEN hour_rand < 0.90
                                               THEN FLOOR(RANDOM() * 3) + 19 -- 19-21: 30% (вечер - ПИК)
                                           ELSE FLOOR(RANDOM() * 2) + 22 -- 22-23: 10% (поздний вечер)
                                           END
                                       ) * INTERVAL '1 hour' +
                    FLOOR(RANDOM() * 60) * INTERVAL '1 minute' AS session_start,
                    device_type
                FROM
                    (
                        SELECT
                            u.user_id,
                            dates.session_date,
                            RANDOM() AS hour_rand,
                            CASE
                                WHEN RANDOM() < 0.55 THEN 'mobile'
                                WHEN RANDOM() < 0.85 THEN 'desktop'
                                ELSE 'tablet'
                                END  AS device_type
                        FROM
                            users u
                                CROSS JOIN (
                                SELECT
                                    date_series::date AS session_date
                                FROM
                                    GENERATE_SERIES('2024-01-01'::date, '2024-06-30'::date,
                                                    '1 day'::interval) date_series
                            ) dates
                        WHERE
                              u.registration_date <= dates.session_date
                          AND RANDOM() <
                              CASE
                                  WHEN dates.session_date = u.registration_date THEN 1.0
                                  WHEN dates.session_date - u.registration_date <= 7 THEN 0.3
                                  WHEN dates.session_date - u.registration_date <= 30 THEN 0.1
                                  WHEN dates.session_date - u.registration_date <= 60 THEN 0.03
                                  ELSE 0.01
                                  END
                    ) raw_sessions
            ) base_sessions
    ) session_data;

-- ================================================================
-- ВСТАВКА ДАННЫХ ЗАКАЗОВ
-- ================================================================

INSERT INTO
    orders (
    user_id, order_date, order_timestamp, total_amount, status
)
SELECT
    s.user_id,
    s.session_date,
    -- Заказ происходит в случайный момент сессии (но не в самом начале)
    s.session_start +
    (s.session_duration_minutes * 0.3 + RANDOM() * s.session_duration_minutes * 0.6) * INTERVAL '1 minute',
    0, -- пересчитаем позже
    CASE
        WHEN RANDOM() < 0.92 THEN 'completed'
        WHEN RANDOM() < 0.97 THEN 'cancelled'
        ELSE 'refunded'
        END
FROM
    user_sessions s
WHERE
      RANDOM() < 0.12
  AND s.session_duration_minutes > 10;

-- ================================================================
-- ВСТАВКА ДАННЫХ ПОЗИЦИЙ ЗАКАЗОВ
-- ================================================================
WITH
    order_items_data AS (
        SELECT
            o.order_id,
            (FLOOR(RANDOM() * 40) + 1)::integer AS product_id,
            1                                   AS quantity
        FROM
            orders o
        UNION ALL
        SELECT
            o.order_id,
            (FLOOR(RANDOM() * 40) + 1)::integer,
            CASE WHEN RANDOM() < 0.7 THEN 1 ELSE 2 END
        FROM
            orders o
        WHERE
            RANDOM() < 0.50
        UNION ALL
        SELECT
            o.order_id,
            (FLOOR(RANDOM() * 40) + 1)::integer,
            1
        FROM
            orders o
        WHERE
            RANDOM() < 0.25
        UNION ALL
        SELECT
            o.order_id,
            (FLOOR(RANDOM() * 40) + 1)::integer,
            1
        FROM
            orders o
        WHERE
            RANDOM() < 0.10
    )
INSERT
INTO
    order_items (
    order_id, product_id, quantity, unit_price, total_price
)
SELECT
    oid.order_id,
    oid.product_id,
    oid.quantity,
    p.price,
    p.price * oid.quantity
FROM
    order_items_data oid
        JOIN products p
             ON p.product_id = oid.product_id;

-- Обновляем суммы заказов
UPDATE orders
SET
    total_amount = (
        SELECT
            COALESCE(SUM(total_price), 0)
        FROM
            order_items oi
        WHERE
            oi.order_id = orders.order_id
    );

-- Удаляем пустые заказы
DELETE
FROM
    orders
WHERE
     total_amount = 0
  OR total_amount IS NULL;

-- ================================================================
-- ЗАПРОСЫ ПРОВЕРКИ ДАННЫХ
-- ================================================================

SELECT
    'Users'  AS metric,
    COUNT(*) AS value
FROM
    users
UNION ALL
SELECT
    'Products',
    COUNT(*)
FROM
    products
UNION ALL
SELECT
    'Campaigns',
    COUNT(*)
FROM
    campaigns
UNION ALL
SELECT
    'Sessions',
    COUNT(*)
FROM
    user_sessions
UNION ALL
SELECT
    'Orders',
    COUNT(*)
FROM
    orders
UNION ALL
SELECT
    'Order Items',
    COUNT(*)
FROM
    order_items;

