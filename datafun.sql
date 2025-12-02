-- 1. Create a table events (id, event_name, event_date)
CREATE TABLE events (
    id INT PRIMARY KEY,
    event_name VARCHAR(100),
    event_date DATE
);

-- 2. Insert events with different dates
INSERT INTO events (id, event_name, event_date) VALUES
(1, 'Music Festival', '2025-01-15'),
(2, 'Tech Conference', '2025-03-22'),
(3, 'Art Exhibition', '2025-07-10'),
(4, 'Marathon', '2025-10-05');

-- 3. Use NOW() to display current date & time
SELECT NOW() AS current_date_time;

-- 4. Format event_date using DATE_FORMAT()
SELECT 
    event_name,
    DATE_FORMAT(event_date, '%d-%M-%Y') AS formatted_date
FROM events;

-- 5. Extract YEAR and MONTH from event_date
SELECT 
    event_name,
    YEAR(event_date) AS event_year,
    MONTH(event_date) AS event_month
FROM events;

-- 6. Use CONCAT() to combine event_name and event_date
SELECT 
    CONCAT(event_name, ' is on ', event_date) AS event_details
FROM events;
