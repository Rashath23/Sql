SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

SELECT *
FROM products
WHERE price > (
    SELECT MIN(price)
    FROM orders
);


SELECT *
FROM customers
WHERE id IN (
    SELECT customer_id
    FROM orders
);

SELECT 
    c.id,
    c.name,
    (SELECT COUNT(*)
     FROM orders o
     WHERE o.customer_id = c.id) AS total_orders
FROM customers c;

SELECT *
FROM products
WHERE EXISTS (
    SELECT 1
    FROM orders
    WHERE orders.product_id = products.id
);
