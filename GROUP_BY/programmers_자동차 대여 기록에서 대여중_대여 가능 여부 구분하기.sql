

select car_id,
max(case when '2022-10-16'
between date_format(start_date, '%Y-%m-%d') and date_format(end_date, '%Y-%m-%d')
# between A and B - A와 B값을 포함
then '대여중'
else '대여 가능'
end) 'AVAILABILITY'
from car_rental_company_rental_history
group by car_id
order by car_id desc;

