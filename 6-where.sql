-- SELECT columnname
-- FROM tablename
-- WHERE condition
-- ORDER BY sort_expression;

-- postgresql:
-- FROM'u okur
-- WHERE'i okur
-- SELECT'i okur
-- ORDER BY'ı okur

-- =		equal
-- !=		not equal
-- <> 		not equal
-- >		greater than
-- <		less than
-- >=		greater than or equal
-- <=		less than or equal
-- AND		logical operator and
-- OR		logical operator or
-- IN		return true if a value matches any value in a list
-- BETWEEN	return true if a value is between a range of values
-- LIKE		return true if a value matches a pattern
-- IS NULL	return true if a value is NULL
-- NOT		negate the result of other operators

SELECT first_name, last_name
FROM customer
WHERE first_name = 'Jamie';
-- doğru kullanım

SELECT first_name, last_name
FROM customer
WHERE first_name = "Jamie";
-- yanlış kullanım

SELECT first_name, last_name
-- çıktıda:
-- önce first_name 
-- sonra last_name yazar

SELECT last_name, first_name
-- çıktıda:
-- önce last_name
-- sonra first_name yazar

SELECT first_name, last_name
FROM customer
WHERE first_name = 'Jamie' AND last_name = 'Rice';

SELECT first_name, last_name
FROM customer
WHERE first_name = 'Jamie' OR last_name = 'Adam';

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Ann%';
-- Ann% :
-- Ann ile başlayan bir string

SELECT first_name, LENGTH(first_name)
FROM customer
WHERE first_name LIKE 'A%' AND LENGTH(first_name) > 5;

SELECT first_name, LENGTH(first_name)
FROM customer
WHERE first_name LIKE 'A%' AND LENGTH(first_name) > 5
ORDER BY LENGTH(first_name);

SELECT first_name, LENGTH(first_name) name_length
FROM customer
WHERE first_name LIKE 'A%' AND LENGTH(first_name) > 5
ORDER BY name_length;

-- SELECT kısmında bir column için başka bir ad tanımlanmışsa:
-- bu ad ORDER BY'da kullanılabilir
-- bu ad WHERE'de kullanılamaz

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'B%' AND last_name <> 'Motley';

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'B%' AND last_name != 'Motley';

SELECT payment_id, amount, payment_date
FROM payment
WHERE payment_date::date IN ('2007-02-15', '2007-02-16');
-- payment_date column'u:
-- timestamp şeklindedir
-- time ve date içerir
-- sadece date'i almak için cast operatörü :: kullanılır

-- IN:

SELECT film_id, title
FROM film
WHERE film_id IN (1, 2, 3);

SELECT film_id, title
FROM film
WHERE film_id = 1 OR film_id = 2 OR film_id = 3;

-- NOT IN:

SELECT film_id, title
FROM film
WHERE film_id NOT IN (1, 2, 3);

SELECT film_id, title
FROM film
WHERE film_id != 1 AND film_id != 2 AND film_id != 3;

-- BETWEEN:

SELECT film_id, title
FROM film
WHERE film_id BETWEEN 5 AND 7;

SELECT film_id, title
FROM film
WHERE film_id >= 5 AND film_id <= 7;

-- NOT BETWEEN:

SELECT film_id, title
FROM film
WHERE film_id NOT BETWEEN 5 AND 7;

SELECT film_id, title
FROM film
WHERE film_id < 5 OR film_id > 7;