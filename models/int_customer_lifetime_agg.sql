with lifetime as (
    select 
    customer_id,
    sum(amount) as lifetime_amount
    from {{ ref('orders') }}
    group by customer_id
)


select *
from lifetime