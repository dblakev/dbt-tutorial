with sum_payments as (
    select 
    order_id,
    sum(amount) as amount
    
    from {{ ref('stg_payments')}}
    group by order_id
)

select * from sum_payments