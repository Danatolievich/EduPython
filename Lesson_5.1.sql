-- Задача 1 («Операторы, фильтрация, сортировка и ограничение»)
USE Lesson5;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) COMMENT 'Имя покупателя',
  birthday DATE COMMENT 'Дата рождения',
  created_at VARCHAR(100),
  updated_at VARCHAR(100)
);

INSERT INTO
  users (name, birthday, created_at, updated_at)
 VALUES
  ('Иван', '1991-08-19', '04.09.2013 09:01', '04.09.2013 09:01'),
  ('Олег', '1985-10-01', '24.01.2013 09:01', '24.01.2013 09:01'),
  ('Антон', '1981-01-13', '18.08.2012 16:15', '18.08.2012 16:15'),
  ('Андрей', '1981-09-21', '11.07.2012 16:15', '11.07.2012 16:15'),
  ('Анастасия', '1970-12-02', '02.07.2012 10:10', '02.07.2012 10:10'),
  ('Ольга', '2015-03-12', '03.01.2012 9:50', '03.01.2012 9:50')
  ;

 SELECT * FROM users;
 
-- Задача 2 («Операторы, фильтрация, сортировка и ограничение»)
USE Lesson5;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) COMMENT 'Имя покупателя',
  birthday DATE COMMENT 'Дата рождения',
  created_at VARCHAR(100),
  updated_at VARCHAR(100)
);

INSERT INTO
  users (name, birthday, created_at, updated_at)
 VALUES
  ('Иван', '1991-08-19', '04.09.2013 09:01', '04.09.2013 09:01'),
  ('Олег', '1985-10-01', '24.01.2013 09:01', '24.01.2013 09:01'),
  ('Антон', '1981-01-13', '18.08.2012 16:15', '18.08.2012 16:15'),
  ('Андрей', '1981-09-21', '11.07.2012 16:15', '11.07.2012 16:15'),
  ('Анастасия', '1970-12-02', '02.07.2012 10:10', '02.07.2012 10:10'),
  ('Ольга', '2015-03-12', '03.01.2012 9:50', '03.01.2012 9:50')
  ;

UPDATE users
SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
    updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');
   
ALTER TABLE users CHANGE created_at created_at_dt DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE users CHANGE updated_at updated_at_dt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

SELECT * FROM users;

-- Задача 3 («Операторы, фильтрация, сортировка и ограничение»)
USE Lesson5;
DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запасы на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO
  storehouses_products (storehouse_id, product_id, value)
VALUES
  (1, 345, 3),
  (1, 845, 0),
  (1, 249, 87),
  (1, 749, 14),
  (1, 289, 0),
  (1, 099, 19);
 
SELECT * FROM storehouses_products
ORDER BY CASE WHEN value = 0 then 2 else 1 end, value;


