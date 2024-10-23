SELECT orders.customer_id,customers.company_name,COUNT(orders.order_id) AS id_pedidos
FROM orders
INNER JOIN customers
ON customers.customer_id = orders.customer_id
WHERE ship_country = "UK"
GROUP BY orders.customer_id, customers.company_name;

SELECT customers.company_name, orders.order_date, order_details.quantity
FROM orders
INNER JOIN customers
ON customers.customer_id = orders.customer_id
INNER JOIN order_details
ON orders.order_id = order_details.order_id;

SELECT customers.company_name, orders.order_date, orders.order_id
FROM orders
INNER JOIN customers
ON customers.customer_id = orders.customer_id
WHERE ship_country ="UK";

-- Pendiente 5

SELECT customers.company_name, orders.order_date, orders.order_id
FROM orders
INNER JOIN customers
ON customers.customer_id = orders.customer_id;

-- REVISAR 
SELECT customers.company_name, COUNT(order_details.quantity)
FROM order_details
INNER JOIN customers
ON customers.customer_id = order_details.order_id
WHERE country = "UK"
GROUP BY customers.company_name, customers.customer_id;
