select to_number(to_char(DATETIME, 'HH24')) HOUR, COUNT(*)
from ANIMAL_OUTS
where to_char(DATETIME, 'HH24:MI') between '09:00' and '19:59'
group by to_number(to_char(DATETIME, 'HH24'))
order by to_number(to_char(DATETIME, 'HH24'));