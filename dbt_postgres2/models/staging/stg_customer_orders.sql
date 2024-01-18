{{
config(
    materialized='table',
    schema='staging'
)
}}

with source as (
    select * from {{ source('source', 'dim_customer_orders') }}
)
select
*
from source