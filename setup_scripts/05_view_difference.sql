-- 看下當 insert 新資料時，兩種 view 拉出來的資訊

select * from user_video_report_v where user_id=2;
-- 2 |     1658 | Apocalypse Now   | 01:49:22
select * from user_video_report_mv where user_id=2;
-- 2 |     1658 | Apocalypse Now   | 01:49:22

insert into video_watching_histories(user_id, video_id, start_time, end_time) values(2, 1658, '2021-04-13 21:43:53 +08:00', '2021-04-14 01:33:03 +08:00');
insert into video_watching_histories(user_id, video_id, start_time, end_time, created_at, updated_at) values(2, 1658, '2021-04-13 21:43:53 +08:00', '2021-04-14 01:33:03 +08:00', '2021-04-13 21:43:53 +08:00', '2021-04-13 21:43:53 +08:00');

select * from user_video_report_v where user_id=2;
-- 2 |     1658 | Apocalypse Now   | 05:38:32
select * from user_video_report_mv where user_id=2;
-- 2 |     1658 | Apocalypse Now   | 01:49:22  因為還沒 refresh，materialized view 的資料是舊的

refresh materialized view user_video_report_mv;

select * from user_video_report_v where user_id=2;
-- 2 |     1658 | Apocalypse Now   | 05:38:32
select * from user_video_report_mv where user_id=2;
-- 2 |     1658 | Apocalypse Now   | 05:38:32 Refresh了，才有更新

cronjob
cron */30 * * * * psql -f refresh.sql

refresh materialized view user_video_report_mv;
refresh materialized view user_video_report_mv;
refresh materialized view user_video_report_mv;
refresh materialized view user_video_report_mv;