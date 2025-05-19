CREATE TABLE ShopItems (
    ItemId SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0),
    Stock INT DEFAULT 0 CHECK (Stock >= 0)
);

CREATE TABLE Payments (
    PaymentId SERIAL PRIMARY KEY,
    RiderId INT REFERENCES Riders(RiderId) ON DELETE CASCADE,
    ItemId INT REFERENCES ShopItems(ItemId),
    Amount DECIMAL(10,2) NOT NULL CHECK (Amount > 0),
    PaymentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Method VARCHAR(50) CHECK (Method IN ('cash', 'card', 'online'))
);