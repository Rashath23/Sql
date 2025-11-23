-- 1. Create a table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO employees (id, name, salary) VALUES
(1, 'John', 45000),
(2, 'Priya', 52000),
(3, 'Rahul', 48000);

----------------------------------------------------------
-- 2. Creating a View
----------------------------------------------------------

CREATE VIEW employee_view AS
SELECT id, name, salary
FROM employees;

-- Using the view
SELECT * FROM employee_view;

----------------------------------------------------------
-- 3. Updatable View Example
----------------------------------------------------------

-- Create an updatable view
CREATE VIEW salary_view AS
SELECT id, name, salary
FROM employees;

-- Update data through the view
UPDATE salary_view
SET salary = 60000
WHERE id = 1;

-- Delete data through the view
DELETE FROM salary_view
WHERE id = 3;

-- Verify updates
SELECT * FROM employees;
