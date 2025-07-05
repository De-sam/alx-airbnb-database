-- Step 1: Create the parent partitioned table (based on start_date)
CREATE TABLE bookings_partitioned (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price INTEGER,
    status VARCHAR(20),
    created_at TIMESTAMP,
    -- you can add foreign keys later if needed
    -- payment_id, etc.
    -- indexes will be added per partition if necessary
    -- NOTE: Use same structure as original bookings
) PARTITION BY RANGE (start_date);

-- Step 2: Create child partitions (split by year/month)
CREATE TABLE bookings_2025_q3 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-07-01') TO ('2025-10-01');

CREATE TABLE bookings_2025_q4 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-10-01') TO ('2026-01-01');

-- Step 3: Insert sample data to test performance (optional, if needed)
-- INSERT INTO bookings_partitioned ... same as inserting into bookings
