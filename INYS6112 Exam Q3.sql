-- INSY6112 EXAM 2025 Q3.
CREATE DATABASE IF NOT EXISTS exam;
USE exam;
-- Question 3.1 
CREATE TABLE `Patient` (
`PatientID` INT PRIMARY KEY,
`PatientName ` VARCHAR(100),
`PatientSurname` VARCHAR(100), 
`PatientDOB` VARCHAR(100)
);

-- Question 3.2 
CREATE TABLE `DOCTOR` (
`DoctorID` INT PRIMARY KEY,
`DoctorName ` VARCHAR(100),
`DoctorSurname` VARCHAR(100)
);

-- Question 3.3 
CREATE TABLE `Appointments` (
`AppointmentID` INT PRIMARY KEY,
FOREIGN KEY (`PatientID`) REFERENCES `Patient` (`Patientid`),
FOREIGN KEY (`DoctorID`) REFERENCES `Doctor` (`Doctorid`),
`AppointmentDate` VARCHAR(100),
`AppointmentTime` VARCHAR(100), 
`AppointmentDuration` VARCHAR(100)
);

-- Question 3.4.
INSERT INTO `Patient` (`PatientID`, `PatientName`, `PatientSurname`, `PatientDOB`)
VALUES
('1', 'Debbie', 'Theart' '1980-03-17'),
('2', 'Thomas', 'Duncan' '1976-08-12');

-- Question 3.5
SELECT* FROM Appointments
WHERE AppointmentDate BETWEEN '2025-10-16' AND '2025-01-20';

-- Question 3.6
SELECT p.PatientName, p.PatientSurname, COUNT(a.AppointmentID) As TotalAppointment
FROM p.Patient p
JOIN Appointment a ON PatientID = p.PatientID
GROUP BY p.PatientName, p.PatientSurname;

-- Question 3.7
SELECT a.AppintmentDate, a.AppointmentTime, d.DoctorName, d.DoctorSurname, p.PatientName, p.PatientSurname
FROM Appointments A
JOIN Doctor d ON d.DoctorID = d.DoctorID
JOIN Patient d ON p.PatientID = p.PatientID;