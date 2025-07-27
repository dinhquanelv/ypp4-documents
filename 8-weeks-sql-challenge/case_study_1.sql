IF DB_ID('CaseStudy1') IS NULL
BEGIN
    CREATE DATABASE CaseStudy1;
END;
GO

USE CaseStudy1;
GO

IF OBJECT_ID('sales', 'U') IS NOT NULL DROP TABLE sales;
IF OBJECT_ID('menu', 'U') IS NOT NULL DROP TABLE menu;
IF OBJECT_ID('members', 'U') IS NOT NULL DROP TABLE members;

CREATE TABLE members (
    customer_id VARCHAR(1),
    join_date DATE
);

CREATE TABLE menu (
    product_id INT,
    product_name VARCHAR(10),
    price INT
);

CREATE TABLE sales (
    customer_id VARCHAR(1),
    order_date DATE,
    product_id INT
);

INSERT INTO members (customer_id, join_date) VALUES
('A', '2021-01-07'),
('B', '2021-01-09');

INSERT INTO menu (product_id, product_name, price) VALUES
(1, 'sushi', 10),
(2, 'curry', 15),
(3, 'ramen', 12);

INSERT INTO sales (customer_id, order_date, product_id) VALUES
('A', '2021-01-01', 1),
('A', '2021-01-01', 2),
('A', '2021-01-07', 2),
('A', '2021-01-10', 3),
('A', '2021-01-11', 3),
('A', '2021-01-11', 3),
('B', '2021-01-01', 2),
('B', '2021-01-02', 2),
('B', '2021-01-04', 1),
('B', '2021-01-11', 1),
('B', '2021-01-16', 3),
('B', '2021-02-01', 3),
('C', '2021-01-01', 3),
('C', '2021-01-01', 3),
('C', '2021-01-07', 3);

-- 1. What is the total amount each customer spent at the restaurant?
SELECT s.customer_id, SUM(m.price) AS total_spent
FROM sales s
JOIN menu m ON m.product_id = s.product_id
GROUP BY s.customer_id

-- 2. How many days has each customer visited the restaurant?
SELECT customer_id, COUNT(DISTINCT order_date) AS total_visited
FROM sales 
GROUP BY customer_id

-- 3. What was the first item from the menu purchased by each customer?
SELECT customer_id, product_name
FROM (
    SELECT 
        s.customer_id, 
        s.order_date, 
        s.product_id, 
        m.product_name,
        ROW_NUMBER() OVER (
            PARTITION BY s.customer_id
            ORDER BY s.order_date, s.product_id
        ) AS rn
    FROM sales s
    JOIN menu m ON m.product_id = s.product_id
    ) AS ranked
WHERE rn = 1

-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
SELECT TOP 1 m.product_name, COUNT(*) AS total_purchased
FROM sales s
JOIN menu m ON m.product_id = s.product_id
GROUP BY m.product_name
ORDER BY total_purchased DESC

-- 5. Which item was the most popular for each customer?
WITH customer_orders AS (
    SELECT 
        s.customer_id, 
        m.product_name, 
        COUNT(*) AS order_count,
        ROW_NUMBER() OVER (
            PARTITION BY s.customer_id
            ORDER BY COUNT(*) DESC
        ) AS ranked
    FROM sales s
    JOIN menu m ON m.product_id = s.product_id
    GROUP BY s.customer_id, m.product_name
)

SELECT customer_id, product_name
FROM customer_orders
WHERE ranked = 1

-- 6. Which item was purchased first by the customer after they became a member?
WITH item_member AS (
    SELECT 
        s.customer_id, 
        m.product_name,
        s.order_date,
        mb.join_date,
        ROW_NUMBER() OVER (
            PARTITION BY s.customer_id
            ORDER BY s.order_date ASC
        ) AS ranked
    FROM sales s
    JOIN members mb ON mb.customer_id = s.customer_id
    JOIN menu m ON m.product_id = s.product_id
    WHERE s.order_date >= mb.join_date
)

SELECT customer_id, product_name
FROM item_member
WHERE ranked = 1

-- 7. Which item was purchased just before the customer became a member?
WITH item_member AS (
    SELECT 
        s.customer_id, 
        m.product_name,
        s.order_date,
        mb.join_date,
        ROW_NUMBER() OVER (
            PARTITION BY s.customer_id
            ORDER BY s.order_date DESC
        ) AS ranked
    FROM sales s
    JOIN members mb ON mb.customer_id = s.customer_id
    JOIN menu m ON m.product_id = s.product_id
    WHERE s.order_date < mb.join_date
)

SELECT customer_id, product_name
FROM item_member
WHERE ranked = 1

-- 8. What is the total items and amount spent for each member before they became a member?
SELECT 
    s.customer_id, 
    COUNT (*) AS total_item,
    SUM(m.price) AS amount_spent
FROM sales s
JOIN members mb ON mb.customer_id = s.customer_id
JOIN menu m ON m.product_id = s.product_id
WHERE s.order_date < mb.join_date
GROUP BY s.customer_id

-- 9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
SELECT 
   s.customer_id,
   SUM(
        CASE
            WHEN m.product_name = 'sushi' THEN m.price * 10 * 2
            ELSE m.price * 10
        END
   ) AS total_ponit
FROM sales s
JOIN menu m ON m.product_id = s.product_id
GROUP BY s.customer_id

-- 10. In the first week after a customer joins the program (including their join date) 
-- they earn 2x points on all items, not just sushi - 
-- how many points do customer A and B have at the end of January?
SELECT 
   s.customer_id,
   SUM(
       CASE
          WHEN s.order_date BETWEEN mb.join_date AND DATEADD(day, 6, mb.join_date) THEN m.price * 10 * 2
          WHEN m.product_name = 'sushi' THEN m.price * 10 * 2
          ELSE m.price * 10
       END
   ) AS total_ponit
FROM sales s
JOIN members mb ON mb.customer_id = s.customer_id
JOIN menu m ON m.product_id = s.product_id
WHERE s.order_date >= mb.join_date AND s.order_date < '2021-02-01' AND s.customer_id IN ('A', 'B')
GROUP BY s.customer_id
