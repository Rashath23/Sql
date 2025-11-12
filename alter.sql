CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2)
);

ALTER TABLE products
ADD sales INT;

ALTER TABLE products
RENAME COLUMN name TO product_name;
