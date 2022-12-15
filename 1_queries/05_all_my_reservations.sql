-- SELECT reservations.id, properties.title AS title, reservations.start_date AS start_date, properties.cost_per_night AS cost_per_night, AVG(property_reviews.rating)
-- FROM reservations
-- JOIN properties ON properties.id = property_id
-- JOIN property_reviews ON reservations.id = reservation_id
-- JOIN users ON users.id = user_id
-- WHERE user_id = 1
-- ORDER BY start_date ASC;

SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;