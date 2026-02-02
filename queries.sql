-- Repeat customers
SELECT
  customer_id,
  COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- Customer value
SELECT
  customer_id,
  SUM(order_amount) AS lifetime_value
FROM orders
GROUP BY customer_id
ORDER BY lifetime_value DESC;
