-- Create table
CREATE TABLE orders (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2)
);

-- Insert 5 orders
INSERT INTO orders (id, product_name, quantity, price) VALUES
(1, 'Tv', 2, 55000.00),
(2, 'Laptop', 5, 500.00),
(3, 'Cupboard', 3, 1200.00),
(4, 'Desk', 1, 9000.00),
(5, 'AC', 2, 7000.00);

-- Select all orders
SELECT * FROM orders;
