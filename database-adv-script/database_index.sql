-- 1. Index on user_id in bookings
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- 2. Index on property_id in reviews
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- 3. Index on start_date in bookings
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- 4. Index on booking_id in payments
CREATE INDEX idx_payments_booking_id ON payments(booking_id);


-- 🔍 Sample EXPLAIN ANALYZE queries (required by ALX checker)
-- Run these before and after index creation to compare performance

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = '5ccf6c46-dbfa-4dd9-b405-1fef6e86f5f8';

EXPLAIN ANALYZE
SELECT * FROM reviews WHERE property_id = 'f53226ce-cb56-4c20-838c-a627c83041aa';

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE start_date BETWEEN '2025-07-01' AND '2025-07-10';

EXPLAIN ANALYZE
SELECT * FROM payments WHERE booking_id = 'bd79bb4b-acd1-4e7b-8f89-c1172ad210e5';
