CREATE DATABASE AB106;
USE AB106;

CREATE TABLE Studnets(
ID INT PRIMARY KEY IDENTITY,
Name NVARCHAR(30) NOT NULL,
Surname NVARCHAR(50) DEFAULT 'XXX',
Age INT CHECK (Age >= 18),
AvgPoint DECIMAL(5,2)
);

INSERT INTO Studnets (Name, Surname, Age, AvgPoint)
VALUES(N'Admi', N'Almaz', 24, 76);

--1. Ortalamasi 51-den yuxari olan telebeler :
SELECT *
FROM Studnets
WHERE AvgPoint > 51;

--2. Ortalamasi 51-den böyük, 90-dan az olan telebeler : 
SELECT *
FROM Studnets
WHERE AvgPoint >51 AND AvgPoint < 90;

--3. A ile baslayib i ile biten telebeleri :
SELECT *
FROM Studnets
WHERE Name LIKE 'A%i'
