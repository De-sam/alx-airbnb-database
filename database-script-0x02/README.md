# Airbnb Database – Sample Data Seeding

This file contains SQL `INSERT` statements to populate the Airbnb-style database with realistic sample data. It complements the schema defined in `schema.sql` and is used to simulate actual application data for testing and development purposes.

## ✅ Tables Seeded

- `users` – 5 users (guests, hosts, admin)
- `properties` – 5 property listings associated with hosts
- `bookings` – 5 bookings made by users
- `payments` – 5 payments tied to the bookings
- `reviews` – 5 reviews from users on booked properties
- `messages` – 5 chat messages exchanged between users

## ⚙️ Usage Instructions

Ensure your schema has already been created using `schema.sql`. Then run this script:

```bash
psql -U your_user -d your_database -f seed_full.sql
