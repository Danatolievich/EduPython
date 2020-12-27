#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'ab', '2014-04-15 15:24:06', '1985-08-23 23:34:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'esse', '1974-05-19 23:51:37', '2011-11-05 12:16:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'ut', '2010-03-14 08:04:49', '1984-07-13 19:30:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'sint', '1975-12-15 07:59:55', '2002-02-11 06:02:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'reprehenderit', '1990-05-30 16:34:42', '1995-07-25 23:13:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'sapiente', '2003-08-26 21:59:52', '2003-07-24 12:29:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'similique', '1975-05-10 09:35:21', '1996-12-07 21:34:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'dolores', '2007-01-17 20:14:45', '2013-09-10 13:16:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'a', '1979-11-09 19:57:57', '1989-09-28 16:11:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'nisi', '1997-06-30 14:41:00', '2006-02-07 01:43:48');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '1986-07-20 16:43:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 11, '2014-04-14 17:49:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 21, '1990-08-31 11:09:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 31, '1981-04-16 01:47:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 41, '1977-06-22 23:22:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 51, '1994-09-16 23:22:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 61, '2016-04-05 17:12:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 71, '1996-10-18 06:40:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 81, '2001-03-30 03:34:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 91, '2009-07-10 16:02:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1980-12-13 16:08:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 12, '2011-07-10 09:33:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 22, '2005-10-26 05:05:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 32, '1980-05-02 08:34:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 42, '2009-08-05 00:00:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 52, '1980-10-29 14:50:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 62, '1983-04-16 23:26:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 72, '1996-11-10 13:02:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 82, '1970-05-25 02:57:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 92, '1978-10-30 23:05:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2008-11-04 06:06:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 13, '1993-05-08 22:13:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 23, '2020-06-30 23:05:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 33, '1986-01-08 22:38:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 43, '1999-11-19 16:07:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 53, '2004-06-09 00:34:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 63, '1970-07-05 08:11:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 73, '2020-01-23 20:32:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 83, '1983-05-06 13:01:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 93, '2005-04-29 05:33:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2000-07-05 03:34:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 14, '2000-07-24 04:44:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 24, '2003-07-31 06:18:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 34, '2011-06-08 12:07:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 44, '2016-12-27 11:16:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 54, '2012-12-18 00:10:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 64, '1993-10-26 18:55:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 74, '1990-12-25 18:32:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 84, '2005-07-01 07:16:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 94, '2020-05-21 22:19:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2002-07-30 13:15:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 15, '1976-12-30 07:27:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 25, '2012-09-25 12:47:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 35, '1982-07-16 23:35:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 45, '2017-09-21 05:23:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 55, '1998-10-25 04:22:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 65, '1985-03-01 18:58:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 75, '1993-05-14 12:47:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 85, '1975-03-08 01:09:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 95, '1998-05-04 19:23:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2017-05-02 17:08:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 16, '1973-08-26 04:40:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 26, '2018-08-28 01:14:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 36, '2016-08-07 07:04:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 46, '1999-09-03 08:01:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 56, '1970-07-31 15:21:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 66, '2018-03-29 17:20:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 76, '1979-04-27 03:10:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 86, '2020-12-03 09:51:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 96, '1972-08-03 17:43:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '1996-10-07 14:10:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 17, '1977-06-15 18:41:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 27, '1993-01-20 06:17:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 37, '1993-08-12 09:33:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 47, '2004-04-20 20:29:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 57, '1970-10-02 22:40:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 67, '1980-04-24 17:40:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 77, '2019-12-10 19:17:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 87, '2012-12-09 22:49:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 97, '1980-03-18 23:06:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '1996-05-11 03:36:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 18, '1977-05-21 23:44:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 28, '1982-07-31 10:46:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 38, '1996-12-14 04:50:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 48, '2012-10-16 08:00:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 58, '1988-12-02 05:46:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 68, '2020-02-27 00:19:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 78, '2002-06-28 01:37:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 88, '1981-04-10 13:48:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 98, '1989-03-04 08:15:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '1998-06-16 08:13:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 19, '2020-04-24 02:59:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 29, '2009-11-20 16:47:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 39, '1987-11-21 06:07:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 49, '1989-12-28 06:27:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 59, '1992-07-06 00:43:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '1996-04-26 01:55:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 79, '2009-04-04 08:07:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 89, '1972-05-28 03:54:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 99, '1991-02-21 12:09:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2015-10-22 03:55:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 20, '2004-06-22 15:16:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 30, '1981-03-15 12:39:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 40, '2015-01-18 20:10:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 50, '2011-12-12 01:24:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 60, '1985-05-08 05:41:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 70, '2006-08-13 06:22:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 80, '1993-07-07 12:33:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 90, '2014-01-24 20:25:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 100, '1973-01-30 21:19:35');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 44, 3, '1986-09-01 12:01:28', '2001-02-20 11:20:09', '2000-09-19 08:28:46', '2015-01-21 20:28:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 5, 2, '1970-02-12 14:18:24', '1988-02-04 16:35:00', '1981-10-03 16:06:15', '2015-09-09 18:34:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 74, 5, '1975-03-26 17:20:57', '1975-08-25 15:54:58', '1988-01-30 00:38:55', '1994-05-25 03:07:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 90, 1, '1976-04-12 20:19:02', '1976-03-17 04:29:38', '1986-09-03 13:48:19', '1998-11-22 15:49:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 86, 4, '2011-08-15 13:15:28', '1994-12-15 22:11:43', '1994-06-04 11:41:05', '1979-02-15 09:45:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 22, 4, '2007-04-19 22:13:07', '1972-02-21 02:28:27', '2006-08-11 20:53:41', '1982-10-09 18:27:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 99, 5, '2008-08-04 19:49:15', '1980-07-30 18:30:20', '2008-05-27 23:41:43', '1974-12-11 22:37:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 38, 3, '2013-05-19 19:13:21', '2001-10-02 11:10:19', '2014-06-21 18:33:18', '2018-08-10 03:45:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 78, 2, '1992-10-11 04:26:02', '1995-03-01 16:24:42', '2007-08-21 22:15:14', '1999-05-13 05:39:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 88, 4, '2013-09-28 13:19:42', '2017-08-17 09:32:21', '1983-08-11 23:07:48', '2010-02-20 05:22:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 94, 2, '2013-04-23 13:16:50', '2013-03-15 16:55:50', '1996-04-14 04:49:36', '1981-12-18 15:22:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 40, 1, '1988-07-15 22:35:05', '1976-12-10 09:58:33', '1996-06-28 00:51:02', '1998-08-18 05:49:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 58, 3, '1986-08-17 19:58:07', '2019-10-03 08:39:29', '2001-06-05 13:35:24', '1970-01-25 04:24:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 3, 1, '1995-08-09 16:57:28', '1984-10-24 07:26:50', '1979-03-18 14:38:20', '1981-07-21 04:41:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 45, 3, '1980-12-06 17:35:36', '1996-02-16 20:41:07', '1986-11-06 23:34:11', '1986-02-13 04:53:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 63, 1, '1989-01-15 05:35:05', '1981-11-16 05:49:04', '2014-11-15 16:06:22', '1978-12-26 07:35:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 69, 5, '1998-06-30 21:06:31', '1989-09-24 16:13:51', '1971-04-14 23:57:48', '2009-09-18 09:25:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 10, 2, '2013-05-21 17:41:04', '1977-10-30 22:09:01', '2001-03-27 00:52:00', '2015-07-31 13:42:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 1, 1, '1978-11-15 06:54:24', '1975-01-12 08:34:44', '2000-07-16 06:49:14', '1974-06-11 19:14:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 8, 5, '1997-12-30 04:37:39', '1996-07-26 03:21:23', '1991-12-12 22:57:22', '1973-12-18 01:32:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 15, 5, '1980-03-30 01:53:00', '1997-04-22 21:04:29', '2013-12-14 23:43:25', '2001-03-16 23:37:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 93, 4, '1976-06-24 22:33:54', '1984-10-17 08:59:02', '1985-05-06 00:59:23', '1995-03-29 02:43:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 91, 3, '1980-12-14 01:30:47', '1979-11-23 22:51:41', '2004-01-13 07:02:09', '2012-01-16 23:59:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 89, 1, '2015-02-25 12:54:51', '2015-12-18 19:25:58', '2001-06-04 06:33:52', '1985-08-01 22:00:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 59, 4, '1993-08-19 00:39:58', '1977-02-12 00:51:09', '2008-03-24 02:31:32', '1978-05-23 07:42:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 49, 5, '1992-06-14 00:13:44', '2015-03-02 02:33:22', '2000-03-01 22:42:52', '1973-10-18 05:16:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 29, 3, '1981-11-04 01:35:22', '2019-08-27 20:40:55', '2019-05-21 10:30:46', '2009-12-24 09:31:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 2, 2, '2006-04-16 01:31:19', '1980-05-15 19:53:52', '2010-05-28 20:15:34', '2009-12-19 11:37:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 43, 4, '1973-08-04 18:15:42', '1994-09-03 12:04:06', '1975-07-11 08:26:00', '1972-01-05 09:57:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 83, 2, '2015-10-31 21:26:00', '2016-05-09 03:06:44', '1993-08-15 23:23:07', '2014-08-21 23:32:49');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'est', '1995-04-04 18:09:59', '2003-04-22 06:12:20');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'dignissimos', '1975-02-26 14:31:16', '1973-11-06 15:51:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'officiis', '2003-05-27 19:27:51', '1994-09-26 08:37:13');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'perspiciatis', '1982-10-08 11:28:28', '2012-12-20 12:00:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'et', '1988-07-06 12:37:39', '2016-10-07 13:45:02');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` VALUES ('1','1','molestiae','463055',NULL,'1','1997-02-22 03:12:04','1971-02-03 09:18:06'),
('2','2','incidunt','8320036',NULL,'2','1997-06-07 10:47:17','1993-10-20 22:39:49'),
('3','3','atque','62',NULL,'3','1980-06-13 05:31:51','2001-09-27 07:16:33'),
('4','4','sed','4411',NULL,'4','1974-11-09 23:14:19','1976-10-26 14:47:32'),
('5','5','aperiam','8',NULL,'1','1989-05-14 07:32:11','1970-06-23 01:57:41'),
('6','6','cumque','6',NULL,'2','2008-08-07 21:13:30','1996-03-25 08:14:40'),
('7','7','vel','893859157',NULL,'3','1991-05-17 05:32:39','2008-10-31 05:55:36'),
('8','8','labore','35926344',NULL,'4','1985-03-25 03:43:56','2013-04-14 00:30:46'),
('9','9','adipisci','809632',NULL,'1','1980-08-19 21:53:16','2015-10-12 19:33:57'),
('10','10','quis','789563',NULL,'2','2014-11-24 02:29:20','1984-07-16 23:55:06'),
('11','11','beatae','122730',NULL,'3','1974-07-22 07:07:44','1991-08-12 17:37:54'),
('12','12','illum','49',NULL,'4','2015-02-03 09:00:55','1993-04-02 09:16:50'),
('13','13','amet','599',NULL,'1','2017-06-19 20:08:48','1978-09-07 19:51:42'),
('14','14','ad','92668',NULL,'2','1975-03-27 05:08:36','2016-11-24 08:47:07'),
('15','15','nemo','83',NULL,'3','1979-11-20 02:30:01','1982-10-15 19:15:38'),
('16','16','a','240089',NULL,'4','1988-12-30 04:30:05','1990-02-17 09:40:17'),
('17','17','consectetur','3',NULL,'1','1997-09-23 02:50:29','2005-01-13 15:51:56'),
('18','18','atque','251',NULL,'2','1994-05-25 01:15:25','2004-06-26 16:58:22'),
('19','19','possimus','48',NULL,'3','2018-10-24 06:52:48','1980-11-25 10:29:27'),
('20','20','sit','0',NULL,'4','1987-03-09 15:45:48','1986-01-20 21:37:43'),
('21','21','eos','545667577',NULL,'1','2004-10-18 12:39:48','2002-12-12 06:16:43'),
('22','22','nesciunt','6720',NULL,'2','2005-02-27 03:43:46','2016-08-20 04:35:46'),
('23','23','nihil','9473702',NULL,'3','1973-06-29 17:40:47','2007-11-28 18:41:23'),
('24','24','quia','33435567',NULL,'4','1985-09-29 09:13:45','2006-04-08 03:30:17'),
('25','25','rem','255490485',NULL,'1','1997-02-09 12:49:55','2004-04-14 23:31:57'),
('26','26','facere','672',NULL,'2','2007-08-14 07:37:57','2000-10-14 01:45:25'),
('27','27','suscipit','45',NULL,'3','2007-09-03 04:05:24','1997-02-15 12:18:07'),
('28','28','rerum','0',NULL,'4','1995-01-13 18:51:55','1974-07-01 07:01:45'),
('29','29','beatae','9695',NULL,'1','2019-11-07 06:41:16','2009-01-06 13:44:42'),
('30','30','perferendis','744882',NULL,'2','2004-11-11 10:29:30','2016-06-25 11:29:53'),
('31','31','tempore','7212398',NULL,'3','2009-12-29 08:56:07','2010-12-06 20:25:31'),
('32','32','ea','810128',NULL,'4','1995-10-12 07:29:38','2001-06-22 13:55:17'),
('33','33','quisquam','441117716',NULL,'1','1983-12-20 14:36:47','2001-11-26 07:54:38'),
('34','34','aut','352',NULL,'2','1992-05-23 02:25:33','2011-01-12 13:26:54'),
('35','35','explicabo','70759838',NULL,'3','1991-02-10 14:20:31','2007-10-01 00:29:45'),
('36','36','hic','6651305',NULL,'4','1977-12-17 08:04:50','1996-10-12 19:14:19'),
('37','37','non','90408710',NULL,'1','1970-03-21 20:38:13','1976-03-31 15:19:17'),
('38','38','atque','384',NULL,'2','2015-02-08 08:45:25','2011-02-20 04:59:15'),
('39','39','est','0',NULL,'3','1983-01-18 03:00:53','2003-02-06 06:48:52'),
('40','40','alias','92683763',NULL,'4','1982-11-02 09:45:00','1982-10-09 09:25:02'),
('41','41','labore','0',NULL,'1','1991-12-05 17:16:09','1980-03-11 04:02:21'),
('42','42','sit','58180152',NULL,'2','2005-10-08 03:35:37','2008-08-21 10:50:11'),
('43','43','corrupti','466383',NULL,'3','1981-08-27 16:12:29','1982-02-09 13:05:13'),
('44','44','culpa','0',NULL,'4','1999-08-18 21:35:04','2001-10-28 17:49:47'),
('45','45','voluptatum','9106',NULL,'1','1984-12-25 08:53:32','2019-12-05 12:07:10'),
('46','46','illum','6474386',NULL,'2','2010-07-29 17:20:06','1989-01-10 23:49:26'),
('47','47','voluptatum','67',NULL,'3','1990-03-14 06:04:56','1985-10-07 01:15:18'),
('48','48','reiciendis','891911',NULL,'4','2015-06-04 05:03:35','1996-02-24 16:38:40'),
('49','49','praesentium','45937032',NULL,'1','2020-03-13 18:54:42','1996-08-11 08:36:48'),
('50','50','exercitationem','2293',NULL,'2','1982-08-16 09:15:37','1979-05-06 20:21:34'),
('51','51','architecto','84711',NULL,'3','1975-06-23 00:25:27','2020-05-03 14:54:05'),
('52','52','qui','72510071',NULL,'4','2005-07-13 14:05:24','1976-03-25 23:45:46'),
('53','53','ut','7358',NULL,'1','1971-05-14 03:25:33','2007-08-23 14:42:19'),
('54','54','exercitationem','84191',NULL,'2','1981-04-07 21:01:28','1985-06-11 21:14:07'),
('55','55','et','68693517',NULL,'3','2006-01-27 00:37:18','2013-02-04 07:57:40'),
('56','56','iusto','28668',NULL,'4','2009-07-23 14:38:48','2010-05-19 11:20:48'),
('57','57','aut','873490',NULL,'1','1987-05-03 04:39:20','2000-04-03 13:28:01'),
('58','58','autem','55',NULL,'2','2008-11-23 02:59:32','2002-02-05 00:13:08'),
('59','59','animi','610',NULL,'3','1993-08-17 15:00:49','1989-04-23 02:34:28'),
('60','60','consequatur','193',NULL,'4','1994-09-28 04:12:19','1993-01-31 21:51:10'),
('61','61','dolore','894569',NULL,'1','1992-12-16 02:26:57','1977-11-11 16:17:02'),
('62','62','sint','91581',NULL,'2','2013-02-15 06:27:22','2006-03-23 01:02:59'),
('63','63','voluptatem','49',NULL,'3','2010-03-30 09:31:07','1974-12-01 22:29:26'),
('64','64','tempora','80922014',NULL,'4','1971-11-24 15:07:55','1995-05-06 20:18:48'),
('65','65','vitae','5100',NULL,'1','1981-05-17 16:41:43','1992-09-27 05:42:16'),
('66','66','quaerat','2002',NULL,'2','1997-11-08 23:01:31','1973-03-18 22:16:26'),
('67','67','tempore','901',NULL,'3','2002-01-02 14:46:42','1982-11-12 09:08:44'),
('68','68','repudiandae','63',NULL,'4','1996-05-10 15:55:53','2003-10-11 02:52:46'),
('69','69','blanditiis','4',NULL,'1','2005-12-20 17:09:16','1970-06-17 22:18:24'),
('70','70','et','4045',NULL,'2','2006-11-27 02:22:42','2002-05-21 18:55:12'),
('71','71','nobis','17536928',NULL,'3','1979-12-15 09:33:57','2001-11-15 18:26:04'),
('72','72','mollitia','4129781',NULL,'4','2011-06-04 01:17:42','1984-03-20 23:14:09'),
('73','73','asperiores','5',NULL,'1','1977-03-13 10:29:45','1978-07-02 03:38:18'),
('74','74','debitis','670',NULL,'2','2017-04-19 17:32:41','1976-11-29 18:03:22'),
('75','75','quis','494486',NULL,'3','2012-05-02 02:33:25','2002-04-04 18:06:20'),
('76','76','ex','40911',NULL,'4','1979-07-30 22:34:58','1978-01-17 09:58:04'),
('77','77','autem','3962',NULL,'1','2013-10-04 15:04:04','2007-05-06 11:04:50'),
('78','78','aut','66',NULL,'2','2002-06-08 19:44:56','1994-10-29 10:18:13'),
('79','79','impedit','0',NULL,'3','2011-10-09 05:54:11','1985-02-04 03:59:30'),
('80','80','voluptas','9935927',NULL,'4','2007-03-14 01:01:03','1970-03-05 08:12:40'),
('81','81','debitis','7',NULL,'1','2002-12-06 01:11:07','1992-09-16 02:30:47'),
('82','82','ullam','96922',NULL,'2','1981-04-15 00:38:57','2010-06-05 09:54:33'),
('83','83','nam','121375',NULL,'3','1984-01-27 06:16:51','2018-03-20 07:28:47'),
('84','84','dignissimos','7086946',NULL,'4','2002-03-07 23:58:06','2008-06-07 01:32:52'),
('85','85','cupiditate','8117',NULL,'1','1980-08-25 05:28:55','1998-01-10 08:59:39'),
('86','86','inventore','35215',NULL,'2','1992-07-06 13:12:50','2000-11-07 01:51:14'),
('87','87','suscipit','827',NULL,'3','1972-11-09 23:32:34','1988-03-16 11:17:20'),
('88','88','dolor','8986581',NULL,'4','1983-02-16 23:03:21','1980-07-31 15:25:03'),
('89','89','quo','916',NULL,'1','1984-03-05 12:25:04','1979-01-26 21:56:09'),
('90','90','quia','45100369',NULL,'2','1986-11-28 19:54:50','1989-11-09 09:10:49'),
('91','91','maxime','7085375',NULL,'3','1985-06-25 09:24:30','2017-11-09 06:42:32'),
('92','92','dolore','504',NULL,'4','1990-06-03 10:00:30','1988-06-17 04:50:10'),
('93','93','ut','26',NULL,'1','1995-08-18 18:13:53','1983-06-08 12:53:34'),
('94','94','maxime','0',NULL,'2','2007-02-18 07:13:41','2008-12-01 10:15:10'),
('95','95','consequatur','69950',NULL,'3','2008-04-06 03:58:53','1973-10-25 09:44:58'),
('96','96','dolore','1',NULL,'4','2000-02-11 00:15:40','2020-07-25 12:27:33'),
('97','97','quis','891252683',NULL,'1','2013-04-13 23:41:53','1983-08-29 12:03:23'),
('98','98','qui','649627691',NULL,'2','1988-09-25 02:13:32','1978-11-04 05:54:30'),
('99','99','quod','0',NULL,'3','2007-06-06 16:06:11','1986-11-19 10:21:34'),
('100','100','corporis','681069935',NULL,'4','1979-12-25 09:55:07','2019-12-18 05:43:06'); 


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'eligendi', '2012-03-17 03:06:57', '2011-12-09 12:59:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'ut', '2004-01-28 10:39:14', '2001-11-13 12:45:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'aspernatur', '1975-01-16 03:49:59', '2014-09-03 09:44:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'ullam', '1974-01-15 05:18:39', '2013-04-11 00:47:57');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 85, 87, 'Sequi blanditiis velit alias blanditiis veniam possimus molestiae. Libero repudiandae libero et excepturi omnis. Omnis ipsum ullam doloremque rerum omnis quia hic.', 1, 1, '1976-11-21 21:01:37', '1985-01-07 16:05:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 53, 75, 'Nostrum sit illo sunt et veritatis enim. Quasi ut rerum sapiente sequi.', 1, 0, '1976-01-23 17:31:57', '2005-11-17 12:45:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 15, 12, 'Saepe libero et exercitationem ipsum occaecati. Fugit animi assumenda sit voluptate itaque voluptatem sit. Ut praesentium nisi qui et et sit quia.', 1, 0, '1976-08-15 04:19:51', '1989-08-20 19:59:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 57, 59, 'Quas deleniti in corporis porro eum doloribus delectus. Est veritatis earum quia quas in praesentium. Sit fugiat quae qui nobis nam.', 1, 1, '1996-07-06 09:03:52', '1990-08-01 18:10:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 68, 31, 'Nulla deleniti libero cum exercitationem qui vero. Eum voluptatem aperiam hic cumque libero. Sed dolorem maxime eum voluptatibus dolorem.', 0, 1, '1980-12-07 09:22:49', '1995-01-26 01:39:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 69, 33, 'Unde nulla consequatur qui quis non. Quia tenetur vel a quidem. Qui quidem vel magnam voluptas. Laudantium dolorem fuga natus earum veniam deleniti debitis nam.', 0, 1, '2016-04-02 16:02:59', '2016-08-07 06:30:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 58, 90, 'Non in ut quis ipsa sunt. Eligendi et in eum est iusto facere.', 0, 1, '2003-02-09 05:19:28', '2000-01-15 15:52:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 35, 16, 'Natus qui id in corporis. Repellendus tempora officia aut pariatur omnis nihil assumenda. Dignissimos voluptas odit quidem dignissimos. Magni dolorem amet qui et.', 1, 1, '1980-09-22 17:05:46', '1998-01-18 00:37:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 7, 41, 'Non sint soluta praesentium. Consequatur magnam distinctio nihil quod quis. Facilis qui molestias voluptate maiores. Omnis velit architecto nihil et ut tempore.', 0, 0, '2003-06-12 17:22:48', '2004-02-09 19:08:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 34, 88, 'Corrupti aut perferendis fugiat laudantium vel velit vel. Recusandae ullam temporibus vitae sint placeat perferendis. Labore provident doloribus modi aspernatur aperiam at odio quia. Magnam voluptates autem et sunt.', 1, 1, '2019-01-08 23:52:02', '1976-01-01 04:28:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 3, 45, 'Sit voluptatem assumenda molestiae quo quidem quo repudiandae. Odio sit perferendis similique blanditiis. Consequatur quae consequatur vero.', 1, 1, '2019-02-05 13:02:28', '1978-02-02 08:33:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 97, 50, 'Veritatis quo molestiae reprehenderit laboriosam excepturi facere molestiae sapiente. Et blanditiis maiores et a commodi accusantium sed perferendis. Sed ducimus rem earum.', 1, 0, '2007-06-26 14:36:11', '2009-01-08 00:38:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 92, 40, 'Quia iusto itaque ut nam voluptas. Quis fuga consectetur doloribus. Cupiditate vero sit nam et. Sapiente eos impedit itaque et illo est. Quis reiciendis nostrum in saepe consequatur perferendis.', 1, 0, '1998-10-05 21:23:09', '1979-12-27 18:22:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 87, 2, 'Autem et aut corporis est. Magni ea incidunt qui ab non in asperiores. Ad fugiat et omnis excepturi nesciunt quo sunt est.', 1, 0, '1983-03-25 09:12:32', '2007-07-18 15:41:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 51, 13, 'Voluptas quis nihil fuga voluptatem. Qui voluptate reiciendis animi impedit quis eveniet. Eaque similique rerum numquam et rerum similique voluptatum. Illo tempore ullam aut nemo.', 1, 1, '1990-04-29 02:29:44', '1978-03-04 17:19:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 5, 7, 'Quibusdam vel totam et voluptatem atque natus. Laborum sit sed deleniti et illo. Ut qui mollitia aut necessitatibus veritatis reprehenderit. Laborum dolorem sed quae. Laboriosam quia voluptas quos rerum eius.', 1, 1, '1999-06-02 22:49:11', '1992-01-10 03:25:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 84, 26, 'Aperiam aut harum exercitationem. Magni libero officia soluta velit exercitationem atque aut. Repellendus et consectetur nulla beatae pariatur blanditiis. Sed et pariatur et voluptates.', 1, 1, '1996-03-03 15:49:47', '2006-01-02 12:25:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 18, 44, 'Ducimus est enim distinctio ab est et. Quia reprehenderit suscipit vero non architecto dignissimos aperiam. Consequuntur nulla amet qui qui quasi est quia. Reiciendis vitae corrupti unde inventore dolorem.', 0, 0, '1999-01-29 19:40:32', '2003-04-27 11:24:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 12, 51, 'Aliquam facere beatae quia incidunt ratione. Ut ex ut qui quibusdam. Aspernatur dignissimos maiores praesentium et similique fugit vero.', 0, 1, '1986-04-02 10:06:36', '1987-11-18 04:09:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 15, 61, 'Iure ut quis in omnis. Ratione temporibus et necessitatibus aut dolor sit. Occaecati sed nisi consequatur quis aut praesentium. Ut eveniet eveniet quod adipisci ullam facilis.', 0, 1, '1979-07-06 03:14:45', '2009-06-28 07:08:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 49, 78, 'Excepturi nesciunt odio sequi in quia rerum deleniti. Dicta ut vero sequi quas ipsa.', 1, 0, '1975-02-19 11:06:15', '2017-12-26 20:11:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 25, 37, 'Consequatur est non possimus corrupti inventore aut. Accusantium ea tempora maxime doloremque sed ducimus. Ratione dolorum rerum consequuntur dolorem et.', 0, 0, '1980-10-14 11:31:20', '2001-02-05 04:00:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 76, 80, 'Non est nesciunt vel sint unde impedit. Eaque officiis tempora et doloremque rem architecto. Repellat accusamus iste similique. Fugit itaque ratione totam.', 0, 1, '1987-11-15 16:47:24', '2017-07-22 07:41:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 45, 62, 'Est sed accusamus et ut exercitationem unde fuga quos. Laudantium sunt voluptates et deserunt dolores aut.', 1, 0, '1988-10-10 07:45:23', '1981-08-21 02:03:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 28, 96, 'Impedit placeat et recusandae qui. Ipsa deleniti vero incidunt occaecati. Consequatur voluptates explicabo fugit ut.', 1, 0, '1998-04-13 20:17:34', '2007-10-15 13:35:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 75, 24, 'Nihil odit officia ex. Enim cupiditate dolorum nihil quis quo. Non ad expedita ducimus sed autem. Aut sunt quidem consectetur.', 0, 0, '2020-10-03 19:23:26', '1988-11-18 01:22:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 36, 18, 'Quisquam ut nobis hic fugiat aut sint. Aut eum alias ut neque. Est fugiat ipsa error ipsam.', 0, 0, '2012-03-08 19:40:12', '2014-02-02 08:25:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 81, 36, 'Aut libero laboriosam quo. Vel qui nam est et fugit. Porro laborum quia ut sunt minima at quibusdam architecto.', 1, 1, '1978-09-14 12:26:56', '1974-06-25 07:17:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 48, 31, 'Qui doloribus distinctio numquam deserunt nemo. Repellendus molestias non adipisci omnis neque non aut. Est corporis voluptatem eligendi eos impedit praesentium.', 0, 1, '2020-06-09 15:17:55', '1991-06-10 18:46:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 43, 26, 'Soluta ducimus et labore et tenetur quod eaque quod. Pariatur sint tempore ut alias sit et cum. Animi dolorem cupiditate neque impedit. Dignissimos ut eum earum animi eaque.', 0, 0, '2011-02-26 05:23:14', '1989-09-04 00:23:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 13, 10, 'Nulla sunt et et maxime. Debitis similique nobis sint impedit architecto aut consequuntur. Praesentium voluptas et voluptas sunt sit culpa praesentium. Fuga consequuntur et earum neque architecto excepturi. Dolor voluptate porro aut enim accusantium vel.', 1, 0, '1976-04-22 14:41:07', '2003-07-26 03:57:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 28, 22, 'Incidunt rerum dolores quis facilis aut enim rem. Consequuntur consequuntur voluptatem illo iusto. Velit itaque et unde eum molestiae. Debitis doloribus non et.', 0, 1, '2007-05-12 08:28:27', '1980-01-24 07:29:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 15, 20, 'Nobis praesentium impedit quis accusantium ab et. Omnis sed quibusdam odio. Suscipit iure debitis dolorem quia praesentium.', 0, 1, '1985-07-26 00:21:11', '2005-04-07 09:38:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 92, 87, 'Deserunt voluptatibus et ut quidem aut praesentium. Tenetur rerum et vel nam. Ut unde provident et est debitis in cumque.', 1, 1, '1980-04-01 21:30:18', '2004-05-11 12:25:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 15, 39, 'Quam sed pariatur nulla tempore quas consectetur enim. Natus voluptatem repellendus et dolorem delectus fugit magni. Veritatis quia soluta incidunt neque dolorum fugit. Ullam sunt ex ea quisquam atque deserunt consequatur. Dolore cupiditate reiciendis rem et voluptas.', 0, 1, '1980-01-10 00:31:35', '2005-03-07 08:49:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 28, 4, 'Consequatur et soluta quis delectus. Et voluptate qui eius similique numquam necessitatibus. Quas cumque blanditiis tenetur. Provident temporibus repellat perferendis vel odit qui perspiciatis.', 0, 1, '2017-04-17 12:25:53', '2016-03-15 09:23:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 61, 26, 'Voluptatem sint nihil aliquam vel aut odio. Cumque at enim commodi ducimus. Ut enim est voluptate quia officiis numquam.', 0, 0, '2009-10-11 18:15:55', '2010-07-03 01:30:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 64, 34, 'Odit eaque sunt molestias minima. Tenetur consequatur sint vero quia cumque. Qui harum impedit quia. Voluptatem voluptates in itaque necessitatibus sint.', 1, 1, '2017-04-28 14:43:50', '1975-08-08 17:40:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 34, 8, 'Est atque velit incidunt culpa sapiente quaerat repellat sint. Autem quia provident dolore suscipit id vel doloribus. Dolorem tempore voluptas omnis laboriosam ipsa tenetur est. Laudantium nemo velit excepturi nostrum qui.', 0, 0, '2001-02-23 05:19:01', '1998-03-12 11:58:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 82, 26, 'Porro itaque sed id ipsum voluptatem et. Asperiores dolor quia quae est voluptas nostrum. Doloribus alias dolores a harum. Nihil in quisquam repellendus rem quas aut et.', 1, 1, '1977-01-15 11:04:12', '1984-12-27 07:08:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 38, 17, 'Culpa quam deleniti ut repudiandae ex. Dolores sint facilis quo atque voluptatem recusandae porro. Voluptate quae ab quia.', 1, 0, '1983-05-25 20:49:27', '1982-02-10 06:43:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 38, 60, 'Officia asperiores qui pariatur esse. Quasi voluptates et quia doloremque ipsa temporibus fugiat. Quod qui quasi dolor quas eum accusantium.', 0, 1, '1993-04-27 18:58:42', '1977-11-02 04:46:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 36, 100, 'Esse voluptatum tempore est alias. Est et consequatur et ratione unde quaerat tempora. Ut incidunt voluptatem doloribus eos ex rerum.', 0, 0, '1987-05-28 18:09:38', '1987-11-15 12:56:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 10, 84, 'Alias maiores provident asperiores rem. Libero deleniti harum architecto aut. Quasi voluptas consequatur placeat vitae ipsa.', 0, 0, '2016-12-10 06:28:59', '2016-10-10 08:38:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 76, 23, 'Debitis suscipit at quam exercitationem alias nihil nobis. Reprehenderit quod pariatur ut ex est quia dolorum. Repudiandae officia quos rerum.', 1, 1, '1996-07-04 09:10:09', '1988-04-07 01:49:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 71, 35, 'Ea quis tempore odio distinctio alias. Fugiat sint deleniti excepturi autem. Commodi inventore illo corporis inventore id. Et velit labore odit quia doloremque consequuntur.', 0, 1, '2012-10-09 05:38:02', '1999-11-13 15:45:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 80, 38, 'Fuga ut voluptatem doloribus quae molestias. Expedita temporibus repellat repudiandae neque quia laudantium fuga blanditiis. Unde quis adipisci at eligendi. Qui et praesentium dolorem natus non.', 1, 1, '1981-02-03 03:29:41', '1976-07-11 17:59:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 99, 15, 'Et error eius perspiciatis dolore voluptas. Sint voluptas reprehenderit rerum ut unde maiores necessitatibus. Deleniti autem dolore quia eius. Deserunt nisi at sit dolorem totam magnam. Earum totam voluptatem vero fugit velit deleniti aliquam veritatis.', 0, 0, '2006-03-28 22:05:32', '2005-08-21 20:06:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 13, 29, 'Vitae quis voluptas voluptas enim voluptatibus perferendis. Praesentium nulla ab quae consectetur nulla. Minus quo molestias non pariatur pariatur.', 1, 0, '2013-01-11 20:07:55', '2002-12-21 01:23:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 9, 6, 'Consectetur et esse sunt ad inventore. Maiores tempore temporibus amet ut aperiam. Ut repellendus amet quaerat iusto officia.', 0, 0, '2010-10-29 00:30:16', '2010-04-25 15:50:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 21, 77, 'Quaerat placeat laboriosam tenetur in qui est. Tempore magni quisquam quia eos. Ex nemo neque nemo et. Quae quisquam tempora dolores dolores cumque ullam. Ut quibusdam sequi suscipit natus quo aut.', 1, 1, '1988-12-02 10:24:30', '1980-10-10 12:13:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 49, 45, 'Cupiditate voluptates fugit vel consequatur magni. Voluptatum maxime quia voluptatem tempore. Deleniti et voluptatem alias qui. Labore ratione odio quia molestiae est.', 1, 0, '1994-09-18 08:14:06', '2016-12-22 05:36:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 45, 65, 'Nulla ullam magnam vero inventore. Voluptatem excepturi exercitationem est ullam ab possimus. Nisi pariatur temporibus voluptatem commodi quia omnis officia. Sint molestiae omnis cupiditate rem.', 1, 1, '1971-04-16 04:24:11', '1974-11-17 15:44:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 53, 16, 'Non tempora corrupti et cumque qui. Aut qui perspiciatis autem voluptatem ut. Dignissimos maiores natus consequuntur. Minima minima molestiae fugit eum.', 0, 1, '2014-04-26 10:49:38', '2018-01-15 10:22:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 57, 17, 'Adipisci maiores voluptas qui. Inventore et vel nihil iure ut. Aut tenetur alias qui dicta. Magnam et eum non consequatur ut. Sunt veniam nisi architecto non voluptates commodi.', 1, 0, '1991-07-15 03:14:07', '1992-09-21 14:39:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 1, 34, 'Minima quos quasi vel. Veritatis est consequatur recusandae adipisci. Doloribus rerum autem assumenda delectus.', 0, 1, '2006-09-25 08:34:31', '2002-02-14 17:56:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 34, 70, 'Sint suscipit voluptatibus ut vero laborum dolor. Odit voluptate voluptatem aperiam eos aliquam fugit. Aperiam aliquid qui magni qui aut possimus. Nobis hic soluta quia culpa aliquid. Et eum est odit hic aut nobis dolorum qui.', 1, 0, '1980-06-24 22:50:35', '2000-11-25 01:35:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 99, 100, 'Vel modi qui odit atque hic tenetur. Enim id sed voluptas non temporibus praesentium. Eligendi eos nam quam quod.', 1, 1, '2008-10-12 15:01:06', '1972-11-08 19:04:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 87, 34, 'Maiores dolorem est reiciendis qui soluta nobis. Ipsam quia deserunt sapiente non repellat enim. Commodi quos assumenda quos nisi ut ex nulla.', 1, 0, '1975-04-13 03:06:19', '1980-02-20 14:24:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 40, 54, 'Aut occaecati impedit accusamus eius vel eligendi odit. Natus maxime sed impedit ab quo et dicta consequatur. Velit architecto est ab.', 0, 1, '2008-02-20 14:14:39', '2018-12-13 20:01:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 37, 88, 'Hic nihil qui aut deserunt aut velit iusto. Sed repellendus vero repudiandae corrupti. Hic harum officiis nulla in voluptatum ut. Rem dolor similique dolorum est impedit et vel.', 0, 1, '1981-10-07 01:43:04', '2008-06-28 07:55:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 89, 32, 'Est illo doloremque est perferendis. Omnis asperiores ad quia. Aut repellendus quidem atque voluptas quod voluptatibus quis.', 0, 1, '2020-07-31 15:13:12', '2005-03-14 07:33:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 47, 90, 'Sunt ut voluptas veniam quod. Est eum assumenda consequuntur maiores occaecati eveniet officiis.', 1, 0, '2003-10-12 22:32:53', '1991-03-07 18:00:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 24, 6, 'Ratione reprehenderit animi quam magni aut. Est repellendus eveniet ut vero perferendis consequatur. Quas voluptas quia quia aut facilis culpa facilis.', 0, 0, '1973-06-09 02:51:00', '1996-12-10 17:21:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 49, 59, 'Quam accusantium repellat autem doloribus. Dolor cum ut consequuntur. Tenetur atque consequatur est nobis sequi sunt corrupti. Nesciunt dolorum distinctio sequi ut ducimus sunt.', 1, 1, '2005-07-19 13:45:08', '1993-03-16 00:58:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 5, 54, 'Minus voluptatibus commodi voluptatem aut dolores qui. Qui sequi odit non repudiandae voluptatem. Aperiam at non ducimus id delectus. Voluptatem enim non nulla veritatis quia.', 0, 0, '1989-03-28 21:02:27', '2017-05-07 20:52:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 13, 36, 'Omnis et iure molestias. Repudiandae dolorem necessitatibus nobis facilis sunt dolorum. Cumque illo eum enim consectetur dolorum temporibus totam. Unde odit omnis ullam maxime. Harum atque sed nihil ad et voluptatem reprehenderit.', 0, 0, '2008-01-06 00:15:25', '2005-12-09 03:10:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 38, 81, 'Eaque dolor fugiat eveniet. Dolor voluptatum cum nesciunt praesentium soluta.', 0, 0, '1979-05-24 00:09:33', '1983-04-26 07:09:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 16, 90, 'Quas perferendis illum sint distinctio maiores. Suscipit dolores animi possimus.', 0, 0, '2015-11-28 15:49:05', '2001-02-11 06:06:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 70, 43, 'Ex modi fugit aliquid expedita vero reiciendis et. Voluptatibus qui accusantium recusandae. Architecto ducimus velit deleniti debitis.', 0, 1, '2004-08-18 03:49:54', '2017-11-11 14:15:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 43, 53, 'Reiciendis temporibus libero aut enim commodi rem itaque aut. Quia aut vitae expedita consequatur. Accusantium animi libero corrupti et possimus dolore autem. Ipsum aut nesciunt in nostrum minima rerum veniam.', 1, 1, '2006-05-01 18:55:19', '1989-11-09 18:51:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 74, 88, 'Voluptatum quis eius impedit animi voluptatem vel cupiditate veritatis. Id consequatur ea et aut ullam eius voluptas. Ullam consectetur iure doloribus eligendi magni possimus facere. Fugit quia minus omnis libero exercitationem consequatur consequatur. Quo enim laborum eum molestias.', 1, 1, '1990-05-12 19:10:32', '1978-06-17 10:47:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 77, 7, 'Assumenda quidem eum necessitatibus doloremque et sit quia. Illo eligendi quia neque. Ut non sapiente tempora labore odit in dignissimos qui.', 1, 0, '2006-10-26 01:21:55', '2006-02-25 14:00:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 10, 49, 'Eligendi quam quis laudantium sapiente. Eum provident voluptatem laborum voluptates vel qui repellat.', 0, 0, '1998-02-25 11:27:26', '2008-02-04 05:50:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 60, 82, 'Reprehenderit sunt id omnis corporis. Molestias architecto ducimus eos quaerat fugiat libero debitis. Quasi recusandae et sequi voluptatem. Rerum ea est et non placeat.', 0, 1, '2016-11-30 15:15:16', '1978-10-28 03:08:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 3, 52, 'Ea et reiciendis eos nihil eius suscipit commodi. Qui repudiandae dolorem voluptatem quis quia. Et consequatur est voluptatem magni id dignissimos et aut. Velit aut ut repudiandae.', 0, 0, '1975-04-13 02:21:21', '2020-06-13 07:38:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 93, 99, 'Sint tempore et quis eos. Quaerat optio accusamus maxime. Ea et voluptas non quisquam. Voluptate voluptas nobis fugiat qui magnam.', 1, 1, '1997-09-22 09:00:35', '1979-11-28 22:24:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 13, 18, 'Dicta et animi ea dolore sit quia. Ipsum et reiciendis laudantium illum. Quae ea et illo et porro quia. Voluptas placeat ex architecto nisi doloremque tempora aut.', 1, 0, '1973-11-13 02:14:39', '1974-01-07 19:54:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 97, 87, 'Cumque ut aut praesentium provident. Ut dolorem vel aut sit et. Accusamus vero rerum voluptatem aut. Sapiente aspernatur id ut.', 0, 1, '2005-10-03 13:25:34', '1972-07-01 04:23:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 87, 53, 'Amet deserunt sunt consequatur quam. Dolorem inventore ea ut expedita. Magnam qui ut ea recusandae ab officiis. Sit vero hic laboriosam porro. Provident sunt asperiores inventore sit ea.', 1, 0, '1977-06-06 00:09:44', '1978-12-27 00:19:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 95, 41, 'Sint nam minima rerum nihil dolorem illo sint. Cupiditate praesentium vel reiciendis ut. Eveniet itaque eum quibusdam similique. Est et suscipit quam suscipit beatae libero.', 1, 1, '2012-11-05 20:50:38', '1973-12-30 00:22:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 82, 41, 'Accusantium omnis sint itaque et. Quia est itaque recusandae qui impedit.', 0, 1, '1970-09-10 06:33:11', '1973-12-10 20:42:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 6, 52, 'Velit ut unde vel commodi. Consequatur quia et quia ea sapiente dolores. Cupiditate et harum temporibus corrupti aspernatur.', 1, 1, '1971-02-16 10:16:45', '1989-03-22 11:15:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 53, 87, 'In quia ad beatae maiores amet rerum eaque libero. Voluptatum voluptatum veniam quibusdam minima. Maiores quo sint nulla enim molestias aut suscipit.', 0, 0, '1972-02-05 13:14:27', '1991-06-01 23:08:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 32, 77, 'Architecto sit iste laboriosam pariatur. Architecto velit itaque fugiat.', 0, 0, '1975-08-08 23:21:46', '2012-05-30 13:51:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 66, 16, 'Occaecati rerum dolores harum consequatur qui. Necessitatibus enim perspiciatis rerum maiores. Quia soluta optio assumenda animi sit incidunt alias quibusdam.', 0, 1, '1970-07-31 09:15:50', '1989-03-06 05:42:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 11, 67, 'Culpa quis expedita voluptates. Error numquam consequatur beatae impedit eum ut voluptas. In non odit necessitatibus aliquid magni non. Sed id pariatur et aut a eligendi ex.', 0, 0, '1998-06-17 00:03:29', '1989-03-09 03:44:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 24, 60, 'Omnis libero natus voluptas itaque. Aut numquam autem vero delectus labore error voluptatem qui. Est ratione ut est et. Sequi architecto est culpa atque doloremque ut.', 0, 1, '1997-02-25 22:12:57', '1989-08-11 01:48:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 34, 75, 'Impedit non et ipsam qui minima. Dicta id sunt quas. Odio consectetur eligendi et ratione odio. Amet qui exercitationem maxime quasi.', 1, 1, '2017-02-24 13:18:55', '2007-04-15 22:14:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 97, 96, 'Laudantium reprehenderit neque aut incidunt adipisci eum aspernatur. Qui doloribus ipsam est dolorem. Similique et et eos sit unde explicabo. Et rerum aut et placeat temporibus eius.', 1, 0, '1983-03-24 09:35:22', '2018-05-16 21:32:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 60, 5, 'Aperiam voluptatibus corporis asperiores aut expedita deleniti hic eaque. Et id velit aut voluptatem. Fuga ipsa nostrum eos repellendus ex consequatur voluptate explicabo.', 0, 0, '1992-12-18 00:32:03', '2014-06-24 23:45:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 75, 88, 'Laboriosam veniam molestiae voluptatibus enim eum explicabo. Saepe adipisci molestiae quia necessitatibus quod distinctio. Ea officiis voluptas rem qui et non. Ad autem deserunt est nemo.', 1, 1, '1995-09-05 00:39:34', '2013-01-14 19:01:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 66, 73, 'Excepturi voluptatibus velit eos neque consequatur. Velit accusantium temporibus repellat ullam et et. Voluptates quia labore tempore quis.', 1, 0, '1987-06-28 04:32:23', '2009-09-02 21:22:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 93, 32, 'A laborum dolore expedita qui. Repellendus et autem neque quidem optio iusto. Rerum ut aliquam non expedita ratione.', 0, 0, '1975-08-28 20:30:06', '1970-06-21 19:35:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 94, 47, 'Ut in delectus enim laboriosam fugiat. Autem est nulla quis hic in asperiores in. Tempore iste fugit laudantium voluptatem. Minus eum eius et neque. Numquam autem eaque non explicabo alias voluptatem doloremque.', 0, 0, '2015-12-23 14:12:46', '2010-12-25 21:06:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 88, 34, 'Assumenda impedit nam quae explicabo voluptatem. Nihil est qui voluptatem est quidem maiores.', 0, 1, '1987-10-07 10:38:02', '1978-10-06 10:57:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 97, 31, 'Tempore quia at suscipit dolor nulla sunt adipisci adipisci. Quasi fugit rerum facilis et. Quis est tempore accusamus incidunt delectus rerum velit. Temporibus natus exercitationem unde quo.', 0, 0, '1974-10-16 01:55:27', '2014-01-25 04:23:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 94, 93, 'Aut et dolores in. Atque officia vitae beatae qui eum aspernatur. Aut aliquid enim et ipsum totam rerum voluptas.', 0, 1, '1982-04-27 16:24:34', '1970-11-26 23:23:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 89, 44, 'Reprehenderit optio vel voluptatibus voluptas eius maxime. Nostrum et dignissimos nihil iure autem ex.', 1, 1, '2013-10-01 21:24:00', '1998-05-15 22:55:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 80, 13, 'Perspiciatis voluptates ut qui ad qui. Voluptatem nihil exercitationem enim accusantium est velit a. Eius magni quia impedit in vel et.', 0, 0, '1992-10-19 10:56:53', '1994-10-04 11:37:53');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, '', '1997-09-06', 0, 'fugiat', 'West Margarettefurt', 'Mauritania', '1975-11-25 00:31:26', '1996-09-24 11:29:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, '', '1991-08-31', 0, 'nisi', 'South Daneton', 'Azerbaijan', '2015-03-08 02:07:42', '1992-05-10 21:56:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, '', '2018-10-27', 0, 'culpa', 'Lake Deangelo', 'Burundi', '1975-03-14 10:05:17', '2008-10-31 07:05:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, '', '1989-01-28', 0, 'quod', 'Port Kimberly', 'Sudan', '2007-04-09 13:44:17', '1980-11-28 12:33:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, '', '1995-07-28', 0, 'itaque', 'Lake Darionfurt', 'Cocos (Keeling) Islands', '1980-03-17 06:49:03', '1998-02-04 00:15:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, '', '1995-04-10', 0, 'iste', 'Port Meaghanbury', 'Uganda', '1991-06-15 12:36:12', '2015-01-04 02:26:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, '', '1985-12-02', 0, 'sed', 'East Dawson', 'Colombia', '2018-10-12 10:18:10', '1987-07-18 14:45:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, '', '1984-02-08', 0, 'suscipit', 'South Julieview', 'Central African Republic', '1970-12-16 20:42:52', '1993-03-13 22:57:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, '', '2016-08-13', 0, 'incidunt', 'New Margret', 'Liberia', '2018-07-13 17:36:19', '1972-10-01 23:44:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, '', '2016-06-05', 0, 'vero', 'Port Marjorie', 'Belarus', '1977-12-18 11:31:24', '2011-11-03 15:17:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, '', '1987-06-22', 0, 'illum', 'Baileyberg', 'Tuvalu', '1993-11-30 19:41:44', '2017-01-22 06:56:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, '', '1986-10-15', 0, 'natus', 'Pierreton', 'Cook Islands', '2006-11-20 14:00:27', '2018-05-18 18:27:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, '', '2009-10-24', 0, 'expedita', 'North Hillard', 'Niue', '2005-03-06 13:03:22', '2008-04-29 05:58:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, '', '1996-12-14', 0, 'occaecati', 'North Einarfort', 'French Polynesia', '1974-08-25 18:59:59', '2007-05-10 04:31:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, '', '2006-04-27', 0, 'sit', 'Laviniabury', 'Ethiopia', '1991-06-21 05:53:40', '2012-10-21 02:30:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, '', '1992-04-30', 0, 'perferendis', 'Murrayfort', 'Guatemala', '1974-07-28 17:16:59', '1983-11-24 01:57:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, '', '1990-02-26', 0, 'hic', 'Maryseshire', 'Falkland Islands (Malvinas)', '2018-01-19 18:05:57', '1994-05-17 05:24:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, '', '2004-08-30', 0, 'cupiditate', 'Schroederview', 'Tonga', '2009-03-22 02:37:53', '1976-07-06 03:40:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, '', '2006-09-26', 0, 'ad', 'North Shanel', 'Croatia', '1975-08-25 04:44:49', '2007-04-13 23:29:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, '', '2007-03-11', 0, 'blanditiis', 'South Titusmouth', 'Kuwait', '2018-11-21 03:50:30', '1975-06-04 14:36:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, '', '2019-02-21', 0, 'laborum', 'Port Reymundomouth', 'Colombia', '2011-08-23 13:47:27', '1973-06-19 00:39:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, '', '2011-11-17', 0, 'sunt', 'Klingville', 'Luxembourg', '1980-11-25 14:41:56', '1993-09-09 10:06:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, '', '1993-06-18', 0, 'nemo', 'Melvinberg', 'United States Virgin Islands', '2004-06-16 09:39:22', '1977-12-17 12:30:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, '', '1978-01-20', 0, 'ut', 'West Everthaven', 'Holy See (Vatican City State)', '2019-02-11 06:08:17', '2018-04-14 13:29:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, '', '2009-09-03', 0, 'aut', 'West Judd', 'Guernsey', '2000-06-13 05:53:57', '2015-07-26 09:22:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, '', '2014-06-02', 0, 'optio', 'North Ezekiel', 'Kuwait', '1988-06-05 02:42:37', '2016-08-31 19:17:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, '', '1981-06-09', 0, 'id', 'South Jaquelin', 'Holy See (Vatican City State)', '1973-03-03 08:44:13', '2003-08-03 11:01:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, '', '1990-09-13', 0, 'id', 'East Adam', 'Suriname', '2013-12-08 02:29:59', '1985-03-24 18:15:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, '', '2020-07-27', 0, 'inventore', 'West Quintenport', 'Papua New Guinea', '2007-08-05 02:57:57', '1979-07-04 16:21:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, '', '1976-04-12', 0, 'similique', 'South Clemensmouth', 'Armenia', '2015-04-06 15:22:38', '1991-04-18 19:33:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, '', '2011-12-05', 0, 'delectus', 'North Jamarcusland', 'Mayotte', '1989-05-12 11:00:42', '2005-09-03 23:24:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, '', '1978-10-21', 0, 'quia', 'Port Dessiestad', 'Northern Mariana Islands', '1995-09-01 22:25:45', '2007-01-20 08:51:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, '', '1991-02-26', 0, 'vero', 'Everardoborough', 'Cambodia', '1977-10-31 10:04:53', '1980-07-11 14:13:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, '', '1992-06-26', 0, 'consequuntur', 'Lowemouth', 'Singapore', '1995-05-12 04:11:42', '1971-01-18 16:25:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, '', '2001-03-23', 0, 'ab', 'Lake Rowland', 'Montenegro', '1981-07-22 18:55:05', '1998-10-20 22:04:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, '', '1987-05-25', 0, 'et', 'Lorenaborough', 'French Guiana', '1980-05-15 06:52:54', '1997-01-30 12:46:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, '', '2009-12-14', 0, 'fugiat', 'Greenholtborough', 'United States of America', '1999-07-04 02:11:41', '1992-11-30 23:32:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, '', '2010-07-24', 0, 'accusamus', 'New Amara', 'Aruba', '2015-07-25 06:50:25', '1975-01-31 13:10:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, '', '1984-05-24', 0, 'qui', 'Sporerburgh', 'Montserrat', '2018-03-06 10:54:00', '1983-10-24 13:02:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, '', '1998-03-12', 0, 'aut', 'New Deanburgh', 'Uruguay', '2011-12-31 03:01:17', '1977-04-29 11:54:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, '', '1980-10-21', 0, 'impedit', 'East Winonafurt', 'Hungary', '2004-03-31 10:18:42', '1988-12-10 14:08:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, '', '2009-07-08', 0, 'libero', 'West Eino', 'Liechtenstein', '2001-12-15 00:16:57', '1976-07-17 18:10:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, '', '1985-08-07', 0, 'sunt', 'New Flo', 'Holy See (Vatican City State)', '1999-10-18 19:16:42', '2002-06-02 19:09:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, '', '2008-12-19', 0, 'numquam', 'Florenceview', 'Bhutan', '1987-12-17 06:06:06', '1988-07-20 15:01:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, '', '1974-12-07', 0, 'quam', 'Leannonborough', 'Guernsey', '1977-03-09 11:20:06', '2020-01-31 13:51:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, '', '1972-11-24', 0, 'quia', 'Jamartown', 'Cape Verde', '1984-10-27 03:40:57', '1978-06-28 15:32:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, '', '1986-07-22', 0, 'a', 'East Houston', 'French Polynesia', '1994-07-15 15:38:58', '1994-09-21 18:09:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, '', '2007-06-11', 0, 'voluptatem', 'South Darrickstad', 'Mali', '2006-03-31 23:47:55', '1973-08-14 23:19:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, '', '1988-08-18', 0, 'eum', 'East Antoinetteborough', 'Western Sahara', '1997-05-16 23:17:38', '2001-09-10 11:41:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, '', '2007-08-20', 0, 'quasi', 'Wardburgh', 'Jersey', '1993-08-17 13:10:21', '1993-05-01 00:56:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, '', '2014-12-28', 0, 'et', 'New Nickmouth', 'Vietnam', '2019-08-19 22:32:36', '1974-02-07 07:39:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, '', '2020-06-25', 0, 'vero', 'Jaynefurt', 'Thailand', '1987-04-19 00:40:03', '1974-11-18 07:17:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, '', '1992-03-30', 0, 'pariatur', 'Riverport', 'South Georgia and the South Sandwich Islands', '2016-07-09 18:33:47', '1992-12-12 14:40:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, '', '1988-09-07', 0, 'asperiores', 'Maddisonmouth', 'Slovakia (Slovak Republic)', '1988-05-16 21:21:57', '1981-12-12 05:31:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, '', '1979-10-06', 0, 'id', 'Bradtkeshire', 'American Samoa', '1988-10-01 20:51:26', '1994-10-04 15:48:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, '', '2016-12-23', 0, 'velit', 'Jakubowskiville', 'Central African Republic', '1972-11-15 17:22:14', '1984-01-20 11:23:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, '', '2013-08-29', 0, 'autem', 'New Nelle', 'Papua New Guinea', '2001-10-18 04:37:03', '2020-06-24 00:37:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, '', '1971-12-24', 0, 'sed', 'Lake Jameson', 'Czech Republic', '2008-05-06 00:09:02', '2011-07-19 03:51:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, '', '2006-03-25', 0, 'tenetur', 'New Misael', 'Nicaragua', '2016-05-06 12:07:18', '2016-02-08 13:08:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, '', '1973-04-28', 0, 'doloremque', 'Watsicaport', 'Israel', '1979-02-10 02:30:00', '2011-04-26 03:12:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, '', '2020-10-07', 0, 'ut', 'Durwardtown', 'Rwanda', '1971-05-29 02:20:50', '1994-01-06 01:13:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, '', '2018-06-09', 0, 'libero', 'Murrayside', 'Jersey', '1976-11-16 02:26:31', '1984-06-09 14:00:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, '', '2017-08-11', 0, 'harum', 'Port Alisha', 'Cape Verde', '2015-12-07 13:46:26', '1970-01-31 10:07:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, '', '2017-11-26', 0, 'corporis', 'Reingershire', 'Micronesia', '1975-09-27 10:09:49', '1997-04-21 05:45:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, '', '1981-07-14', 0, 'enim', 'Hauckville', 'Iceland', '2008-04-07 00:03:05', '1995-03-11 17:38:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, '', '1999-01-04', 0, 'vero', 'South Jarrettview', 'Swaziland', '2003-03-16 12:32:34', '2019-09-28 12:14:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, '', '2020-05-20', 0, 'ratione', 'Hollymouth', 'Vanuatu', '1980-05-31 08:39:32', '2019-06-19 12:13:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, '', '2007-02-07', 0, 'voluptates', 'South Vilma', 'Tonga', '2013-12-30 07:40:29', '1978-04-16 22:45:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, '', '1972-09-02', 0, 'architecto', 'West Craigshire', 'Iceland', '1997-10-15 02:17:48', '2005-05-31 01:07:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, '', '1997-06-04', 0, 'fugiat', 'North Sven', 'Faroe Islands', '2009-01-10 18:20:03', '2005-03-22 08:08:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, '', '1981-06-26', 0, 'est', 'West Kaleb', 'United States of America', '2014-11-13 10:36:49', '2018-10-15 18:07:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, '', '1976-07-14', 0, 'inventore', 'East Hugh', 'Mauritania', '2008-04-23 10:48:49', '2015-03-08 09:18:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, '', '2004-08-06', 0, 'veniam', 'Port Murray', 'Macedonia', '2003-03-10 03:35:13', '1996-01-28 19:37:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, '', '1986-09-09', 0, 'impedit', 'Denesikton', 'Hong Kong', '1973-12-25 22:51:35', '2008-01-15 06:43:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, '', '2004-03-11', 0, 'vel', 'Edmondburgh', 'Nepal', '1980-08-10 13:42:22', '2015-05-02 23:10:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, '', '1985-02-12', 0, 'in', 'Okunevaton', 'Hungary', '1980-11-09 11:38:21', '2001-08-02 03:20:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, '', '2013-09-28', 0, 'ducimus', 'North Ryleighhaven', 'Saint Barthelemy', '1990-10-27 10:24:20', '2000-06-14 08:58:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, '', '1981-04-02', 0, 'consectetur', 'Larsonfurt', 'United States of America', '1991-06-14 05:12:15', '1988-08-11 21:56:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, '', '2013-11-14', 0, 'eos', 'Littelstad', 'Mali', '2001-02-23 19:36:45', '2004-09-09 00:28:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, '', '1981-10-23', 0, 'beatae', 'Hettingerview', 'Jordan', '1971-12-10 22:12:57', '2003-04-21 10:32:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, '', '1978-02-25', 0, 'assumenda', 'Schummburgh', 'Isle of Man', '1987-10-11 05:12:45', '1975-01-05 21:15:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, '', '1982-04-26', 0, 'accusantium', 'North Savanahport', 'Sierra Leone', '2008-03-26 22:54:45', '1994-11-05 00:39:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, '', '2005-01-13', 0, 'debitis', 'North Mathilde', 'French Guiana', '2008-10-13 03:06:07', '2018-09-09 15:35:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, '', '2010-11-19', 0, 'sed', 'Jonathanfort', 'Benin', '1994-04-10 11:20:53', '2002-04-16 10:07:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, '', '2007-02-03', 0, 'et', 'New Winston', 'United States of America', '2001-06-29 08:21:43', '1972-04-03 13:16:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, '', '1998-10-21', 0, 'in', 'North Iliana', 'Ghana', '1997-04-30 22:06:59', '1996-08-04 21:41:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, '', '1997-06-23', 0, 'reprehenderit', 'Gutkowskishire', 'Tanzania', '1997-06-06 18:09:56', '1982-01-21 16:07:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, '', '1987-09-25', 0, 'non', 'Gerlachtown', 'Greenland', '2004-01-16 13:58:53', '2017-09-15 08:52:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, '', '1978-05-30', 0, 'excepturi', 'South Casandrafurt', 'Albania', '2012-11-26 00:34:40', '1984-07-28 01:09:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, '', '1975-04-20', 0, 'saepe', 'West Evangelineland', 'Canada', '1973-06-06 06:38:52', '1988-07-14 18:23:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, '', '1972-01-04', 0, 'fuga', 'Stromanstad', 'Albania', '1985-07-29 01:20:02', '2004-01-30 20:05:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, '', '1976-09-25', 0, 'sapiente', 'Lake Montyhaven', 'Norfolk Island', '2006-12-04 22:27:09', '1981-09-14 03:15:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, '', '2000-01-18', 0, 'odio', 'Pagacbury', 'Korea', '1988-02-18 06:52:26', '2011-04-17 02:53:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, '', '1972-06-27', 0, 'sed', 'Antonemouth', 'Niger', '2012-06-18 13:42:33', '1983-03-31 05:31:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, '', '2015-11-16', 0, 'non', 'Troymouth', 'Morocco', '1983-03-16 07:51:57', '1983-11-22 06:56:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, '', '1984-02-27', 0, 'unde', 'New Isabellmouth', 'United Kingdom', '1994-07-09 04:21:08', '2014-03-16 15:21:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, '', '2008-07-27', 0, 'repudiandae', 'South Coyport', 'Cape Verde', '2018-08-26 12:48:20', '1979-02-22 08:04:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, '', '1993-09-15', 0, 'architecto', 'Simonismouth', 'Guadeloupe', '1973-09-11 18:45:01', '1985-08-22 11:24:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, '', '1983-05-21', 0, 'sint', 'Luciechester', 'Guadeloupe', '1998-09-24 03:48:18', '1978-05-12 18:28:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, '', '1971-07-06', 0, 'dicta', 'Isaacbury', 'French Polynesia', '1983-01-07 20:37:42', '1987-05-25 16:14:19');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Alberto', 'Luettgen', 'godfrey.shields@example.net', '810-263-1998x6306', '2009-04-06 03:11:46', '1980-04-29 02:38:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Janessa', 'Mosciski', 'nschneider@example.net', '07659471533', '1994-09-03 04:24:08', '1971-08-21 01:24:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Finn', 'Kreiger', 'astehr@example.com', '1-511-552-3458', '1999-01-07 02:37:13', '1982-05-31 04:26:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Dante', 'Reichert', 'bradtke.leann@example.org', '593-674-0813', '2018-05-25 13:18:29', '1985-07-22 20:17:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Alanna', 'Kihn', 'sandy11@example.org', '+67(1)9419659361', '1989-02-12 00:39:51', '2018-11-04 18:36:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Virginia', 'McLaughlin', 'jefferey92@example.net', '1-411-920-9405', '1985-12-26 22:05:07', '2014-03-07 22:57:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Geovany', 'Lynch', 'flakin@example.net', '368.481.5283', '2011-08-06 20:16:43', '1975-06-26 02:39:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Tremayne', 'Jacobi', 'awolf@example.com', '304-307-3890x51899', '1972-01-18 09:45:27', '2001-04-08 01:00:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Rolando', 'Towne', 'triston.schultz@example.net', '220.599.8946', '1977-02-24 11:51:55', '2009-09-05 20:54:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Leta', 'Moore', 'williamson.tillman@example.com', '258-056-8682x936', '2007-06-25 21:53:30', '1979-01-30 00:40:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Crystel', 'Roberts', 'janet.spencer@example.org', '04989412236', '1992-08-30 17:41:07', '1985-04-24 09:07:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Rhoda', 'Schmidt', 'elvie85@example.com', '+20(6)8588663092', '1991-08-05 17:31:53', '2001-10-11 17:46:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Beverly', 'Bailey', 'anjali.jakubowski@example.net', '757.553.6627', '2017-06-02 14:31:42', '2020-07-24 09:28:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Angel', 'Jacobs', 'littel.arjun@example.org', '993.048.8087', '1984-09-11 12:04:19', '2006-10-02 05:20:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Alaina', 'DuBuque', 'garnet74@example.org', '+84(0)5630751202', '1973-03-23 03:59:55', '1997-12-14 02:27:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Lou', 'Terry', 'odessa00@example.com', '757.877.0454x5009', '1995-09-02 21:02:05', '2019-04-12 07:33:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Euna', 'Wintheiser', 'erik47@example.com', '1-157-267-6545x8246', '2001-12-04 10:56:37', '1990-05-06 08:22:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Sarina', 'Little', 'ckutch@example.net', '370-946-6581x5182', '1991-02-07 18:59:46', '1984-03-11 14:08:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Winfield', 'Mante', 'anne79@example.org', '1-212-062-0226x0379', '1972-08-12 11:35:45', '1994-04-22 08:57:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Pearline', 'Kuhic', 'dameon60@example.com', '1-497-945-5299x5399', '1999-10-30 04:16:04', '1994-06-02 09:59:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Jeffry', 'Parisian', 'eduardo91@example.net', '569.434.7027x8825', '1972-06-10 07:00:56', '1994-02-06 03:44:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Herminio', 'Nikolaus', 'qwisozk@example.com', '03107338853', '1984-10-04 16:07:33', '2000-12-01 18:43:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'General', 'Hilpert', 'hreichert@example.net', '1-271-452-1884x72904', '1980-06-10 00:24:35', '2010-06-24 01:26:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Elda', 'Jast', 'zosinski@example.com', '232-096-6507x488', '1996-11-20 12:32:31', '1975-01-31 00:58:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Dangelo', 'Prohaska', 'sebastian48@example.com', '00559506533', '2007-02-05 22:49:04', '2009-10-12 08:09:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Sienna', 'Walker', 'swift.vito@example.com', '+68(0)4762532459', '1980-08-11 06:31:32', '2014-01-23 12:21:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Sandy', 'Schaefer', 'vgraham@example.com', '289.587.2204x150', '2019-02-03 19:02:26', '1999-02-25 10:09:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Courtney', 'Ortiz', 'bins.santino@example.com', '04136605482', '1979-09-22 00:34:20', '2012-04-07 14:55:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Braden', 'Gutkowski', 'hilbert.wiegand@example.org', '1-516-048-8821', '2010-02-20 13:04:34', '2010-01-15 20:41:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Delphia', 'Bartoletti', 'freeman.friesen@example.com', '1-455-150-4308', '2002-04-07 23:45:31', '1973-07-22 21:56:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Ryan', 'Klein', 'lucinda.o\'kon@example.com', '(366)276-2214x6022', '2016-01-14 05:21:06', '2000-10-05 03:29:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Faye', 'Effertz', 'alanna61@example.com', '08232536235', '1975-07-03 12:28:41', '2014-09-07 14:26:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Marcellus', 'Kling', 'zo\'conner@example.org', '125.139.2293', '2007-03-30 19:32:05', '2005-08-31 12:31:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Jeromy', 'Romaguera', 'lolita08@example.net', '429.243.6634', '2019-12-28 11:21:57', '1977-08-09 08:57:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Tobin', 'Herzog', 'lorenzo.deckow@example.net', '(366)906-8004', '1982-04-06 07:59:59', '2010-12-24 23:13:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Harmony', 'Mitchell', 'lang.johnnie@example.org', '334-581-1756x3719', '2006-09-21 07:45:58', '1988-10-21 15:29:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Brady', 'Feeney', 'ztrantow@example.org', '753.598.7204', '2004-08-17 23:40:44', '1988-10-15 11:35:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Reba', 'Flatley', 'baron36@example.org', '656-169-0336x3387', '2009-02-22 05:54:27', '1998-07-21 15:23:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Rudolph', 'Maggio', 'laurine.schmidt@example.net', '1-016-300-2829', '1980-03-18 01:48:39', '2014-10-01 09:51:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Savanna', 'Walter', 'ubreitenberg@example.org', '(515)672-9240x6872', '1997-11-12 09:07:42', '1993-03-05 13:06:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Austen', 'Sipes', 'lorenza45@example.com', '586.875.8621', '2008-12-01 08:04:32', '1979-08-06 14:05:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Salvador', 'Davis', 'pberge@example.org', '092-999-8298x110', '1970-10-09 06:08:24', '2020-07-25 18:28:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Orlo', 'Bins', 'sdibbert@example.org', '(108)514-4811x1314', '2008-09-19 10:13:13', '2007-03-05 20:24:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Deanna', 'Olson', 'kuhic.amos@example.net', '934-692-0353x65518', '1981-11-27 22:28:06', '2007-06-26 02:15:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Garett', 'Herman', 'edward.parker@example.org', '+47(5)1820951545', '1995-10-07 10:50:06', '2001-09-16 01:49:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Ashlynn', 'Heller', 'hauck.chesley@example.org', '850.783.0942x702', '2017-07-15 15:00:02', '2016-04-08 11:20:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Addison', 'Prohaska', 'zgreenfelder@example.org', '(523)747-4662', '2002-03-14 08:42:11', '2007-08-21 13:56:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Clementine', 'McGlynn', 'rogahn.faye@example.org', '351-288-6112', '1972-01-16 20:03:45', '1990-11-07 07:27:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Pinkie', 'Oberbrunner', 'avery.corkery@example.net', '1-489-108-6106', '1970-03-02 04:09:59', '1972-01-16 05:42:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Alvis', 'Schaefer', 'camden.schuppe@example.net', '(199)979-0061x591', '1986-08-11 04:50:39', '2018-08-22 05:02:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Tristian', 'Bartoletti', 'marilyne.wisoky@example.org', '110-389-9285x16804', '2013-11-16 14:32:20', '2005-04-25 03:41:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Toby', 'Carter', 'qshanahan@example.com', '+67(7)3981770242', '2017-03-10 19:13:58', '2019-05-01 07:13:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Maye', 'Heathcote', 'kreiger.douglas@example.org', '(341)024-9947', '2000-07-06 15:43:31', '1995-06-09 02:56:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Silas', 'Howell', 'hoeger.myah@example.net', '1-978-711-5106', '2002-01-04 18:21:27', '1972-08-16 22:18:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Luella', 'Kunze', 'uboehm@example.net', '1-320-176-7603x7929', '2008-12-12 20:23:12', '2010-11-21 19:35:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Colten', 'Skiles', 'leonel41@example.org', '+20(5)2357078518', '1972-09-16 02:47:56', '2018-05-11 02:08:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Bernie', 'Kuhn', 'hammes.joany@example.com', '1-541-485-8233', '1992-02-18 18:33:00', '1993-11-11 22:19:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Caleb', 'Rogahn', 'camille.ward@example.net', '731-208-5885', '1976-10-07 05:33:22', '1971-08-04 08:40:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Linwood', 'Hills', 'kirlin.anissa@example.net', '(162)628-8906x3363', '1993-10-13 05:07:37', '2005-05-06 16:02:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Terrance', 'Weimann', 'hartmann.luna@example.net', '292-265-6975', '1985-07-31 20:09:55', '1987-10-21 17:44:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Lionel', 'Bartoletti', 'rcrona@example.org', '+35(8)3801270209', '2011-09-15 02:50:48', '2010-07-08 10:24:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Barbara', 'Ziemann', 'abogisich@example.org', '1-608-784-8563x0009', '2003-09-12 10:56:40', '1983-07-01 23:16:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Lelia', 'Mraz', 'kaitlyn.rippin@example.net', '1-100-162-0468', '2020-11-18 08:19:14', '1997-04-07 06:11:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Jamaal', 'Stracke', 'alexys08@example.com', '506.379.0337', '1999-11-02 02:13:14', '2016-09-25 20:08:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Elissa', 'Nikolaus', 'clarabelle.dietrich@example.net', '1-956-306-2148', '1995-10-09 14:08:25', '2001-10-29 15:33:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Friedrich', 'Ledner', 'maia62@example.net', '(651)075-5760x8265', '1999-12-08 06:55:17', '1980-04-19 20:03:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Demarcus', 'Weimann', 'silas.champlin@example.org', '1-322-741-7617', '1971-07-02 02:33:36', '1980-06-08 14:11:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Estella', 'Wisozk', 'gladyce13@example.net', '(143)711-3215x02230', '2002-12-16 13:51:37', '2007-02-11 15:12:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Cletus', 'Greenfelder', 'sbalistreri@example.com', '+41(9)8570965576', '2007-08-25 19:27:31', '1970-05-09 09:37:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Alexandre', 'Brakus', 'zblock@example.net', '1-124-789-6076x083', '2003-01-12 17:40:40', '2017-11-20 08:03:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Delia', 'Kunde', 'paxton03@example.org', '776.195.7302x710', '1996-01-14 18:19:41', '1988-10-23 03:49:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Arnold', 'Jenkins', 'lysanne.west@example.net', '499.146.4258', '2019-12-05 11:01:32', '1979-10-16 19:33:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Rosalee', 'Lockman', 'gottlieb.agustin@example.net', '(322)246-2820x8831', '2014-02-06 12:55:30', '1970-10-17 15:44:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Karson', 'Emard', 'sanford.lucious@example.com', '785.479.4815x052', '1981-02-08 05:42:14', '2010-03-18 11:02:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Trevion', 'Sporer', 'farrell.lucile@example.com', '(364)408-8864', '2011-05-15 23:34:42', '1982-12-22 05:12:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Nadia', 'Schuppe', 'spencer.rosina@example.org', '835-527-8528', '2019-10-09 10:48:55', '1993-04-29 13:19:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Anibal', 'Turner', 'bosco.lyla@example.net', '(166)147-4757', '1986-09-25 03:17:26', '1983-01-02 15:41:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Kaycee', 'Sipes', 'dboehm@example.net', '(723)645-7527x73641', '1997-08-13 14:07:35', '2008-08-22 23:13:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Major', 'Kiehn', 'deckow.oceane@example.org', '(791)995-0546x00910', '1974-02-28 08:53:17', '2003-02-20 00:26:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Theresa', 'Doyle', 'benjamin.huel@example.net', '312.432.2892x055', '1972-10-06 09:48:02', '1990-03-05 00:41:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Mafalda', 'White', 'rodriguez.savion@example.org', '695.763.1420x880', '2020-04-28 07:05:34', '1974-02-07 09:40:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Berniece', 'Ruecker', 'berenice93@example.com', '440-592-1812x458', '1984-06-16 08:00:43', '1988-08-29 16:10:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Charlie', 'Rosenbaum', 'giuseppe.lockman@example.net', '709-478-8583x54522', '1992-03-23 13:44:24', '1971-11-26 00:02:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Hoyt', 'Kuvalis', 'frami.nellie@example.org', '+59(2)0805820965', '2009-08-09 00:58:34', '1987-06-10 01:40:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Ericka', 'Auer', 'lavern53@example.org', '197.635.5910x070', '1975-12-06 10:07:46', '1972-02-10 14:44:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Madilyn', 'Prosacco', 'rau.kaya@example.org', '(842)391-5912', '2006-03-22 22:57:59', '1978-03-28 06:07:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Jaren', 'Predovic', 'constantin.torp@example.com', '+52(5)5344928288', '1979-12-30 10:39:13', '2011-02-05 18:43:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Tanya', 'Toy', 'doberbrunner@example.com', '(194)960-4069', '2012-08-22 03:51:25', '1975-12-17 05:16:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Shea', 'O\'Kon', 'ephraim.cassin@example.net', '(451)411-6352', '1986-08-04 09:58:01', '1978-12-26 15:39:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Lenore', 'Brakus', 'jkeeling@example.net', '(761)005-4504x828', '1999-05-16 15:35:59', '2011-10-04 18:22:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Luciano', 'Zemlak', 'jamar.friesen@example.net', '664-813-5324', '1990-11-01 09:37:26', '1970-01-19 07:27:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Florencio', 'Witting', 'johann.pfeffer@example.net', '1-011-061-3196', '1996-09-03 21:08:01', '1985-01-26 06:33:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Roberta', 'Kuhn', 'winona45@example.com', '(622)105-4902', '2018-12-18 20:06:05', '1981-02-09 21:38:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Janessa', 'Little', 'edgardo35@example.net', '900-082-0844x30883', '1975-07-11 09:57:48', '2001-11-15 20:30:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Fabiola', 'Stark', 'murphy.bette@example.org', '845-065-8766', '1999-07-03 14:43:03', '1995-11-30 18:26:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Tyshawn', 'Wunsch', 'zella89@example.com', '988.955.0553x104', '1978-05-08 17:16:43', '1999-07-16 07:23:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Nigel', 'O\'Hara', 'mcdermott.wilton@example.net', '047.592.4888x66153', '2007-06-08 06:16:55', '2008-01-01 02:40:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Wanda', 'Metz', 'cbuckridge@example.net', '(258)187-7926', '2017-08-24 07:14:45', '1987-12-09 13:20:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Jimmie', 'Rodriguez', 'bette.champlin@example.net', '+17(1)9003845736', '2014-10-17 15:44:25', '2015-05-08 00:26:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Cassandre', 'Pacocha', 'candida11@example.org', '1-740-830-4092', '2011-12-13 10:26:23', '2013-07-05 11:42:33');


