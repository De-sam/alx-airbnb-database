# Database Normalization Report

## Project: Airbnb Database Design  
This document explains the normalization process applied to the Airbnb database design. The goal was to ensure the schema adheres to the Third Normal Form (3NF) to eliminate redundancy and improve data integrity.

---

## First Normal Form (1NF)

**Rule**: Eliminate repeating groups and ensure atomicity.

### ✅ Compliance
- All attributes are atomic (no arrays, lists, or composite fields).
- Every table has a clearly defined **primary key**.
- No multivalued attributes exist.

### 💡 Example
| user_id | first_name | last_name | phone_number |
|---------|------------|-----------|--------------|
| UUID    | John       | Doe       | 08123456789  |

Each field holds a single value per record — so it’s 1NF compliant.

---

## Second Normal Form (2NF)

**Rule**: Must be in 1NF, and all non-key attributes must be **fully dependent** on the entire primary key (no partial dependencies).

### ✅ Compliance
- All tables use **single-column primary keys (UUIDs)**.
- There are no composite keys, so no partial dependencies exist.
- All non-key fields depend on the primary key of their respective table.

### 💡 Example
In `bookings`:
- `user_id` and `property_id` are foreign keys
- Fields like `start_date`, `end_date`, `total_price` depend entirely on `booking_id`

---

## Third Normal Form (3NF)

**Rule**: Must be in 2NF and have **no transitive dependencies** (non-key fields depending on other non-key fields).

### ✅ Compliance
- No non-key field depends on another non-key field.
- For example, in the `users` table:
  - `role` is a single field; we’re not storing additional info like `role_description` that would depend on it.
- Relationships are separated into distinct tables (e.g. `payments`, `messages`, `reviews`), avoiding data repetition.

---

## Additional Notes

- Foreign keys are correctly used to link tables without duplicating data.
- ENUMs are used for constrained field values (`role`, `status`, `payment_method`, etc.), but stored as single values — no transitive dependency is created.
- All tables pass normalization rules **up to 3NF** without structural changes needed.

---

## Conclusion

The database design is fully normalized up to **Third Normal Form (3NF)**:
- ✅ 1NF: Atomic attributes, unique records
- ✅ 2NF: No partial dependencies
- ✅ 3NF: No transitive dependencies

No further normalization or table restructuring is required at this stage.

