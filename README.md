# Elevate_labs_task3
A complete MySQL project with dataset, SQL scripts, views, joins, indexes, and analytics queries. Includes screenshots, CSV tables, and full database export for learning and portfolio use.

Task 3

This repository contains a complete MySQL database project built for learning SQL concepts such as:

DDL (CREATE, ALTER, DROP)

DML (INSERT, UPDATE, DELETE)

Joins

Views

Indexing

Aggregate functions

Date filtering

Optimized queries

EXPLAIN analysis

The project includes dataset files, SQL, and screenshots of query outputs.

📁 Folder Structure
mysql-ecommerce-analytics/
│
├── data/
│   ├── ecommerce_dataset_500_rows.csv
│   ├── products.csv
│
├── screenshots/
│   ├── inner_output.png
│   ├── Left_join_output.png
│   ├── right_join_output.png
│   ├── view1_output.png
│   ├── view2_output.png
│   ├── index_output.png
│   └── ...
│
└── sql/
    ├── ecommerce_dataset_500_rows.sql
    ├── ecommerce_products.sql
    ├── task3_quries1.sql

    
🚀 How to Use
1. Import schema
SOURCE sql/schema.sql;

2. Import data
SOURCE data/ecommerce_dataset_500_rows.sql;

📊 Included Views

Example: Monthly Revenue View

CREATE VIEW monthly_revenue AS
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS revenue
FROM ecommerce_dataset_500_rows
GROUP BY month
ORDER BY month;

🧠 Skills Covered

SQL Joins

Views & Subqueries

Index optimization

Group By analytics

Date filtering

Performance testing

GitHub project documentation

📜 License

Free to use for education and portfolio projects.
