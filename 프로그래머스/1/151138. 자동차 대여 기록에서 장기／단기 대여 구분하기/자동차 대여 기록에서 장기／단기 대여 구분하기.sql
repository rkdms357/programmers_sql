select HISTORY_ID, CAR_ID, to_char(START_DATE, 'yyyy-mm-dd'), to_char(END_DATE, 'yyyy-mm-dd'),
decode(sign(END_DATE-START_DATE+1-30),
      1, '장기 대여',
      0, '장기 대여',
      '단기 대여') RENT_TYPE
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where to_char(START_DATE, 'yyyy-mm') = '2022-09'
order by HISTORY_ID	desc;