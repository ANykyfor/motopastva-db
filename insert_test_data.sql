INSERT INTO Riders (FirstName, LastName, BirthDate, JoinDate) VALUES
('Олег', 'Ковальчук', '1990-05-12', '2023-06-01'),
('Ірина', 'Сидоренко', '1985-11-30', '2022-09-15'),
('Артем', 'Нікіфоров', '2000-03-21', '2024-01-10');

INSERT INTO MotorcycleTypes (TypeName) VALUES
('Cruiser'),
('Sport'),
('Touring');

INSERT INTO Motorcycles (RiderId, TypeId, Brand, Model, Year, VIN) VALUES
(1, 1, 'Harley-Davidson', 'Iron 883', 2019, 'HD883VIN001'),
(2, 2, 'Yamaha', 'R1', 2020, 'YAMR1VIN002'),
(3, 3, 'BMW', 'R1250RT', 2021, 'BMWRTVIN003');

INSERT INTO Trips (RiderId, MotorcycleId, TripDate, Destination, DistanceKm) VALUES
(1, 1, '2024-05-10', 'Львів → Івано-Франківськ', 130),
(2, 2, '2024-05-11', 'Київ → Харків', 480),
(3, 3, '2024-05-12', 'Одеса → Миколаїв', 140);

INSERT INTO Events (Title, Description, EventDate, Location, CreatedBy) VALUES
('Весняний виїзд', 'Перший великий виїзд сезону', '2024-04-15', 'Київ', 1),
('Мотофестиваль', 'Щорічний мотофест', '2024-06-21', 'Харків', 2);