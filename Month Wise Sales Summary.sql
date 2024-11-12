CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, customer_id, amount, order_date) VALUES
(1, 1, 2500, '2023-01-01'),
(2, 1, 3000, '2023-01-15'),
(3, 2, 4500, '2023-01-25');

SELECT * FROM CUSTOMERS
SELECT * FROM ORDERS

/*
Write a SQL query to get the month-wise sales summary
*/

--APPROACH 1
	
SELECT EXTRACT(MONTH FROM ORDER_DATE) AS MONTH,
       SUM(AMOUNT)AS SALES_PER_MONTH
FROM ORDERS
GROUP BY 1

--APPROACH 2
	
SELECT date_trunc('month', order_date) AS month,
       SUM(amount) AS sales_per_month
FROM orders
GROUP BY month;


