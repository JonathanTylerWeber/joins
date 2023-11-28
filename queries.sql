-- write your queries here
SELECT *
FROM owners FULL JOIN vehicles
ON owners.id = vehicles.owner_id;


SELECT owners.first_name, owners.last_name, COUNT(vehicles.id) AS car_count
FROM owners
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY owners.first_name, owners.last_name
ORDER BY owners.first_name;


SELECT owners.first_name, owners.last_name, ROUND(AVG(vehicles.price)) AS avg_price, COUNT(vehicles.id) AS vehicle_count
FROM owners
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY owners.first_name, owners.last_name
HAVING COUNT(vehicles.id) > 1 AND ROUND(AVG(vehicles.price)) > 10000
ORDER BY owners.first_name DESC;