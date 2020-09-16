{{
  config(
    materialized='view'
  )
}}

select 
    order_id,
    sum(amount_in_dollars) as amount_in_dollars
    
from {{ ref('stg_payments') }}

where status = 'success'

group by 1