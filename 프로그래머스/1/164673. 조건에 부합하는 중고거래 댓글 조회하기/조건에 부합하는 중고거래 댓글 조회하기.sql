select TITLE, b.BOARD_ID, r.REPLY_ID, r.WRITER_ID, r.CONTENTS, to_char(r.CREATED_DATE, 'yyyy-mm-dd')
from USED_GOODS_BOARD b 
join USED_GOODS_REPLY r
    on(b.BOARD_ID = r.BOARD_ID)
where to_char(b.CREATED_DATE, 'yyyy-mm-dd') like '2022-10%'
order by r.CREATED_DATE, TITLE