-- API 觀看紀錄
select vwh.user_id,
 v.id as video_id,
 v.name as video_name,
 sum(vwh.end_time - vwh.start_time) as time_used
from video_watching_histories vwh
inner join videos v on v.id = vwh.video_id
where user_id=1
group by vwh.user_id, v.id, v.name
order by (sum((vwh.end_time - vwh.start_time))) desc;