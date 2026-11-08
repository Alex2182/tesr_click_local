select 
id,count(*) cnt
from {{ source('ae_raw','test') }}
group by all
having count(*)>1