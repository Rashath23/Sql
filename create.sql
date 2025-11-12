-- Create a new database
CREATE DATABASE schoolDB;

-- Select the database
USE schoolDB;

-- Create a simple table named 'students'
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade VARCHAR(10)
);



-- View table structure
DESC students;
