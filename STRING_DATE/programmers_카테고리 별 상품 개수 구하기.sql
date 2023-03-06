

# substring/ left/ right
select left(product_code, 2) CATEGORY,
# 왼쪽 앞 두자리 코드 추출
count(left(product_code, 2)) PRODUCTS
from product
group by 1
order by 1;
# 상품 카테고리 코드 기준 오름차순 정렬

