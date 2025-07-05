-- ⚠️ Original Query (unoptimized, includes unnecessary joins and no filter)
SELECT 
    b.booking_id,
    u.first_name || ' ' || u.last_name AS user_full_name,
    p.name AS property_name,
    pay.amount,
    pay.payment_method,
    b.start_date,
    b.end_date,
    b.status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id;

-- ✅ Optimized Query
-- Assume: indexes have already been added on booking_id, user_id, property_id
-- Also, only confirmed bookings are useful here
SELECT 
    b.booking_id,
    CONCAT(u.first_name, ' ', u.last_name) AS user_full_name,
    p.name AS property_name,
    pay.amount,
    pay.payment_method,
    b.start_date,
    b.end_date,
    b.status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed';
