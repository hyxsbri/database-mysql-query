

# 임시 테이블 생성(tbl)
with tbl as (
select user_id, nickname, sum(price) total_sales
from used_goods_board a
left join used_goods_user b
on writer_id = user_id
where status = 'DONE'
group by 1
order by 3 asc)
# 총거래금액 기준 오름차순 정렬

select * from tbl
where total_sales >= 700000;
# 완료된 중고 거래의 총금액이 70만 원 이상

