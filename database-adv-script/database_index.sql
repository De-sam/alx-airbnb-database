-- 1. Index on user_id in bookings (frequently used in joins and filters)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- 2. Index on property_id in reviews (used for filtering and aggregating)
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- 3. Index on start_date in bookings (used for partitioning and date range queries)
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- 4. Index on booking_id in payments (used in JOIN with bookings)
CREATE INDEX idx_payments_booking_id ON payments(booking_id);
