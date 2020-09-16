{{
  config(
    materialized='view'
  )
}}

select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount / 100.0 as amount_in_dollars,
    created as created_on

from raw.stripe.payment
