SELECT COUNT(*) AS count, name
FROM Passenger
JOIN Pass_in_trip ON Pass_in_trip.passenger = Passenger.id
GROUP BY name
HAVING count >= 1
ORDER BY count DESC, name ASC
