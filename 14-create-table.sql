-- \d accounts
-- accounts isimli table hakkında bilgi verir

-- schema'da aynı isimli birden fazla table olmamalıdır
-- schema'da aynı isimli birden fazla table olursa hata verir

-- column constraints:
-- primary key
-- foreign key
-- not null
-- unique
-- check
-- default

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    grade INT CHECK (grade BETWEEN 0 AND 100) 
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    status TEXT DEFAULT 'pending' 
);

CREATE TABLE accounts (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR (50) UNIQUE NOT NULL,
  password VARCHAR (50) NOT NULL,
  email VARCHAR (255) UNIQUE NOT NULL,
  created_at TIMESTAMP NOT NULL,
  last_login TIMESTAMP
);