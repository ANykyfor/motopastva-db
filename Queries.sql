INSERT INTO Riders (FirstName, LastName, BirthDate, JoinDate)
VALUES ('Олег', 'Ковальчук', '1990-05-12', '2023-06-01');

SELECT * FROM Riders;

SET FirstName = 'Андрій'
WHERE RiderId = 1;


WHERE RiderId = 1;


INSERT INTO Trips (RiderId, MotorcycleId, TripDate, Destination, DistanceKm)
VALUES (2, 1, '2024-06-01', 'Київ → Львів', 540);


SELECT Trips.*, Riders.FirstName, Riders.LastName
FROM Trips
JOIN Riders ON Trips.RiderId = Riders.RiderId;


SELECT Trips.TripDate, Trips.Destination, Motorcycles.Brand
FROM Trips
JOIN Motorcycles ON Trips.MotorcycleId = Motorcycles.MotorcycleId
WHERE Motorcycles.Brand = 'Honda';


SELECT Riders.FirstName, Riders.LastName, Trips.DistanceKm
FROM Riders
JOIN Trips ON Riders.RiderId = Trips.RiderId
WHERE Trips.DistanceKm > 300;


SELECT * FROM Trips
ORDER BY DistanceKm DESC
LIMIT 5;


SELECT Riders.FirstName, Riders.LastName, SUM(Trips.DistanceKm) AS TotalKm
FROM Riders
JOIN Trips ON Riders.RiderId = Trips.RiderId
GROUP BY Riders.RiderId;