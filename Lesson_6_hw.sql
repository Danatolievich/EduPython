USE vk;

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

SELECT * FROM messages;
SELECT * FROM likes ;
-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

-- Проверка
SELECT * FROM likes LIMIT 10;

-- Добавляем внешние ключи (не забываем обновить ДБ) - исправить название таблиц под нужное
ALTER TABLE profiles -- имя таблицы
  ADD CONSTRAINT profiles_user_id_fk --название по таблице (имя) + знак подчёркивания "_" имя поля и "_" fk (внешний ключ) - например имя таблицы_имя поля_fk
    FOREIGN KEY (user_id) REFERENCES users(id) -- foreign key это имя поля, REFERENCES это куда ссылается писать название таблицы и поле в скобках () например - communities(id) 
      ON DELETE CASCADE, - удаление из таблицы указанной в ALTER TABLE, можно убрать.
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;
      
     
     
-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT  gender -- изменить
        , COUNT(*) AS total
        , SUM(CASE WHEN gender = 'male' THEN 1 ELSE 0 END) AS male
        , SUM(CASE WHEN gender = 'female' THEN 1 ELSE 0 END) AS female
FROM    gender2 -- изменить
GROUP BY
       total_male_female
       
-- Подсчитать количество лайков которые получили 10 самых молодых пользователей
SELECT top 100 * FROM gender -- изменить
        , SUM(likes) AS likesTotal 
FROM gender2 -- изменить
GROUP BY
       first_10_likes
       
-- Найти 10 пользователей, которые проявляют наименьшую активность 
-- в использовании социальной сети (критерии активности необходимо определить самостоятельно) - возможно по количеству лайков или добавлению контента (видео, фото, посты).
       
       

