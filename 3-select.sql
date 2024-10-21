-- SELECT columnname FROM tablename ORDER BY sort_expression ASC;
-- SELECT columnname FROM tablename ORDER BY sort_expression DESC;

-- SELECT columnname FROM tablename ORDER BY sort_expression1 ASC, sort_expression2 DESC;

-- postgresql:
-- FROM'u okur
-- SELECT'i okur
-- ORDER BY'ı okur

-- SELECT kısmında bir column için başka bir ad tanımlanmışsa:
-- bu ad ORDER BY'da da kullanılabilir

SELECT first_name, last_name 
FROM customer
ORDER BY 
first_name ASC;

SELECT first_name, last_name 
FROM customer
ORDER BY 
first_name;
-- default ASC kullanılır

SELECT first_name, last_name 
FROM customer
ORDER BY 
first_name ASC,
last_name ASC;
-- aynı first_name'e sahip olan varsa:
-- last_name'e bakılır

SELECT first_name, LENGTH(first_name)
FROM customer
ORDER BY 
LENGTH(first_name);
-- first_name'in uzunluğuna göre sıralar

SELECT first_name, LENGTH(first_name) len
FROM customer
ORDER BY 
len;
-- first_name'in uzunluğuna göre sıralar

SELECT first_name, LENGTH(first_name) AS len
FROM customer
ORDER BY 
len;
-- first_name'in uzunluğuna göre sıralar