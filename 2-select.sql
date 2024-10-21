-- SELECT columnname newname FROM tablename;
-- SELECT columnname AS newname FROM tablename;

SELECT last_name surname FROM customer;
SELECT last_name AS surname FROM customer;
-- aynı sonucu verir
-- geçici olarak column'un ismi değiştirilir

SELECT last_name AS "last name" FROM customer;
-- yeni column'un isminde boşluk varsa tırnak işaretinin içinde yazılmalıdır

SELECT first_name || ' ' || last_name, email FROM customer;
-- first_name ve last_name column'larını birleştirir
-- yeni column'un ismi belirsiz kalır

SELECT first_name || ' ' || last_name AS full_name, email FROM customer;
-- first_name ve last_name column'larını birleştirir
-- yeni column'un ismi full_name olur

SELECT first_name || ' ' || last_name full_name, email FROM customer;
-- first_name ve last_name column'larını birleştirir
-- yeni column'un ismi full_name olur