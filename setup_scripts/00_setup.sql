create table if not exists users(
  id            serial primary key,
  name          character varying
);

create table if not exists videos(
  id       serial primary key,
  name     character varying,
  created_at timestamp without time zone,
  updated_at timestamp without time zone
);

create table if not exists video_watching_histories(
  id       serial primary key,
  user_id  integer,
  video_id integer,
  start_time timestamp without time zone,
  end_time timestamp without time zone,
  created_at timestamp without time zone,
  updated_at timestamp without time zone,
  foreign key (user_id) references users(id),
  foreign key (video_id) references videos(id)
);

insert into users(name) values ('ian');
insert into users(name) values ('jack');
insert into users(name) values ('harry');
insert into users(name) values ('parker');
insert into users(name) values ('peter');
insert into users(name) values ('henry');
insert into users(name) values ('hoshen');
insert into users(name) values ('daniel');
insert into users(name) values ('derek');
insert into users(name) values ('gail');
insert into users(name) values ('debby');
insert into users(name) values ('courtney');

insert into videos(name) values('當你 update 沒 where');
insert into videos(name) values('巴拉逼巴拉蹦蹦蹦');
insert into videos(name) values('牠一直噴錯 - 第二章');
insert into videos(name) values('搶救 Production 大作戰');
insert into videos(name) values('神奇bug寶貝');
insert into videos(name) values('大雄的新框架');

insert into video_watching_histories(user_id, video_id, start_time, end_time) values(1, 1, '2021-04-17 14:00:11 +08:00', '2021-04-17 15:44:11 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(1, 3, '2021-04-17 18:34:08 +08:00', '2021-04-17 18:50:08 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(2, 4, '2021-04-17 21:50:02 +08:00', '2021-04-17 23:02:02 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(3, 3, '2021-04-17 13:40:01 +08:00', '2021-04-17 14:48:01 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(2, 4, '2021-04-13 01:43:41 +08:00', '2021-04-13 03:43:41 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(4, 2, '2021-04-13 11:39:31 +08:00', '2021-04-13 14:39:31 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(5, 1, '2021-04-13 09:43:18 +08:00', '2021-04-13 11:09:12 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(1, 1, '2021-04-14 01:43:57 +08:00', '2021-04-14 13:08:43 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(3, 1, '2021-04-13 15:23:35 +08:00', '2021-04-13 15:27:35 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(7, 2, '2021-04-13 21:43:28 +08:00', '2021-04-13 22:46:28 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(4, 2, '2021-04-13 22:50:23 +08:00', '2021-04-13 23:43:43 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(7, 2, '2021-04-13 21:43:53 +08:00', '2021-04-13 22:33:03 +08:00');

insert into video_watching_histories(user_id, video_id, start_time, end_time) values(1, 1, '2021-04-17 14:00:11 +08:00', '2021-04-17 15:44:11 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(4, 1, '2021-04-17 18:34:08 +08:00', '2021-04-17 18:50:08 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(2, 4, '2021-04-17 21:50:02 +08:00', '2021-04-17 23:02:02 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(3, 4, '2021-04-17 13:40:01 +08:00', '2021-04-17 14:48:01 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(1, 1, '2021-04-13 01:43:41 +08:00', '2021-04-13 03:43:41 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(5, 3, '2021-04-13 11:39:31 +08:00', '2021-04-13 14:39:31 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(5, 4, '2021-04-13 09:43:18 +08:00', '2021-04-13 11:09:12 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(6, 1, '2021-04-14 01:43:57 +08:00', '2021-04-14 13:08:43 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(6, 3, '2021-04-13 15:23:35 +08:00', '2021-04-13 15:27:35 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(2, 2, '2021-04-13 21:43:28 +08:00', '2021-04-13 22:46:28 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(1, 4, '2021-04-13 22:50:23 +08:00', '2021-04-13 23:43:43 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(3, 1, '2021-04-13 21:43:53 +08:00', '2021-04-13 22:33:03 +08:00');

insert into video_watching_histories(user_id, video_id, start_time, end_time) values(1, 1, '2021-04-17 14:00:11 +08:00', '2021-04-17 15:44:11 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(1, 4, '2021-04-17 18:34:08 +08:00', '2021-04-17 18:50:08 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(4, 2, '2021-04-17 21:50:02 +08:00', '2021-04-17 23:02:02 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(4, 3, '2021-04-17 13:40:01 +08:00', '2021-04-17 14:48:01 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(1, 1, '2021-04-13 01:43:41 +08:00', '2021-04-13 03:43:41 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(3, 5, '2021-04-13 11:39:31 +08:00', '2021-04-13 14:39:31 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(4, 5, '2021-04-13 09:43:18 +08:00', '2021-04-13 11:09:12 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(1, 6, '2021-04-14 01:43:57 +08:00', '2021-04-14 13:08:43 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(3, 6, '2021-04-13 15:23:35 +08:00', '2021-04-13 15:27:35 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(2, 2, '2021-04-13 21:43:28 +08:00', '2021-04-13 22:46:28 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(4, 1, '2021-04-13 22:50:23 +08:00', '2021-04-13 23:43:43 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time) values(1, 3, '2021-04-13 21:43:53 +08:00', '2021-04-13 22:33:03 +08:00');