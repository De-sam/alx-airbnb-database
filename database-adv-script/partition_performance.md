# Partitioning Performance Report

## Objective
Partition the `bookings` table by `start_date` to optimize queries on large datasets.

## Approach
We created a new table `bookings_partitioned` partitioned by range on `start_date`, with two partitions:
- `bookings_2025_q3` (Jul–Sep 2025)
- `bookings_2025_q4` (Oct–Dec 2025)

## Performance Test Query

```sql
-- Query on date range
EXPLAIN ANALYZE
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2025-07-01' AND '2025-07-31';
