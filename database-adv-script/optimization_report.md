# Optimization Report

## 1. Initial Query Analysis

The original query:

```sql
SELECT b.*, u.*, p.*, pay.*
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id;
