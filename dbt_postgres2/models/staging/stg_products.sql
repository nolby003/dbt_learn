{{
config(
    materialized='table',
    schema='staging'
)
}}

with source as (
    select * from {{ source('source', 'dim_products') }}
)

select
*
from source