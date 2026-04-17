-- =========================================
-- Query 1: INNER JOIN
-- Retrieve booking info with customer name and vehicle name
-- =========================================

SELECT 
    b.booking_id,
    u.name AS customer_name,
    v.name AS vehicle_name,
    b.start_date,
    b.end_date,
    b.status
FROM Bookings b
INNER JOIN Users u 
    ON b.user_id = u.user_id
INNER JOIN Vehicles v 
    ON b.vehicle_id = v.vehicle_id;


-- =========================================
-- Query 2: NOT EXISTS
-- Find vehicles that have never been booked
-- =========================================

SELECT *
FROM Vehicles v
WHERE NOT EXISTS (
    SELECT 1
    FROM Bookings b
    WHERE b.vehicle_id = v.vehicle_id
);


-- =========================================
-- Query 3: WHERE
-- Retrieve all available cars
-- =========================================

SELECT *
FROM Vehicles
WHERE type = 'car'
AND status = 'available';


-- =========================================
-- Query 4: GROUP BY + HAVING
-- Vehicles with more than 2 bookings
-- =========================================

SELECT 
    v.name AS vehicle_name, 
    COUNT(b.booking_id) AS total_bookings
FROM Bookings b
JOIN Vehicles v 
    ON b.vehicle_id = v.vehicle_id
GROUP BY v.name
HAVING COUNT(b.booking_id) > 2;
