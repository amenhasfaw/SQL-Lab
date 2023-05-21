
CREATE TABLE customers (
id INT PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(50)
);

CREATE TABLE orders (
id INT PRIMARY KEY,
customer_id INT,
product_name VARCHAR(50),
quantity INT
);

INSERT INTO customers (id, name, email) VALUES
(1, 'John Doe', 'johndoe@example.com'),
(2, 'Jane Doe', 'janedoe@example.com'),
(3, 'Bob Smith', 'bobsmith@example.com'),
(4, 'Alice Johnson', 'alicejohnson@example.com'),
(5, 'Tom Wilson', 'tomwilson@example.com');

INSERT INTO orders (id, customer_id, product_name, quantity) VALUES
(1, 1, 'Widget', 3),
(2, 1, 'Gizmo', 2),
(3, 2, 'Gadget', 1),
(4, 3, 'Widget', 4),
(5, 4, 'Gizmo', 1),
(6, 5, 'Widget', 2);


-- Performing UNION, INTERSECTION, and MINUS operations:

-- Union of customers and orders tables
SELECT name FROM customers
UNION
SELECT product_name FROM orders;

-- Intersection of customers and orders tables
SELECT name FROM customers
INTERSECT
SELECT name FROM customers WHERE id IN (SELECT customer_id FROM orders);

-- Minus of customers and orders tables
SELECT name FROM customers
MINUS
SELECT name FROM customers WHERE id IN (SELECT customer_id FROM orders);

-- Performing UPDATE, ALTER, DELETE, and DROP operations:

-- Update quantity of product 'Widget' to 5
UPDATE orders SET quantity = 5 WHERE product_name = 'Widget';

-- Add a new column 'phone' to customers table
ALTER TABLE customers ADD COLUMN phone VARCHAR(15);

-- Delete orders for customer with id 2
DELETE FROM orders WHERE customer_id = 2;

-- Drop orders table
DROP TABLE orders;