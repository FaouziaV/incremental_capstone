--CREATE DATABASE VitalWatchDB;
--USE VitalWatchDB;

--CREATE TABLE Ward (
--    WardID INT IDENTITY(1,1) PRIMARY KEY,
--    WardName VARCHAR(100) NOT NULL
--);

--CREATE TABLE Patient (
--    PatientID INT IDENTITY(1,1) PRIMARY KEY,
--    FirstName VARCHAR(50) NOT NULL,
--    LastName VARCHAR(50) NOT NULL,
--    WardID INT FOREIGN KEY REFERENCES Ward(WardID),
--    Status VARCHAR(20) DEFAULT 'Monitored'
--);

--CREATE TABLE Device (
--    DeviceID INT IDENTITY(1,1) PRIMARY KEY,
--    PatientID INT FOREIGN KEY REFERENCES Patient(PatientID),
--    DeviceType VARCHAR(30),
--    Status VARCHAR(20) DEFAULT 'Active'
--);

--CREATE TABLE VitalReading (
--    ReadingID BIGINT IDENTITY(1,1) PRIMARY KEY,
--    DeviceID INT FOREIGN KEY REFERENCES Device(DeviceID),
--    VitalType VARCHAR(20),
--    ReadingValue DECIMAL(6,2),
--    RecordedAt DATETIME2(6)
--);

--CREATE INDEX IX_VitalReading_DeviceID_RecordedAt
--ON VitalReading (DeviceID, RecordedAt);

--CREATE TABLE Alert (
--    AlertID INT IDENTITY(1,1) PRIMARY KEY,
--    PatientID INT FOREIGN KEY REFERENCES Patient(PatientID),
--    Severity VARCHAR(20),
--    TriggeredAt DATETIME2(6),
--    Status VARCHAR(20) DEFAULT 'Open',
--    AcknowledgedBy INT
--);

--CREATE TABLE CareTeamAssignment (
--    AssignmentID INT IDENTITY(1,1) PRIMARY KEY,
--    PatientID INT FOREIGN KEY REFERENCES Patient(PatientID),
--    NurseID INT,
--    AssignedFrom DATE
--);


--SELECT name FROM sys.tables;

--INSERT INTO Ward (WardName)
--VALUES
--('Cardiology'),
--('Neurology'),
--('ICU'),
--('Emergency'),
--('General Medicine'),
--('Orthopedics'),
--('Pediatrics'),
--('Oncology'),
--('Surgical Ward'),
--('Pulmonology');

--INSERT INTO Patient (FirstName, LastName, WardID)
--VALUES
--('Arun', 'Kumar', 1),
--('Priya', 'Sharma', 2),
--('Rahul', 'Verma', 3),
--('Sneha', 'Reddy', 4),
--('Karthik', 'Raj', 5),
--('Divya', 'Nair', 6),
--('Vikram', 'Singh', 7),
--('Meena', 'Joseph', 8),
--('Aditya', 'Das', 9),
--('Ananya', 'Iyer', 10);

--INSERT INTO Device (PatientID, DeviceType)
--VALUES
--(1, 'HeartRateMonitor'),
--(2, 'PulseOximeter'),
--(3, 'HeartRateMonitor'),
--(4, 'PulseOximeter'),
--(5, 'HeartRateMonitor'),
--(6, 'PulseOximeter'),
--(7, 'HeartRateMonitor'),
--(8, 'PulseOximeter'),
--(9, 'HeartRateMonitor'),
--(10, 'PulseOximeter');

--INSERT INTO Alert (PatientID, Severity, TriggeredAt, AcknowledgedBy)
--VALUES
--(1, 'High', '2026-11-22 08:15:00', 101),
--(2, 'Medium', '2026-11-22 08:20:00', 102),
--(3, 'Critical', '2026-11-22 08:25:00', 103),
--(4, 'Low', '2026-11-22 08:30:00', 104),
--(5, 'High', '2026-11-22 08:35:00', 105),
--(6, 'Medium', '2026-11-22 08:40:00', 106),
--(7, 'Critical', '2026-11-22 08:45:00', 107),
--(8, 'Low', '2026-11-22 08:50:00', 108),
--(9, 'High', '2026-11-22 08:55:00', 109),
--(10, 'Medium', '2026-11-22 09:00:00', 110);

--INSERT INTO CareTeamAssignment (PatientID, NurseID, AssignedFrom)
--VALUES
--(1, 101, '2026-11-01'),
--(2, 102, '2026-11-02'),
--(3, 103, '2026-11-03'),
--(4, 104, '2026-11-04'),
--(5, 105, '2026-11-05'),
--(6, 106, '2026-11-06'),
--(7, 107, '2026-11-07'),
--(8, 108, '2026-11-08'),
--(9, 109, '2026-11-09'),
--(10, 110, '2026-11-10');

--INSERT INTO VitalReading (DeviceID, VitalType, ReadingValue, RecordedAt)
--VALUES
--(1, 'HeartRate', 78.00, '2026-11-22 08:00:00'),
--(2, 'SpO2', 97.00, '2026-11-22 08:00:05'),
--(3, 'HeartRate', 85.00, '2026-11-22 08:00:10'),
--(4, 'SpO2', 95.00, '2026-11-22 08:00:15'),
--(5, 'HeartRate', 92.00, '2026-11-22 08:00:20'),
--(6, 'SpO2', 93.00, '2026-11-22 08:00:25'),
--(7, 'HeartRate', 110.00, '2026-11-22 08:00:30'),
--(8, 'SpO2', 89.00, '2026-11-22 08:00:35'),
--(9, 'HeartRate', 72.00, '2026-11-22 08:00:40'),
--(10, 'SpO2', 98.00, '2026-11-22 08:00:45');

