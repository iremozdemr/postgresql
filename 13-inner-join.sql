SELECT * 
FROM customer;

SELECT * 
FROM payment;

SELECT * 
FROM staff;

SELECT c.customer_id, c.first_name, c.last_name, p.payment_date
FROM customer as c
INNER JOIN payment as p
ON c.customer_id = p.customer_id;

SELECT c.customer_id, c.first_name, c.last_name, p.payment_date
FROM customer as c
INNER JOIN payment as p
USING(customer_id);

SELECT 
c.first_name ||' '|| c.last_name AS customer_name, 
s.first_name ||' '|| s.last_name AS staff_name, 
p.payment_date
FROM customer as c
INNER JOIN payment as p
ON c.customer_id = p.customer_id
INNER JOIN staff as s
ON p.staff_id = s.staff_id;