with orders as (

    select * from {{ ref('stg_orders') }}

),

successful_payments as (

    select * from {{ ref('stg_successful_payments') }}
),

final as (

    select
        orders.order_id,
        orders.customer_id,
        successful_payments.amount_in_dollars


    from orders

    left join successful_payments using (order_id)

)

select * from final