

# 세단 or SUV + 11/1 - 11/30 대여 가능 + 30일 대여 금액 500000 - 2000000
# CAR_ID, CAR_TYPE , FEE(대여 금액)
# FEE desc , CAR_TYPE asc , CAR_ID desc

# 30일 대여 금액 500000 - 2000000 CAR_ID
select a.car_id, a.car_type,
round(daily_fee*30*(100-discount_rate)/100) 'FEE'
from car_rental_company_car a
right join car_rental_company_discount_plan b
on a.car_type = b.car_type
where duration_type = '30일 이상'
and daily_fee*30*(100-discount_rate)/100 between 500000 and 2000000
and car_id in
(
# car_type = 세단 or SUV
select car_id from car_rental_company_car
where car_type in ('세단', 'SUV')
and car_id not in
(
# 11/1 - 11/30 대여 불가능 car_id
select car_id from car_rental_company_rental_history
where date_format(start_date, '%y%m%d') between '221101' and '221130'
or date_format(end_date, '%y%m%d') between '221101' and '221130'
or date_format(start_date, '%y%m%d') < '221101' and date_format(end_date, '%y%m%d') > '221130' 
)
)
order by 3 desc, 2 asc, 1 desc;

