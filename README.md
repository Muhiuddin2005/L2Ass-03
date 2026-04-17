================================================================================
VEHICLE RENTAL SYSTEM – DATABASE DESIGN & SQL QUERIES
================================================================================

PROJECT OVERVIEW

This project implements a relational database for a Vehicle Rental System. It manages:
- Users (Admins and Customers)
- Vehicles (cars, bikes, trucks)
- Bookings (rental transactions)

The database supports real-world business logic such as unique email and registration numbers, vehicle availability tracking, booking statuses, and total cost calculation.

This assignment demonstrates skills in:
- Entity Relationship Diagram (ERD) design
- SQL table creation with primary/foreign keys
- Writing advanced SQL queries using JOIN, EXISTS, WHERE, GROUP BY, and HAVING

================================================================================
DATABASE SCHEMA
================================================================================

1. Users Table
   Columns: user_id (INT, PRIMARY KEY, AUTO_INCREMENT), name (VARCHAR(100), NOT NULL), email (VARCHAR(100), UNIQUE, NOT NULL), phone (VARCHAR(15), NOT NULL), role (ENUM('Admin','Customer'), NOT NULL)

2. Vehicles Table
   Columns: vehicle_id (INT, PRIMARY KEY, AUTO_INCREMENT), name (VARCHAR(100), NOT NULL), type (ENUM('car','bike','truck'), NOT NULL), model (YEAR, NOT NULL), registration_number (VARCHAR(20), UNIQUE, NOT NULL), rental_price (DECIMAL(10,2), NOT NULL), status (ENUM('available','rented','maintenance'), DEFAULT 'available')

3. Bookings Table
   Columns: booking_id (INT, PRIMARY KEY, AUTO_INCREMENT), user_id (INT, FOREIGN KEY REFERENCES Users(user_id)), vehicle_id (INT, FOREIGN KEY REFERENCES Vehicles(vehicle_id)), start_date (DATE, NOT NULL), end_date (DATE, NOT NULL), status (ENUM('pending','confirmed','completed','cancelled'), NOT NULL), total_cost (DECIMAL(10,2), NOT NULL)

Relationships:
- One-to-Many: Users -> Bookings (one user can have many bookings)
- Many-to-One: Bookings -> Vehicles (many bookings can refer to one vehicle)
- One-to-One (logical): each booking links exactly one user and one vehicle

================================================================================
ERD DIAGRAM
================================================================================

Link: https://lucid.app/lucidchart/e6c1e6d7-ada0-458f-a40f-83715926e244/edit?viewport_loc=-1555%2C-122%2C3206%2C1571%2C0_0&invitationId=inv_ed14b060-4a37-41a1-b9c0-bae40b5d9a1e

The ERD includes all primary keys, foreign keys, cardinalities, and status fields.


================================================================================
THEORY QUESTIONS (Viva Practice)
================================================================================

Watch my recorded answers:

Video Link: https://drive.google.com/file/d/1lZ4fxSjejn9-COTzWK7qPlXv8fG2skpH/view?usp=sharing

Questions covered:
1. What is a foreign key and why is it important?
2. Difference between WHERE and HAVING?
3. What is a primary key and its characteristics?
4. Difference between INNER JOIN and LEFT JOIN?
