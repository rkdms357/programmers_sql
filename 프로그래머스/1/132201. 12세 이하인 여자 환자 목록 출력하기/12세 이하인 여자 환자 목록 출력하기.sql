select PT_NAME, PT_NO, GEND_CD, AGE, nvl(TLNO, 'NONE')
from PATIENT
where age <= 12
and GEND_CD = 'W'
order by age desc, PT_NAME asc