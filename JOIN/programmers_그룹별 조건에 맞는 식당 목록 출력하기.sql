

with tbl as (
select *, rank() over(order by count(member_id) desc) ranking
from rest_review
group by member_id;)
# 임시 테이블 생성

select b.member_name, a.review_text,
date_format(a.review_date, "%Y-%m-%d") review_date
from rest_review a
left join
member_profile b
on a.member_id = b.member_id

where b.member_id in
(
select member_id from tbl
where ranking = 1
)
# 서브 쿼리

order by 3 asc, 2 asc;
# 리뷰 작성일 기준, 리뷰 텍스트 기준 오름차순

