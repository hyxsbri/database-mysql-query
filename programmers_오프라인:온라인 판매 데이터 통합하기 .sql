





with sales_data as (
select sales_date, product_id, user_id, sales_amount
from online_sale
union all
select sales_date, product_id, null as user_id, sales_amount
from offline_sale
) # 오프라인 세일 테이블과 온라인 세일 테이블 통합한 임시 테이블 생성

select date_format(sales_date, '%Y-%m-%d') sales_date,
product_id, user_id, sales_amount
from sales_data
where sales_date between
'2022-03-01 00:00:00' and '2022-03-31 23:59:59'
# 2022년 3월 판매 데이터 
order by sales_date asc, product_id asc, user_id asc












