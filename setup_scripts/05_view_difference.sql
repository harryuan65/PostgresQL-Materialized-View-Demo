-- 看下當 insert 新資料時，兩種 view 拉出來的資訊

select * from user_video_report_mv where user_id=1;
select * from user_video_report_v where user_id=1;

insert into video_watching_histories(user_id, video_id, start_time, end_time) values(1, 3, '2021-04-13 21:43:53 +08:00', '2021-04-13 22:33:03 +08:00');

refresh materialized view user_video_report_mv;

select * from user_video_report_v where user_id=1;
select * from user_video_report_mv where user_id=1;

