

select a.animal_id, a.name from animal_ins a
left join animal_outs b
on a.animal_id = b.animal_id
order by datediff(b.datetime, a.datetime) desc
limit 2;
# 보호 기간이 가장 길었던 동물 두 마리

