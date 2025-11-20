select ANIMAL_ID,NAME,
case 
    when SEX_UPON_INTAKE like 'Intact%' then 'X'
    else 'O'
end 중성화
from ANIMAL_INS
order by ANIMAL_ID;