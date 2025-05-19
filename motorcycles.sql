CREATE TABLE MotorcycleTypes (
    TypeId SERIAL PRIMARY KEY,
    TypeName VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Motorcycles (
    MotorcycleId SERIAL PRIMARY KEY,
    RiderId INT NOT NULL,
    TypeId INT,
    Brand VARCHAR(100) NOT NULL,
    Model VARCHAR(100) NOT NULL,
    Year INT CHECK (Year >= 1900 AND Year <= EXTRACT(YEAR FROM CURRENT_DATE)),
    VIN VARCHAR(50) UNIQUE,
    FOREIGN KEY (RiderId) REFERENCES Riders(RiderId) ON DELETE CASCADE,
    FOREIGN KEY (TypeId) REFERENCES MotorcycleTypes(TypeId)
);

CREATE TABLE Repairs (
    RepairId SERIAL PRIMARY KEY,
    MotorcycleId INT NOT NULL,
    Description VARCHAR(200) NOT NULL,
    RepairDate DATE NOT NULL CHECK (RepairDate <= CURRENT_DATE),
    Cost DECIMAL(10, 2) CHECK (Cost >= 0),
    FOREIGN KEY (MotorcycleId) REFERENCES Motorcycles(MotorcycleId) ON DELETE CASCADE
);