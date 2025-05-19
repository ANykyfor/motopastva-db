CREATE TABLE Trips (
    TripId SERIAL PRIMARY KEY,
    RiderId INT NOT NULL,
    MotorcycleId INT NOT NULL,
    TripDate DATE NOT NULL CHECK (TripDate <= CURRENT_DATE),
    Destination VARCHAR(100) NOT NULL,
    DistanceKm INT CHECK (DistanceKm > 0),
    FOREIGN KEY (RiderId) REFERENCES Riders(RiderId) ON DELETE CASCADE,
    FOREIGN KEY (MotorcycleId) REFERENCES Motorcycles(MotorcycleId) ON DELETE CASCADE
);

CREATE TABLE Events (
    EventId SERIAL PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Description TEXT,
    EventDate DATE NOT NULL,
    Location VARCHAR(150),
    CreatedBy INT REFERENCES Riders(RiderId) ON DELETE SET NULL
);