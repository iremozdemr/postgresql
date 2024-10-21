CREATE TABLE select_example(num INT);

INSERT INTO select_example(num) 
VALUES (1), (2), (3), (null);

SELECT num
FROM select_example
ORDER BY num ASC;
-- default NULLS LAST kullanılır

SELECT num
FROM select_example
ORDER BY num ASC NULLS LAST;

SELECT num
FROM select_example
ORDER BY num ASC NULLS FIRST;