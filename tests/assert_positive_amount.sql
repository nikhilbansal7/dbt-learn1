select order_id, sum(amount) from {{ ref('stg_payments')}}
group by 1
having (sum(amount)<0)