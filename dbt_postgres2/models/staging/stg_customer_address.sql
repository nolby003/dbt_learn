{{
config(
    materialized='table',
    schema='staging'
)
}}

with source as (
    select * from {{ source('source', 'dim_customer_address') }}
)
select
*
from source