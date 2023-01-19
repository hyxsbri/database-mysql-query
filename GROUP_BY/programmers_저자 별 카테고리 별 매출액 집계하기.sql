

with tbl as (select a.book_id, a.price, b.author_id, b.author_name, a.category
from book a
left join author b
on a.author_id = b.author_id)
# 임시 테이블 생성

select d.author_id, d.author_name, d.category, sum(c.sales * d.price) TOTAL_SALES
from book_sales c
left join tbl d
on c.book_id = d.book_id
where c.sales_date like "2022-01%"
group by 1, 3
order by 1 asc, 3 desc

