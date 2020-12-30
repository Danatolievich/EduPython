-- Залача 1 «Агрегация данных»
USE Lesson5;
SELECT * FROM users;
SELECT AVG(TIMESTAMPDIFF(YEAR, birthday, NOW())) AS age FROM users;


-- Задача 2 «Агрегация данных»
USE Lesson5;
select name, birthday,
       DAYNAME(birthday) as day_name,
       COUNT(birthday) as total_day_name,
-- FROM users
GROUP by DAYNAME(birthday)
ORDER by total_day_name;
