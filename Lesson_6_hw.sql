USE vk;

-- ������� ������
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ������� ����� ������
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
-- ��������� �����
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

-- ��������
SELECT * FROM likes LIMIT 10;

-- ��������� ������� ����� (�� �������� �������� ��) - ��������� �������� ������ ��� ������
ALTER TABLE profiles -- ��� �������
  ADD CONSTRAINT profiles_user_id_fk --�������� �� ������� (���) + ���� ������������� "_" ��� ���� � "_" fk (������� ����) - �������� ��� �������_��� ����_fk
    FOREIGN KEY (user_id) REFERENCES users(id) -- foreign key ��� ��� ����, REFERENCES ��� ���� ��������� ������ �������� ������� � ���� � ������� () �������� - communities(id) 
      ON DELETE CASCADE, - �������� �� ������� ��������� � ALTER TABLE, ����� ������.
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;
      
     
     
-- ���������� ��� ������ �������� ������ (�����) - ������� ��� �������?
SELECT  gender -- ��������
        , COUNT(*) AS total
        , SUM(CASE WHEN gender = 'male' THEN 1 ELSE 0 END) AS male
        , SUM(CASE WHEN gender = 'female' THEN 1 ELSE 0 END) AS female
FROM    gender2 -- ��������
GROUP BY
       total_male_female
       
-- ���������� ���������� ������ ������� �������� 10 ����� ������� �������������
SELECT top 100 * FROM gender -- ��������
        , SUM(likes) AS likesTotal 
FROM gender2 -- ��������
GROUP BY
       first_10_likes
       
-- ����� 10 �������������, ������� ��������� ���������� ���������� 
-- � ������������� ���������� ���� (�������� ���������� ���������� ���������� ��������������) - �������� �� ���������� ������ ��� ���������� �������� (�����, ����, �����).
       
       

