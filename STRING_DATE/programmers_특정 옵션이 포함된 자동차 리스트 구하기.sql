

select car_id, car_type, daily_fee, options
from car_rental_company_car
where options like "%네비게이션%"
# 네비게이션 옵션이 포함된 자동차 리스트
order by 1 desc;
# 자동차 id 기준 내림차순 정렬
