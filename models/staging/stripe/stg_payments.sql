with payments as (

    select
        id as order_id,
        status,
        paymentmethod as payment_method,
        amount

    from {{source('stripe','payment')}}

)

select * from payments