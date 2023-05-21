CREATE TABLE orders (
id INT PRIMARY KEY,
customer_id INT,
order_date VARCHAR(50),
total_amount INT
);


-- Group orders by customer_id and calculate the total amount for each customer
SELECT customer_id, SUM(total_amount) as total_spent
FROM orders
GROUP BY customer_id;

-- Group orders by customer_id and show only those customers whose total spending is greater than 80
SELECT customer_id, SUM(total_amount) as total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 80;