CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100)
);

INSERT INTO products (product_id, product_name) VALUES
(1, 'Laptop'),
(2, 'Mobile'),
(3, 'Tablet');

SELECT * FROM PRODUCTS


/*
Write a SQL query to find the total number of products.
*/

SELECT COUNT(*) AS TOTAL_NO_OF_PRODUCTS
FROM PRODUCTS