-- Answer - 1.
SELECT o.order_date, o.total_amount, o.status, c.name AS customer_name
FROM orders o
JOIN customers c ON o.customer_id = c.id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
WHERE c.name = 'Jonson'
GROUP BY oi.order_id, o.customer_id, o.order_date;

-- Answer - 2.
SELECT p.category, SUM(oi.price * oi.quantity) AS total_revenue
FROM orders o
JOIN  order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
WHERE LOWER(o.status) = 'completed'
GROUP BY p.category;

-- Answer - 3.
SELECT name, description, price, category
FROM products
ORDER BY price DESC
LIMIT 1;

-- Answer - 4.
SELECT c.name, c.email, SUM(o.total_amount) AS total_spending
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.id
ORDER BY total_spending DESC
LIMIT 5;

-- Answer - 5.
SELECT c.name, c.email
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
WHERE o.id IS NULL;
