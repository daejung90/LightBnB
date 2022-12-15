SELECT properties.city AS name, count(reservations) AS number_of_reservations
FROM reservations
JOIN properties ON properties.id = property_id
GROUP BY properties.city
ORDER BY number_of_reservations DESC;