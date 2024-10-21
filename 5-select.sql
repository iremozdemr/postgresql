CREATE TABLE students(
  student_id SERIAL PRIMARY KEY, 
  first_name VARCHAR, 
  last_name VARCHAR
);

INSERT INTO
students (first_name, last_name)
VALUES 
('a', 'a'), ('a', 'a'), ('a', NULL), (NULL, 'a'), (NULL, NULL), ('b', 'b'), ('a', 'f'), ('a', 'b');

SELECT student_id, first_name, last_name
FROM students;

SELECT DISTINCT first_name
FROM students;
-- first_name'i farklı olan satırları seçer

SELECT DISTINCT last_name
FROM students;
-- last_name'i farklı olan satırları seçer

SELECT DISTINCT first_name, last_name
FROM students;
-- first_name'i ve last_name'i birlikte diğer satırlardan farklı olan satırları seçer