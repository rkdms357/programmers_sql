select substr(product_code, 1, 2) category, count(*)
from product
group by substr(product_code, 1, 2)
order by category