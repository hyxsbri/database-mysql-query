

select a.title, a.board_id, reply_id, b.writer_id, b.contents,
date_format(b.created_date, '%Y-%m-%d') created_date
from used_goods_board a
left join used_goods_reply b
on a.board_id = b.board_id
where date_format(a.created_date, '%Y-%m') = '2022-10'
# 2022년 10월에 작성
and
reply_id is not null
# null 값 제거
order by 6 asc, 1 asc;
# 댓글 작성일 기준 오름차순 정렬/ 댓글 작성일이 같다면 게시글 제목 기준 오름차순 정렬

