CREATE TABLE orders (
         order_id INT PRIMARY KEY, 
         customer_id INT, 
         order_date DATE
     );
     INSERT INTO orders VALUES 
         (1, 1, '2024-01-10'), 
         (2, 2, '2024-01-15'), 
         (3, 3, '2024-02-20');

SELECT * FROM ORDERS

/*
List all orders along with customer names.
*/

SELECT 
    o.order_id,
    c.customer_name
FROM 
    orders o
JOIN 
    customers c ON o.customer_id = c.customer_id;
