# Hospital Management Database

## Project Overview
This project is a Hospital Management Database built using MySQL.

The database is designed to manage:

- Patients
- Doctors
- Departments
- Appointments
- Medical Records
- Prescriptions
- Medicines
- Admissions
- Rooms
- Bills
- Payments
- Staff

## Database Features

- Relational database design
- Primary Keys and Foreign Keys
- Data insertion using SQL
- Joins between tables
- Aggregate functions
- Filtering and sorting data
- Grouping and reporting queries

## Technologies Used

- MySQL
- DBeaver
- SQL

## Database Structure

The database contains the following tables:

1. patients
2. doctors
3. departments
4. appointments
5. medical_records
6. prescriptions
7. medicines
8. rooms
9. admissions
10. bills
11. payments
12. staff

## Sample SQL Operations

- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- COUNT
- AVG
- MIN
- MAX
- JOIN

## ER Diagram

The database ER Diagram is included in:

ER_Diagram.png

## SQL Query Examples

### Aggregate Functions
Demonstrates COUNT, SUM, AVG, MAX, and MIN functions.

![Aggregate Functions](screenshots/aggregate-functions.png)

### String Functions
Demonstrates LENGTH, UCASE, and LCASE functions.

![String Functions](screenshots/string-functions.png)

### Date Functions
Demonstrates DAY, DATEDIFF, DATE_ADD, and DATE_SUB functions.

![Date Functions](screenshots/date-functions.png)

### JOIN Operations
Combines data from patients, doctors, departments, and appointments.

![Joins](screenshots/joins-query.png)

### Subquery Example
Retrieves the bill with the highest amount using a subquery.

![Subquery](screenshots/subquery-max-bill.png)

### GROUP BY, HAVING and ORDER BY

Groups patient records by gender, filters groups using HAVING, and sorts results using ORDER BY.

![Group By](screenshots/groupby-having-orderby.png)

## Project Files

- hospital_management_database.sql
- dump-hospital_db-202606230206.sql
- ER_Diagram.png
- README.md

## Latest Update

### June 2026

Added sample data for the following tables:

* Patients
* Doctors
* Departments
* Medical Records
* Prescriptions
* Bills
* Payments

Additional SQL queries were added for:

* Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
* String Functions (LENGTH, UCASE, LCASE)
* Date Functions (DAY, DATEDIFF, DATE_ADD, DATE_SUB)
* Joins and Subqueries
* Reporting and Analysis Queries

Database backup file included:

`dump-hospital_db-202606230206.sql`


## Author

Abdisamad Kasim Ahmed

LinkedIn:
(www.linkedin.com/in/abdisamad-ahmed-b53551219)

GitHub:
https://github.com/Abdisamad-Kasim/Hospital-Management-Database
