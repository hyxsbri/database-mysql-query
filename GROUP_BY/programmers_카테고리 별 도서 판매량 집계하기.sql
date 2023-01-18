

with t as (
    select a.category, b.sales_date, b.sales
    from book a
    left join
    book_sales b
    on a.book_id = b.book_id
)
select category, sum(sales) total_sales
from t
where sales_date >= "2022-01-01 00:00:00"
and sales_date < "2022-02-01 00:00:00"
group by category
order by category;

