USE hospital_db;

-- =========================
-- 1. DEPARTMENTS
-- =========================
CREATE TABLE Departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

-- =========================
-- 2. PATIENTS
-- =========================
CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    age INT,
    phone VARCHAR(20),
    address VARCHAR(255)
);

-- =========================
-- 3. DOCTORS
-- =========================
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(20),
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id)
);

-- =========================
-- 4. STAFF
-- =========================
CREATE TABLE Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_name VARCHAR(100) NOT NULL,
    role_name VARCHAR(100),
    phone VARCHAR(20),
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id)
);

-- =========================
-- 5. APPOINTMENTS
-- =========================
CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(50),

    FOREIGN KEY (patient_id)
    REFERENCES Patients(patient_id),

    FOREIGN KEY (doctor_id)
    REFERENCES Doctors(doctor_id)
);

-- =========================
-- 6. MEDICAL RECORDS
-- =========================
CREATE TABLE Medical_Records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    diagnosis VARCHAR(255),
    treatment VARCHAR(255),
    record_date DATE,

    FOREIGN KEY (patient_id)
    REFERENCES Patients(patient_id),

    FOREIGN KEY (doctor_id)
    REFERENCES Doctors(doctor_id)
);

-- =========================
-- 7. MEDICINES
-- =========================
CREATE TABLE Medicines (
    medicine_id INT AUTO_INCREMENT PRIMARY KEY,
    medicine_name VARCHAR(100),
    stock_quantity INT,
    price DECIMAL(10,2)
);

-- =========================
-- 8. PRESCRIPTIONS
-- =========================
CREATE TABLE Prescriptions (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    record_id INT,
    medicine_id INT,
    dosage VARCHAR(100),

    FOREIGN KEY (record_id)
    REFERENCES Medical_Records(record_id),

    FOREIGN KEY (medicine_id)
    REFERENCES Medicines(medicine_id)
);

-- =========================
-- 9. ROOMS
-- =========================
CREATE TABLE Rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(20),
    room_type VARCHAR(50),
    status VARCHAR(50)
);

-- =========================
-- 10. ADMISSIONS
-- =========================
CREATE TABLE Admissions (
    admission_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    room_id INT,
    admission_date DATE,
    discharge_date DATE,

    FOREIGN KEY (patient_id)
    REFERENCES Patients(patient_id),

    FOREIGN KEY (room_id)
    REFERENCES Rooms(room_id)
);

-- =========================
-- 11. BILLS
-- =========================
CREATE TABLE Bills (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    admission_id INT,
    total_amount DECIMAL(12,2),

    FOREIGN KEY (admission_id)
    REFERENCES Admissions(admission_id)
);

-- =========================
-- 12. PAYMENTS
-- =========================
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    bill_id INT,
    payment_date DATE,
    amount_paid DECIMAL(12,2),
    payment_method VARCHAR(50),

    FOREIGN KEY (bill_id)
    REFERENCES Bills(bill_id)
);

SHOW TABLES;
INSERT INTO Departments (department_name, location)
VALUES
('Cardiology','Block A'),
('Neurology','Block B'),
('Pediatrics','Block C');
INSERT INTO Patients
(patient_name, gender, age, phone, address)
VALUES
('Ahmed Ali','Male',30,'0612345678','Mogadishu'),
('Amina Hassan','Female',25,'0611111111','Hargeisa'),
('Mohamed Noor','Male',40,'0612222222','Bosaso');
INSERT INTO Doctors
(doctor_name, specialization, phone, department_id)
VALUES
('Dr. Yusuf','Cardiologist','0615555555',1),
('Dr. Fatima','Neurologist','0616666666',2),
('Dr. Omar','Pediatrician','0617777777',3);
SELECT * FROM Patients;
SELECT * FROM Doctors;
SELECT
    d.doctor_name,
    d.specialization,
    dep.department_name
FROM Doctors d
JOIN Departments dep
ON d.department_id = dep.department_id;
INSERT INTO Appointments
(patient_id, doctor_id, appointment_date, status)
VALUES
(1,1,'2026-06-22','Scheduled'),
(2,2,'2026-06-23','Completed'),
(3,3,'2026-06-24','Pending');
SELECT * FROM Appointments;
SELECT
    p.patient_name,
    d.doctor_name,
    a.appointment_date,
    a.status
FROM Appointments a
JOIN Patients p
ON a.patient_id = p.patient_id
JOIN Doctors d
ON a.doctor_id = d.doctor_id;
SELECT
    dep.department_name,
    COUNT(d.doctor_id) AS total_doctors
FROM Departments dep
JOIN Doctors d
ON dep.department_id = d.department_id
GROUP BY dep.department_name;
SELECT COUNT(*) AS total_patients
FROM Patients;
SELECT AVG(age) AS average_age
FROM Patients;
SELECT *
FROM Patients
WHERE age > 30;
SELECT *
FROM Appointments
WHERE status = 'Scheduled';
SELECT *
FROM Doctors
WHERE specialization = 'Neurologist';
SELECT COUNT(*) AS total_appointments
FROM Appointments;
SELECT
    status,
    COUNT(*) AS total
FROM Appointments
GROUP BY status;
SELECT *
FROM Patients
ORDER BY age DESC;
SELECT MAX(age) AS oldest_patient
FROM Patients;
SELECT MIN(age) AS youngest_patient
FROM Patients;
SELECT
    status,
    COUNT(*) AS total
FROM Appointments
GROUP BY status
HAVING COUNT(*) >= 1;
USE hospital_db;

SHOW TABLES;