# 📊 Airbnb Database Advanced SQL Project

## Overview

This project is part of the ALX ProDev Backend track — specifically the **Airbnb Database Module**. It focuses on building real-world SQL skills to work with a simulated Airbnb database through advanced querying, performance optimization, indexing, and partitioning.

---

## 🧠 Learning Objectives

By completing this project, I learned how to:

- Write complex SQL queries with INNER JOINs, LEFT JOINs, and FULL OUTER JOINs.
- Use both correlated and non-correlated subqueries.
- Perform data analysis using aggregation and window functions.
- Implement indexing strategies to improve query performance.
- Optimize complex queries using `EXPLAIN` and `ANALYZE`.
- Apply table partitioning to manage large datasets efficiently.
- Monitor and refine database performance with proper schema design.

---

## ✅ Tasks Completed

### 0. Write Complex Queries with Joins
- Used `INNER JOIN` to fetch bookings and their users.
- Used `LEFT JOIN` to fetch all properties and their reviews.
- Used `FULL OUTER JOIN` to fetch all users and bookings, even if unrelated.

📁 File: `joins_queries.sql`

---

### 1. Practice Subqueries
- Used subqueries to filter properties with average rating > 4.0.
- Used a correlated subquery to find users with more than 3 bookings.

📁 File: `subqueries.sql`

---

### 2. Apply Aggregations and Window Functions
- Counted total bookings per user using `GROUP BY`.
- Ranked properties using `RANK()` based on total bookings.

📁 File: `aggregations_and_window_functions.sql`

---

### 3. Implement Indexes for Optimization
- Created indexes on high-usage columns like `user_id`, `property_id`, `start_date`, and `booking_id`.
- Analyzed performance improvements before and after indexing.

📁 Files:  
- `database_index.sql`  
- `index_performance.md`

---

### 4. Optimize Complex Queries
- Refactored a heavy query joining users, bookings, properties, and payments.
- Reduced execution time and improved performance using indexing and query simplification.

📁 Files:  
- `performance.sql`  
- `optimization_report.md`

---

### 5. Partitioning Large Tables
- Partitioned the `bookings` table by `start_date` into quarterly partitions.
- Observed improved query performance for date-range filters.

📁 Files:  
- `partitioning.sql`  
- `partition_performance.md`

---

### 6. Monitor and Refine Database Performance
- Used `EXPLAIN ANALYZE` to inspect and optimize slow queries.
- Suggested and implemented schema improvements (e.g., materialized views).
- Documented all changes and improvements.

📁 File: `performance_monitoring.md`

---

## 🗃️ Repository Structure

```bash
alx-airbnb-database/
└── database-adv-script/
    ├── joins_queries.sql
    ├── subqueries.sql
    ├── aggregations_and_window_functions.sql
    ├── database_index.sql
    ├── index_performance.md
    ├── performance.sql
    ├── optimization_report.md
    ├── partitioning.sql
    ├── partition_performance.md
    ├── performance_monitoring.md
    └── README.md  ← you are here
