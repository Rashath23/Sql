-- 1. Insert 5 orders with different values
INSERT INTO orders (id, product_name, quantity, price)
VALUES
(1, 'Apple Watch', 3, 250),
(2, 'AirPods', 1, 180),
(3, 'Asus Laptop', 4, 550),
(4, 'Boat Speaker', 2, 120),
(5, 'Acer Monitor', 5, 300);

-- 2. Select all orders where quantity > 2
SELECT * FROM orders
WHERE quantity > 2;

-- 3. Select orders where price is between 100 and 500
SELECT * FROM orders
WHERE price BETWEEN 100 AND 500;

-- 4. Fetch orders with product_name starting with 'A'
SELECT * FROM orders
WHERE product_name LIKE 'A%';

-- 5. Fetch orders sorted by quantity in descending order
SELECT * FROM orders
ORDER BY quantity DESC;

-- 6. Use CONCAT() to combine event_name and event_date
SELECT CONCAT(event_name, ' - ', event_date) AS full_event_details
FROM events;
