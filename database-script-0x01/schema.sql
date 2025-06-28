
-- USERS TABLE
CREATE TABLE users (
  user_id UUID NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  email VARCHAR UNIQUE NOT NULL,
  password_hash VARCHAR NOT NULL,
  phone_number VARCHAR,
  role VARCHAR CHECK (role IN ('guest', 'host', 'admin')) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (user_id)
);

-- PROPERTIES TABLE
CREATE TABLE properties (
  property_id UUID NOT NULL,
  host_id UUID NOT NULL,
  name VARCHAR NOT NULL,
  description TEXT NOT NULL,
  location VARCHAR NOT NULL,
  pricepernight DECIMAL NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (property_id),
  FOREIGN KEY (host_id) REFERENCES users(user_id)
);

-- BOOKINGS TABLE
CREATE TABLE bookings (
  booking_id UUID NOT NULL,
  property_id UUID NOT NULL,
  user_id UUID NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  total_price DECIMAL NOT NULL,
  status VARCHAR CHECK (status IN ('pending', 'confirmed', 'canceled')) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (booking_id),
  FOREIGN KEY (property_id) REFERENCES properties(property_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- PAYMENTS TABLE
CREATE TABLE payments (
  payment_id UUID NOT NULL,
  booking_id UUID NOT NULL,
  amount DECIMAL NOT NULL,
  payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  payment_method VARCHAR CHECK (payment_method IN ('credit_card', 'paypal', 'stripe')) NOT NULL,
  PRIMARY KEY (payment_id),
  FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);

-- REVIEWS TABLE
CREATE TABLE reviews (
  review_id UUID NOT NULL,
  property_id UUID NOT NULL,
  user_id UUID NOT NULL,
  rating INTEGER CHECK (rating >= 1 AND rating <= 5) NOT NULL,
  comment TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (review_id),
  FOREIGN KEY (property_id) REFERENCES properties(property_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- MESSAGES TABLE
CREATE TABLE messages (
  message_id UUID NOT NULL,
  sender_id UUID NOT NULL,
  recipient_id UUID NOT NULL,
  message_body TEXT NOT NULL,
  sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (message_id),
  FOREIGN KEY (sender_id) REFERENCES users(user_id),
  FOREIGN KEY (recipient_id) REFERENCES users(user_id)
);