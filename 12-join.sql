CREATE TABLE students_a (
    a INT PRIMARY KEY,
    name_a VARCHAR (100) NOT NULL
);

CREATE TABLE students_b (
    b INT PRIMARY KEY,
    name_b VARCHAR (100) NOT NULL
);

INSERT INTO students_a (a, name_a)
VALUES (1, 'a'), (2, 'o'), (3, 'b'), (4, 'c');
	
INSERT INTO students_b (b, name_b)
VALUES (1, 'o'), (2, 'a'), (3, 'w'), (4, 'p');

SELECT a, name_a, b, name_b
FROM students_a
INNER JOIN students_b
ON name_a = name_b;

SELECT a, name_a, b, name_b
FROM students_a
LEFT JOIN students_b
ON name_a = name_b;

SELECT a, name_a, b, name_b
FROM students_a
RIGHT JOIN students_b
ON name_a = name_b;

SELECT a, name_a, b, name_b
FROM students_a
FULL OUTER JOIN students_b
ON name_a = name_b;