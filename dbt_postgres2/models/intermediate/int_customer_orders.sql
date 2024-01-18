{{
config(
    materialized='table',
    schema='intermediate'
)
}}

with source as (
    select * from {{ source('staging', 'stg_customers') }}
)

select
    cust.customer_id as customer_id,
    cust.customer_fname,
    cust.customer_lname,
    cust.customer_sal,
    cust.customer_email,
    cust.customer_address_id,
    orders.order_id,
    orders.customer_id as cust_id,
    orders.address_id,
    orders.product_id,
    orders.order_date,
    orders.order_status,
    orders.ship_date
from source as cust
    left join {{ source('staging', 'stg_customer_orders') }} as orders on cust.customer_id = orders.customer_id