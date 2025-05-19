INSERT INTO Riders (FirstName, LastName, BirthDate, JoinDate)
VALUES 
('Олег', 'Ковальчук', '1990-05-12', '2023-06-01'),
('Ірина', 'Сидоренко', '1985-11-30', '2022-09-15'),
('Артем', 'Нікіфоров', '2000-03-21', '2024-01-10');

INSERT INTO Trips (RiderId, MotorcycleId, TripDate, Destination, DistanceKm)
VALUES 
(1, 2, '2024-05-10', 'Львів → Івано-Франківськ', 130),
(2, 1, '2024-05-11', 'Київ → Харків', 480);