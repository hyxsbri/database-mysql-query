

select year(a.sales_date) year, month(a.sales_date) month,
b.gender, count(distinct a.user_id) users
from online_sale a
left join
user_info b
on a.user_id = b.user_id
where b.gender is not null
group by 1,2,3
order by 1,2,3;

