
-- task3_queries.sql
-- Covers full Mini Guide: SELECT, WHERE, ORDER BY, GROUP BY, JOINS, SUBQUERIES, AGGREGATES, VIEWS, INDEXES

-----------------------------------------------------------
-- A. SELECT, WHERE, ORDER BY, GROUP BY
-----------------------------------------------------------

-- 1. Basic SELECT
SELECT * FROM ecommerce_dataset_500_rows LIMIT 20;

-- 2. WHERE filter
SELECT * FROM ecommerce_dataset_500_rows WHERE country = 'India';

-- 3. ORDER BY
SELECT order_id, total_price
FROM ecommerce_dataset_500_rows
ORDER BY total_price DESC;

-- 4. GROUP BY (revenue by country)
SELECT country, SUM(total_price) AS total_revenue
FROM ecommerce_dataset_500_rows
GROUP BY country
ORDER BY total_revenue DESC;

-----------------------------------------------------------
-- B. JOINS (INNER, LEFT, RIGHT)
-----------------------------------------------------------

-- INNER JOIN 
SELECT e.order_id, e.product_id, p.product_name, e.total_price
FROM ecommerce_dataset_500_rows e
INNER JOIN products p
      ON e.product_id = p.product_id;


-- LEFT JOIN
SELECT 
    e.product_id,
    p.product_name,
    COUNT(*) AS total_orders,
    SUM(e.total_price) AS total_sales
FROM ecommerce_dataset_500_rows e
LEFT JOIN products p
    ON e.product_id = p.product_id
GROUP BY e.product_id, p.product_name;

-- RIGHT JOIN
SELECT
    e.order_id,
    e.product_id AS ordered_product,
    p.product_name,
    e.total_price
FROM ecommerce_dataset_500_rows e
RIGHT JOIN products p
    ON e.product_id = p.product_id
ORDER BY p.product_id;


-----------------------------------------------------------
-- C. SUBQUERIES
-----------------------------------------------------------

-- Orders where total > average order value
SELECT order_id, total_price
FROM ecommerce_dataset_500_rows
WHERE total_price > (SELECT AVG(total_price) FROM ecommerce_dataset_500_rows);

-- Top 5 countries by revenue using subquery
SELECT country, total_revenue
FROM (
    SELECT country, SUM(total_price) AS total_revenue
    FROM ecommerce_dataset_500_rows
    GROUP BY country
) AS t
ORDER BY total_revenue DESC
LIMIT 5;


-- Users with above-average spending
SELECT user_id, user_total
FROM (
    SELECT user_id, SUM(total_price) AS user_total
    FROM ecommerce_dataset_500_rows
    GROUP BY user_id
) u
WHERE user_total > (SELECT AVG(total_price) FROM ecommerce_dataset_500_rows);

-----------------------------------------------------------
-- D. AGGREGATE FUNCTIONS
-----------------------------------------------------------

-- Total revenue
SELECT SUM(total_price) AS total_revenue FROM ecommerce_dataset_500_rows;

-- Average order value
SELECT AVG(total_price) AS avg_order_value FROM ecommerce_dataset_500_rows;

-- Orders per status
SELECT status, COUNT(*) AS status_count
FROM ecommerce_dataset_500_rows
GROUP BY status;

-- Maximum order value
SELECT MAX(total_price) AS highest_order_value FROM ecommerce_dataset_500_rows;

-- Minimum order value
SELECT MIN(total_price) AS lowest_order FROM ecommerce_dataset_500_rows;


-----------------------------------------------------------
-- E. VIEWS FOR ANALYSIS
-----------------------------------------------------------

-- View for Low Order Value
CREATE VIEW lowest_order_view AS
SELECT MIN(total_price) AS lowest_order
FROM ecommerce_dataset_500_rows;

-- Use the view
SELECT * FROM lowest_order_view;

-- Monthly_revenue_view
CREATE VIEW monthly_revenue_view AS
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_price) AS total_revenue,
    COUNT(*) AS total_orders
FROM ecommerce_dataset_500_rows
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

-- Use the view
SELECT * FROM monthly_revenue_view;


-----------------------------------------------------------
-- F. INDEX OPTIMIZATION
-----------------------------------------------------------

CREATE INDEX idx_user_id ON ecommerce_dataset_500_rows(user_id);
CREATE INDEX idx_order_date ON ecommerce_dataset_500_rows(order_date);
CREATE INDEX idx_country ON ecommerce_dataset_500_rows(country);

-- Query using index
SELECT *
FROM ecommerce_dataset_500_rows
WHERE country = 'India'
ORDER BY order_date;

-- Date range query benefiting from index
SELECT *
FROM ecommerce_dataset_500_rows
WHERE order_date BETWEEN '2024-06-01' AND '2024-08-31';

-----------------------------------------------------------
-- END OF FILE
-----------------------------------------------------------
