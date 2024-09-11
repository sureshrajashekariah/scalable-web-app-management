-- SQL script for database initialization
CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(100) NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL
);

INSERT INTO Users (Username, PasswordHash)
VALUES ('admin', 'hashedpassword');
