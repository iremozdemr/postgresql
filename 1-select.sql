-- SELECT columnname FROM tablename;
-- SELECT columnname1,columnname2,columnname3 FROM tablename;
-- SELECT * FROM tablename;

-- postgresql:
-- FROM'u okur
-- SELECT'i okur

-- select = Select = SELECT

SELECT * FROM customer;
-- tüm column'ları seçer

SELECT first_name FROM customer;

SELECT customer.first_name FROM customer;

SELECT customer.first_name;
-- hata verir

SELECT first_name, last_name, email FROM customer;

SELECT NOW()
-- şu anki tarihi ve saati verir
-- FROM kullanılmadan da SELECT kullanılabilir