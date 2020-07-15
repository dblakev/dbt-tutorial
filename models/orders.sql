with sum_payments as ( 
    select *
    from {{ ref('sum_payments')}} 
    
),

 stage_orders as (
    select *
    from {{ ref('stg_orders')}}
),

 orders as (
    select *
    from stage_orders
    left join sum_payments using (order_id)



)

select *
from orders