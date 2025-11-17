CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary DECIMAL(10,2)
);
ALTER TABLE employees
ADD COLUMN department VARCHAR(50);
ALTER TABLE employees
RENAME COLUMN salary TO monthly_salary;
INSERT INTO employees (emp_id, emp_name, monthly_salary, department) VALUES
(1, 'Arun Kumar', 45000.00, 'HR'),
(2, 'Priya Sharma', 52000.00, 'Finance'),
(3, 'Rohit Singh', 38000.00, 'IT'),
(4, 'Neha Reddy', 60000.00, 'Marketing'),
(5, 'Vikas Rao', 30000.00, 'Support');
UPDATE employees
SET department = 'Technical Support'
WHERE emp_id = 5;
DELETE FROM employees
WHERE emp_id = 3;

