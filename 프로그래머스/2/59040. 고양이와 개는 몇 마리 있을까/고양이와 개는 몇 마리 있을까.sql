select ANIMAL_TYPE, count(ANIMAL_TYPE)
from ANIMAL_INS
group by ANIMAL_TYPE
--order by decode(ANIMAL_TYPE, 'Cat', 1), ANIMAL_TYPE;
order by (case when ANIMAL_TYPE = 'Cat' then 1 else 2 end)
