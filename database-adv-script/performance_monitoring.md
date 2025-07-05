# Performance Monitoring Report

## 1. Tools Used
- `EXPLAIN ANALYZE` (PostgreSQL) to view query execution plans.
- Observed execution time, index usage, and scan types.

## 2. Slow Query Example

```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = '5ccf6c46-dbfa-4dd9-b405-1fef6e86f5f8';
