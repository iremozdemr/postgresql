SELECT f.title
FROM film AS f;
-- film yerine f kullanılır

SELECT f.title
FROM film f;
-- film yerine f kullanılır

SELECT c.customer_id, c.first_name, p.amount, p.payment_date
FROM customer c
INNER JOIN payment p 
ON p.customer_id = c.customer_id;

SELECT f1.title, f2.title, f1.length
FROM film f1
INNER JOIN film f2
ON f1.film_id <> f2.film_id AND f1.length = f2.length;