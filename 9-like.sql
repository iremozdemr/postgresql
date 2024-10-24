-- LIKE 		~~
-- NOT LIKE 	!~~
-- ILIKE 		~~*
-- NOT ILIKE 	!~~*

-- ILIKE -> case insensitive

-- _:
-- 1 karakter

-- %:
-- 0 veya daha fazla karakter

SELECT 'a' LIKE 'a' AS result;

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'El%'
ORDER BY first_name;
-- first_name'de El ile başlayanları verir

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '%ne'
ORDER BY first_name;
-- first_name'de ne ile bitenleri verir

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '%ab%'
ORDER BY first_name;
-- first_name'de ab içerenleri verir

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '_her%'
ORDER BY first_name;

SELECT first_name, last_name
FROM customer
WHERE first_name NOT LIKE 'Jen%'
ORDER BY first_name;

SELECT first_name, last_name
FROM customer
WHERE first_name ILIKE 'BAR%'
ORDER BY first_name;

SELECT first_name, last_name
FROM customer
WHERE first_name NOT ILIKE 'BAR%'
ORDER BY first_name;