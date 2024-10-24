SELECT  'Hola!'  AS tipo_nombre
FROM customers;

SELECT city, company_name, contact_name
FROM customers
WHERE city LIKE "A%" OR city LIKE "B%";

SELECT city, company_name, contact_name, COUNT(order_id) as numero_pedidos
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
WHERE city LIKE "l%"
GROUP BY city, company_name, contact_name;

SELECT country, contact_name, company_name
FROM customers
WHERE country NOT IN ("USA");

SELECT contact_name
FROM customers
WHERE contact_name NOT LIKE "_a%";

/*EJERCICIO: Extraed todos los nombres y apellidos de los clientes y empleados que tenemos en la BBDD:
 ¿Ambas tablas tienen las mismas columnas para nombre y apellido? Tendremos que combinar dos columnas usando concat para unir dos columnas.*/
 
 SELECT concat(first_name, last_name) AS "Nombre completo"
 FROM employees
 UNION
 SELECT contact_name
 FROM customers;
