{{
config(
    materialized='incremental',
    schema='intermediate'
)
}}

-- refrence staging customers model to ensure is built first before running this model
with source as (select * from {{ ref('stg_customers') }})

select
    cust.id,
    cust.sal,
    cust.fname,
    cust.lname,
    cust.gender,
    ship.address_id,
    ship.is_primary,
    ship.address_unitnum,
    ship.address_streetnum,
    ship.address_streetname,
    ship.address_streettype,
    ship.address_suburb,
    ship.address_city,
    ship.address_state,
    ship.address_pcode,
    ship.address_country
from source as cust
    left join {{ source('staging', 'stg_customer_shipping') }} as ship on cust.id = ship.customer_id

