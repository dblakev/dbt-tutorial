with customer as (
    select *
    from {{ ref('customers')}}
  
),

 lifetime as (
    select *
    from {{ ref('customer_lifetime_agg')}}
  
),

customer_join as (
select *
from customer
left join lifetime using (customer_id)
)

select *
from customer_join