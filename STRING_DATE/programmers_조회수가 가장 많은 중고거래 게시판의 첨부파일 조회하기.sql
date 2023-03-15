

# 임시 테이블
with tbl as (
select board_id
from used_goods_board
order by views desc
limit 1
)
# 조회수가 가장 높은 중고거래 게시물 id

select
concat('/home/grep/src/', b.board_id, '/',file_id, file_name, file_ext) "file_path"
# 첨부파일 경로 조회
from used_goods_file a
inner join tbl b
on a.board_id = b.board_id
order by file_id desc;
# FILE ID 기준 내림차순 정렬

