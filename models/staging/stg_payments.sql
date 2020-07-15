select 
ID,
ORDERID as order_id,
AMOUNT/100 as AMOUNT 
from raw.stripe.payment
where status = 'success'
