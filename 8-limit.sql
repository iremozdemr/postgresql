-- SELECT columnname
-- FROM tablename
-- WHERE condition
-- ORDER BY sort_expression
-- LIMIT row_count;

-- row_count = 0 ise:
-- çıktı empty list olur

-- row_count = NULL ise:
-- çıktı LIMIT kullanılmadığında olan çıktı ile aynı çıktı olur

-- FETCH ve LIMIT aynı şeyi yapar

SELECT first_name
FROM customer
WHERE first_name LIKE 'Ann%'
ORDER BY first_name 
LIMIT 0;

SELECT first_name
FROM customer
WHERE first_name LIKE 'Ann%'
ORDER BY first_name 
LIMIT NULL;

SELECT first_name
FROM customer
WHERE first_name LIKE 'Ann%'
ORDER BY first_name;

SELECT film_id, title, release_year
FROM film
ORDER BY film_id
LIMIT 4;
-- 4 satır yazar

SELECT film_id, title, release_year
FROM film
ORDER BY film_id
LIMIT 4 
OFFSET 3;
-- ilk 3 satırı atlar
-- 4 satır yazar

SELECT film_id, title
FROM film
ORDER BY title
FETCH FIRST ROW ONLY;

SELECT film_id, title
FROM film
ORDER BY title
FETCH FIRST 1 ROW ONLY;

SELECT film_id, title
FROM film
ORDER BY title
FETCH FIRST 5 ROW ONLY;

SELECT film_id, title
FROM film
ORDER BY title
OFFSET 5 ROW
FETCH FIRST 5 ROW ONLY;

-- OFFSET önce 
-- FETCH sonra yazılabilir

-- FETCH önce 
-- OFFSET sonra yazılabilir