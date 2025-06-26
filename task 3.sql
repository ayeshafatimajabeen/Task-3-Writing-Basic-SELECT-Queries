-- TASK 3: Writing basic SELECT Queries
-- Already created and inserted data into hospital management system database
USE Hospitaldb;
-- Select all columns in a table
Select * from Departments;
Select * from Doctors;
Select * from Patients;
Select * from Appointments;
Select * from MedicalRecords;
Select * from Prescriptions;
Select * from Rooms;
Select * from Patient_Rooms;
Select * from Nurses;
Select * from Nurse_Assignments;
Select * from Billing;

-- Select specific column

-- select doctor names and their specialization
Select name,specialization From Doctors;
-- select patient names and ph.no
select name,phone From Patients;
-- select appointment date and reasons only
select appointment_id,reason From Appointments;

-- where clause
SELECT * FROM Billing
WHERE total_amount > 2000;
-- Between 
select name,date_of_birth from Patients
WHERE date_of_birth BETWEEN '1995-01-10' AND '2002-12-31';
select name,date_of_birth from Patients
WHERE date_of_birth NOT BETWEEN '1995-01-10' AND '2002-12-31';
-- AND
select * From Billing 
WHERE total_amount BETWEEN 1000 AND 2200;
-- OR
select name,gender,date_of_birth FROM
Patients WHERE gender='Male' OR date_of_birth>'2000-01-10';
select name,specialization FROM Doctors 
Where specialization='cardiologist' OR specialization='Neurologist';
select room_number,room_type,status FROM Rooms 
WHERE status='Available' OR room_type='ICU';
select * FROM Appointments WHERE patient_id=1 OR patient_id=2;

-- LIKE
SELECT * FROM Prescriptions
WHERE dosage LIKE '%once%';

-- ORDER BY
SELECT * FROM Rooms
WHERE status = 'Available'
ORDER BY room_type ASC;
SELECT name, date_of_birth FROM Patients
ORDER BY date_of_birth ASC;
SELECT name, specialization FROM Doctors
ORDER BY name;
SELECT * FROM Billing
ORDER BY billing_date DESC
LIMIT 2;


SELECT patient_id , total_amount FROM Billing
WHERE total_amount BETWEEN 1000 AND 2500
ORDER BY total_amount DESC
LIMIT 2;



