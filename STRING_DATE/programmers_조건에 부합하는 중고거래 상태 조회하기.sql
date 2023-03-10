

select board_id, writer_id, title, price,
case when status = 'SALE' then '판매중'
     when status = 'RESERVED' then '예약중'
     else '거래완료'
end 'status'
from used_goods_board
where created_date = '2022-10-05'
# 2022년 10월 5일에 등록된 중고거래 게시물
order by 1 desc;
# 게시글 ID를 기준으로 내림차순 정렬

