

select distinct(a.car_id)
# 자동차 id 중복 제거
from car_rental_company_rental_history a
left join car_rental_company_car b
on a.car_id = b.car_id
where car_type = '세단'
and month(start_date) = '10'
# 세단인 자동차들 중 10월에 대여 시작 기록이 존재하는 리스트
order by 1 desc;
# 자동차 id 기준 내림차순

