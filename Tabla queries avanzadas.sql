SELECT MIN(buy_price) AS lowestPrice, MAX(buy_price) AS highestPrice
FROM products;

SELECT AVG(buy_price), COUNT(product_name)
FROM products;

SELECT MAX(freight), MIN(freight)
FROM orders
WHERE ship_country = "UK";

SELECT AVG(unit_price) 
FROM products;

SELECT product_name, unit_price
FROM products
GROUP BY product_name, unit_price
HAVING unit_price > (SELECT AVG(unit_price) FROM products)
ORDER BY unit_price DESC;

SELECT COUNT(discontinued) 
FROM products
WHERE discontinued = 1;

SELECT product_name, product_id
FROM products
WHERE discontinued = 0
ORDER BY product_id DESC
LIMIT 10;

SELECT employee_id, COUNT(order_id) AS total_pedidos, MAX(freight) as maximo
FROM orders
GROUP BY employee_id;

SELECT order_id, shipped_date
FROM orders
WHERE shipped_date IS NOT NULL
ORDER BY employee_id;
