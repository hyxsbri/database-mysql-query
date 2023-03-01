

select car_id,
round(avg(datediff(end_date, start_date)+1), 1) AVERAGE_DURATION
# 대여일 - 두 날짜 간 차이+1 & 소수 둘째자리에서 반올림
from car_rental_company_rental_history
group by 1
having AVERAGE_DURATION >= 7
# group by를 통해 구한 값의 조건은 having으로 처리
order by 2 desc, 1 desc;
# 대여기간 기준 내림차순, id 별 내림차순

