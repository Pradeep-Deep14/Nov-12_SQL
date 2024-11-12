CREATE TABLE customers (
         customer_id INT, 
         customer_name VARCHAR(100)
     );
     CREATE TABLE orders (
         order_id INT, 
         customer_id INT 
     );
     INSERT INTO customers VALUES 
         (1, 'Rajesh Kumar'), 
         (2, 'Priya Singh'), 
         (3, 'Anita Desai'), 
         (4, 'Vikram Yadav');
     INSERT INTO orders VALUES 
         (101, 1), 
         (102, 2), 
         (103, 1), 
         (104, 3);

SELECT * FROM CUSTOMERS

SELECT * FROM ORDERS

/*
Retrieve all customers and their orders.
*/

SELECT C.CUSTOMER_NAME,
       O.ORDER_ID
FROM CUSTOMERS C 
JOIN ORDERS O 
ON C.CUSTOMER_ID=O.CUSTOMER_ID