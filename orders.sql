-- 1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name VARCHAR,
    product_price DECIMAL,
    quantity INT
);

-- 2. Add 5 total orders from at least two different people to the orders table. (The person who made this order is indicated by its person_id — refer to the rows you made in Part 1.)
INSERT INTO orders(
    person_id, product_name, product_price, quantity
)
VALUES
(1, 'apple', 2.99, 5),
(2, 'banana', 3.99, 3),
(3, 'orange', 2.49, 6),
(4, 'avocado', 3.99, 3),
(5, 'grapes', 2.59, 7);

-- 3. Select all the records from the orders table.
SELECT * FROM orders;

-- 4. Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- 5. Calculate the total order price for all orders.
SELECT SUM(product_price * quantity) FROM orders;

-- 6. Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders
GROUP BY person_id;