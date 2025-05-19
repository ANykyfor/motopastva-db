CREATE TABLE Media (
    MediaId SERIAL PRIMARY KEY,
    RiderId INT REFERENCES Riders(RiderId) ON DELETE CASCADE,
    EventId INT REFERENCES Events(EventId),
    FilePath VARCHAR(255) NOT NULL,
    UploadDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    MediaType VARCHAR(20) CHECK (MediaType IN ('image', 'video'))
);

CREATE TABLE Contacts (
    ContactId SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(150),
    Message TEXT NOT NULL,
    SentAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Messages (
    MessageId SERIAL PRIMARY KEY,
    RiderId INT REFERENCES Riders(RiderId) ON DELETE CASCADE,
    Content TEXT NOT NULL,
    SentAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Channel VARCHAR(50) CHECK (Channel IN ('email', 'sms', 'push'))
);