

select user_id, nickname,
concat(city,' ', street_address1, ' ', street_address2) "전체주소",
concat(left(tlno, 3),'-',mid(tlno, 4, 4),'-',right(tlno, 4)) "전화번호"
# 사용자 ID, 닉네임, 전체주소, 전화번호 조회
from used_goods_board 
left join
used_goods_user 
on writer_id = user_id
group by writer_id
having count(user_id) >= 3
# 중고 거래 게시물을 3건 이상 등록한 사용자
order by 1 desc;
# 회원 ID를 기준으로 내림차순 정렬

