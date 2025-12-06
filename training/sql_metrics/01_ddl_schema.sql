-- ================================================================
-- СХЕМА БАЗЫ ДАННЫХ ИНТЕРНЕТ-МАГАЗИНА ДЛЯ МАРКЕТИНГОВЫХ МЕТРИК
-- ================================================================


-- Удаляем таблицы если существуют (для чистого пересоздания)
DROP TABLE IF EXISTS order_items CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS user_sessions CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS campaigns CASCADE;
DROP TABLE IF EXISTS products CASCADE;

-- ================================================================
-- ТАБЛИЦА ТОВАРОВ
-- ================================================================
CREATE TABLE products
(
    product_id   serial PRIMARY KEY,
    product_name varchar(255)   NOT NULL,
    category     varchar(100)   NOT NULL,
    price        decimal(10, 2) NOT NULL,
    cost         decimal(10, 2) NOT NULL,
    created_at   timestamp DEFAULT CURRENT_TIMESTAMP
);

-- ================================================================
-- ТАБЛИЦА КАМПАНИЙ 
-- ================================================================
CREATE TABLE campaigns
(
    campaign_id   serial PRIMARY KEY,
    campaign_name varchar(255) NOT NULL,
    campaign_type varchar(50)  NOT NULL,
    start_date    date         NOT NULL,
    end_date      date,
    spent         decimal(12, 2) DEFAULT 0, -- Фактические затраты
    impressions   integer        DEFAULT 0,
    clicks        integer        DEFAULT 0,
    created_at    timestamp      DEFAULT CURRENT_TIMESTAMP
);

-- ================================================================
-- ТАБЛИЦА ПОЛЬЗОВАТЕЛЕЙ
-- ================================================================
CREATE TABLE users
(
    user_id           serial PRIMARY KEY,
    email             varchar(255) UNIQUE NOT NULL,
    registration_date date                NOT NULL,
    campaign_id       integer REFERENCES campaigns (campaign_id), -- NULL = органический трафик
    created_at        timestamp DEFAULT CURRENT_TIMESTAMP
);

-- ================================================================
-- ТАБЛИЦА ПОЛЬЗОВАТЕЛЬСКИХ СЕССИЙ
-- ================================================================
CREATE TABLE user_sessions
(
    session_id               serial PRIMARY KEY,
    user_id                  integer REFERENCES users (user_id),
    session_start            timestamp NOT NULL,
    session_end              timestamp,
    session_date             date      NOT NULL,
    pages_viewed             integer   DEFAULT 1,
    session_duration_minutes integer,
    device_type              varchar(50), -- mobile, desktop, tablet
    created_at               timestamp DEFAULT CURRENT_TIMESTAMP
);

-- ================================================================
-- ТАБЛИЦА ЗАКАЗОВ
-- ================================================================
CREATE TABLE orders
(
    order_id        serial PRIMARY KEY,
    user_id         integer REFERENCES users (user_id),
    order_date      date           NOT NULL,
    order_timestamp timestamp      NOT NULL,
    total_amount    decimal(12, 2) NOT NULL,
    status          varchar(50) DEFAULT 'completed', -- completed, cancelled, refunded
    created_at      timestamp   DEFAULT CURRENT_TIMESTAMP
);

-- ================================================================
-- ТАБЛИЦА ПОЗИЦИЙ ЗАКАЗОВ
-- ================================================================
CREATE TABLE order_items
(
    order_item_id serial PRIMARY KEY,
    order_id      integer REFERENCES orders (order_id),
    product_id    integer REFERENCES products (product_id),
    quantity      integer        NOT NULL,
    unit_price    decimal(10, 2) NOT NULL,
    total_price   decimal(12, 2) NOT NULL,
    created_at    timestamp DEFAULT CURRENT_TIMESTAMP
);
