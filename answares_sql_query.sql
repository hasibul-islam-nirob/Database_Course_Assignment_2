1.
SELECT o.order_date, o.total_amount, o.status
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
JOIN dishes d ON oi.dish_id = d.id
JOIN users u ON o.user_id = u.id
WHERE u.id = 4
GROUP BY o.id, o.order_date
ORDER BY o.order_date DESC;

2.
SELECT d.cuisine, SUM(oi.quantity * d.price) AS total_revenue
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
JOIN dishes d ON oi.dish_id = d.id
WHERE o.status = 'Completed'
GROUP BY d.cuisine
ORDER BY total_revenue DESC;


3.
SELECT d.id, d.name, d.description, d.price, COUNT(oi.dish_id) AS times_ordered, d.cuisine
FROM order_items oi
JOIN dishes d ON oi.dish_id = d.id
GROUP BY d.id, d.name, d.description, d.price
ORDER BY times_ordered DESC
LIMIT 1;

4.
SELECT d.id, d.name, MAX(o.order_date) AS last_order_date, COUNT(oi.dish_id) as times_ordered
FROM dishes d
LEFT JOIN order_items oi ON d.id = oi.dish_id
LEFT JOIN orders o ON oi.order_id = o.id
GROUP BY d.id, d.name
ORDER BY last_order_date IS NULL DESC, last_order_date ASC, times_ordered ASC
LIMIT 1;

5.
SELECT u.id, u.name, COUNT(o.id) AS total_orders, SUM(o.total_amount) AS total_spent
FROM users u
JOIN orders o ON u.id = o.user_id
GROUP BY u.id, u.name
ORDER BY total_orders DESC, total_spent DESC
LIMIT 10;

6.
-- Total orders today
SELECT COUNT(*) AS total_orders_today
FROM orders
WHERE DATE(order_date) = CURDATE();

-- Total incomplete orders
SELECT COUNT(*) AS total_incomplete_orders
FROM orders
WHERE status IN ('Processing');

-- Total orders this week
SELECT COUNT(*) AS total_orders_this_week
FROM orders
WHERE YEARWEEK(order_date, 1) = YEARWEEK(CURDATE(), 1);

7.
SELECT d.id, d.name, d.description, d.price, d.cuisine
FROM dishes d
WHERE d.name LIKE '%Biryani%' 
   AND d.description LIKE '%Fragrant%' 
   AND d.cuisine LIKE '%Ban%'
ORDER BY d.price DESC;


SELECT d.id, d.name, d.description, d.price, d.cuisine
FROM dishes d
WHERE d.name LIKE '%Biryani%' 
   OR d.description LIKE '%Fragrant%' 
   OR d.cuisine LIKE '%Ban%'
ORDER BY d.price DESC;


8.
SELECT u.name, o.order_date, o.total_amount, o.status, 
       GROUP_CONCAT(d.name ORDER BY d.name) AS dishes
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
JOIN dishes d ON oi.dish_id = d.id
JOIN users u ON o.user_id = u.id
WHERE u.name LIKE '%Hasibul%'
  AND o.order_date BETWEEN '2022-01-01' AND '2024-09-30'
  AND d.name LIKE '%Biryani%'
GROUP BY o.id, o.order_date, o.total_amount, o.status
ORDER BY o.order_date DESC;

9.
SELECT d.cuisine, SUM(oi.quantity * d.price) AS total_revenue
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
JOIN dishes d ON oi.dish_id = d.id
WHERE o.status = 'Completed'
  AND o.order_date BETWEEN '2024-01-01' AND '2024-09-30'
GROUP BY d.cuisine
ORDER BY total_revenue DESC;

10.
SELECT d.id, d.name, d.description, d.price, d.cuisine
FROM dishes d
WHERE (d.name LIKE '%%' OR d.description LIKE '%%' OR d.cuisine LIKE '%%')
  AND d.price BETWEEN 151 AND 500
ORDER BY d.price DESC;

