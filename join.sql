CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
INSERT INTO departments (dept_id, dept_name, location) VALUES
(10, 'HR', 'Delhi'),
(20, 'Finance', 'Mumbai'),
(30, 'IT', 'Chennai'),
(40, 'Marketing', 'Kolkata'),
(50, 'Support', 'Bangalore');
INSERT INTO employees (emp_id, emp_name, salary, dept_id) VALUES
(201, 'Amit', 45000, 10),
(202, 'Priya', 52000, 20),
(203, 'Rohan', 38000, 10),
(204, 'Sneha', 60000, 30),
(205, 'Gaurav', 32000, 50);
SELECT e.emp_name, e.salary, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;
SELECT d.dept_name, e.emp_name, e.salary
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;
