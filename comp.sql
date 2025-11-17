-- Create database
CREATE DATABASE companyDB;
USE companyDB;

-- Create employees table with constraints
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    salary INT DEFAULT 30000,
    email VARCHAR(100)
);

-- Add UNIQUE constraint on email
ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE (email);

-- Create products table
CREATE TABLE products (
    id INT,
    name VARCHAR(100),
    price DECIMAL(10,2)
);

-- Add new column stock
ALTER TABLE products
ADD stock INT;

-- Rename column price to unit_price
ALTER TABLE products
RENAME COLUMN price TO unit_price;
